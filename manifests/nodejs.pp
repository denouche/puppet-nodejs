class nodejs::nodejs inherits nodejs::params {

    wget::fetch { 'tarFile':
        source => "http://nodejs.org/dist/v$nodejs_version/$nodejsFilename.tar.gz",
        destination => "/home/nodejs/programs/$nodejsFilename.tar.gz",
        notify => Exec['untar'],
    }

    exec { 'untar':
        cwd => '/home/nodejs/programs',
        command => "/bin/tar xzf /home/nodejs/programs/$nodejsFilename.tar.gz",
        user => 'nodejs',
        refreshonly => true,
    }
    
}
