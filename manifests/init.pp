class vim {

    $plugroot = "/usr/share/vim/vimfiles/"

    #Puppet path to this module
    $modpath   = "puppet:///modules/vim"

    $vimrc     = "/etc/vimrc"

    package { 'vim-enhanced':
        ensure => latest
    }

    file { 'vimrc':
        name    => $vimrc,
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/vimrc"
    }

    file { 'syn-info':
        name    => "$plugroot/syntax/info.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/syntax/info.vim"
    }

    file { 'syn-man':
        name    => "$plugroot/syntax/man.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/syntax/man.vim"
    }
}
