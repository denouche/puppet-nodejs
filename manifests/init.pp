class nodejs {

    include nodejs::user
    include nodejs::nodejs
    
    Class['nodejs::user'] ->
    Class['nodejs::nodejs']

}
