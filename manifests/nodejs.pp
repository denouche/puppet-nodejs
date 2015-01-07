class nodejs::nodejs inherits nodejs::params {

    wget::fetch { 'tarFile':
        source => "http://nodejs.org/dist/v$nodejs_version/$nodejs_filename.tar.gz",
        destination => "/home/nodejs/programs/$nodejs_filename.tar.gz",
        notify => Exec['untar'],
    }

    exec { 'untar':
        cwd => '/home/nodejs/programs',
        command => "/bin/tar xzf /home/nodejs/programs/$nodejs_filename.tar.gz",
        user => 'nodejs',
        refreshonly => true,
    }
    
}
