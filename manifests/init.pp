class workstation {

    #Default Path
    $defpath   = "/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin"

    case $::operatingsystem {
        freebsd: {
            $pkg_dep = [
                'ImageMagick',
                'acroread9',
                'apache-ant',
                'bash',
                'bind-tools',
                'cdparanoia',
                'cdrtools',
                'chromium',
                'cscope',
                'ctags',
                'curl',
                'dejavu',
                'dmenu',
                'dvd+rw-tools',
                'eject',
                'feh',
                'ffmpeg',
                'firefox',
                'fusefs-ntfs',
                'ghc',
                'gimp',
                'git',
                'gnucash',
                'gputils',
                'hplip',
                'hs-cabal-install',
                'hs-xmobar',
                'hs-xmonad',
                'hs-xmonad-contrib',
                'i386-wine',
                'icedtea-web',
                'links',
                'linux-eagle5',
                'lwjgl',
                'mplayer',
                'musicpc',
                'musicpd',
                'mutt',
                'mysql55-client',
                'nvidia-driver',
                'openjdk',
                'openjdk6',
                'pidgin',
                'puppet',
                'rexima',
                'robotfindskitten',
                'ruby',
                'ruby20',
                'rxvt-unicode',
                'scala',
                'slim',
                'slim-themes',
                'syslinux',
                'terminus-font',
                'thunderbird',
                'tmux',
                'todo',
                'uhidd',
                'unzip',
                'vim',
                'virtualbox-ose',
                'weechat',
                'wget',
                'wine-gecko',
                'wine-mono',
                'xev',
                'xlockmore',
                'xorg',
                'xv',
                'zsh',
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
