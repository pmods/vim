class vim {

    case $::operatingsystem {
        FreeBSD: {
            $plugroot = "/usr/local/share/vim/vimfiles/"
            $vimrc    = "/usr/local/share/vim/vimrc"
            $vimpkg   = "vim"
            $grp      = 'wheel'
        }
        default: {
            $plugroot = "/usr/share/vim/vimfiles/"
            $vimrc    = "/etc/vimrc"
            $vimpkg   = "vim-enhanced"
            $grp      = 'root'
        }
    }

    #Puppet path to this module
    $modpath   = "puppet:///modules/vim"

    $plugdirs = [
        "$plugroot/syntax",
        "$plugroot/plugin",
        "$plugroot/indent",
        "$plugroot/ftdetect",
        "$plugroot/doc",
        "$plugroot/autoload",
    ]

    package { $vimpkg:
        ensure => latest
    }

    file { $plugdirs:
        ensure  => directory,
        owner   => 'root',
        group   => $grp,
        require => Package[$vimpkg]
    }

    file { 'vimrc':
        name    => $vimrc,
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/vimrc"
    }

    #Syntax Plugins
    file { 'syn-info':
        name    => "$plugroot/syntax/info.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/syntax/info.vim",
        require => File[$plugdirs]
    }

    file { 'syn-man':
        name    => "$plugroot/syntax/man.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/syntax/man.vim",
        require => File[$plugdirs]
    }

    file { 'syn-mangl':
        name    => "$plugroot/syntax/mangl.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/syntax/mangl.vim",
        require => File[$plugdirs]
    }

    file { 'syn-mankey':
        name    => "$plugroot/syntax/mankey.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/syntax/mankey.vim",
        require => File[$plugdirs]
    }

    file { 'syn-manphp':
        name    => "$plugroot/syntax/manphp.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/syntax/manphp.vim",
        require => File[$plugdirs]

    }

    file { 'syn-puppet':
        name    => "$plugroot/syntax/puppet.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/syntax/puppet.vim",
        require => File[$plugdirs]

    }

    file { 'syn-scala':
        name    => "$plugroot/syntax/scala.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/syntax/scala.vim",
        require => File[$plugdirs]

    }

    #Plugins
    file { 'plug-AlignMapsPlugin':
        name    => "$plugroot/plugin/AlignMapsPlugin.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/plugin/AlignMapsPlugin.vim",
        require => File[$plugdirs]

    }

    file { 'plug-AlignPlugin':
        name    => "$plugroot/plugin/AlignPlugin.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/plugin/AlignPlugin.vim",
        require => File[$plugdirs]

    }

    file { 'plug-cecutil':
        name    => "$plugroot/plugin/cecutil.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/plugin/cecutil.vim",
        require => File[$plugdirs]

    }

    file { 'plug-jad':
        name    => "$plugroot/plugin/jad.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/plugin/jad.vim",
        require => File[$plugdirs]

    }

    file { 'plug-manpageviewPlugin':
        name    => "$plugroot/plugin/manpageviewPlugin.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/plugin/manpageviewPlugin.vim",
        require => File[$plugdirs]

    }


    # Indent Settings

    file { 'ind-puppet':
        name    => "$plugroot/indent/puppet.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/indent/puppet.vim",
        require => File[$plugdirs]

    }

    file { 'ind-scala':
        name    => "$plugroot/indent/scala.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/indent/scala.vim",
        require => File[$plugdirs]

    }

    # file type detection

    file { 'ft-puppet':
        name    => "$plugroot/ftdetect/puppet.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/ftdetect/puppet.vim",
        require => File[$plugdirs]

    }

    file { 'ft-scala':
        name    => "$plugroot/ftdetect/scala.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/ftdetect/scala.vim",
        require => File[$plugdirs]

    }

    # Documentation

    file { 'doc-Align':
        name    => "$plugroot/doc/Align.txt",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/doc/Align.txt",
        require => File[$plugdirs]

    }

    file { 'doc-manpageview':
        name    => "$plugroot/doc/manpageview.txt",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/doc/manpageview.txt",
        require => File[$plugdirs]

    }

    file { 'doc-tags':
        name    => "$plugroot/doc/tags",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/doc/tags",
        require => File[$plugdirs]
    }

    # Autoload

    file { 'auto-Align':
        name    => "$plugroot/autoload/Align.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/autoload/Align.vim",
        require => File[$plugdirs]
    }

    file { 'auto-AlignMaps':
        name    => "$plugroot/autoload/AlignMaps.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/autoload/AlignMaps.vim",
        require => File[$plugdirs]
    }

    file { 'auto-manpageview':
        name    => "$plugroot/autoload/manpageview.vim",
        mode    => 0644,
        owner   => 'root',
        group   => $grp,
        ensure  => file,
        source  => "$modpath/autoload/manpageview.vim",
        require => File[$plugdirs]
    }
}
