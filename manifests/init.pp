class workstation (

    #Default Path
    $defpath   = "/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin"

    case $::operatingsystem {
        freebsd: {
            $pkg_dep = [
                'unrar'
            ]
            $pkg_provider = pkgng
        }
    }

    # Install dependancies
    package { $pkg_dep:
        ensure   => installed,
        provider => $pkg_provider
    }
}
