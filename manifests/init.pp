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

    #Syntax Plugins
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

    file { 'syn-mangl':
        name    => "$plugroot/syntax/mangl.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/syntax/mangl.vim"
    }

    file { 'syn-mankey':
        name    => "$plugroot/syntax/mankey.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/syntax/mankey.vim"
    }

    file { 'syn-manphp':
        name    => "$plugroot/syntax/manphp.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/syntax/manphp.vim"
    }

    file { 'syn-puppet':
        name    => "$plugroot/syntax/puppet.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/syntax/puppet.vim"
    }

    file { 'syn-scala':
        name    => "$plugroot/syntax/scala.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/syntax/scala.vim"
    }

    #Plugins
    file { 'plug-AlignMapsPlugin':
        name    => "$plugroot/plugin/AlignMapsPlugin.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/plugin/AlignMapsPlugin.vim"
    }

    file { 'plug-AlignPlugin':
        name    => "$plugroot/plugin/AlignPlugin.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/plugin/AlignPlugin.vim"
    }

    file { 'plug-cecutil':
        name    => "$plugroot/plugin/cecutil.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/plugin/cecutil.vim"
    }

    file { 'plug-jad':
        name    => "$plugroot/plugin/jad.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/plugin/jad.vim"
    }

    file { 'plug-manpageviewPlugin':
        name    => "$plugroot/plugin/manpageviewPlugin.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/plugin/manpageviewPlugin.vim"
    }


    # Indent Settings

    file { 'ind-puppet':
        name    => "$plugroot/indent/puppet.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/indent/puppet.vim"
    }

    file { 'ind-scala':
        name    => "$plugroot/indent/scala.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/indent/scala.vim"
    }

    # file type detection

    file { 'ft-puppet':
        name    => "$plugroot/ftdetect/puppet.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/ftdetect/puppet.vim"
    }

    file { 'ft-scala':
        name    => "$plugroot/ftdetect/scala.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/ftdetect/scala.vim"
    }

    # Documentation

    file { 'doc-Align':
        name    => "$plugroot/doc/Align.txt",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/doc/Align.txt"
    }

    file { 'doc-manpageview':
        name    => "$plugroot/doc/manpageview.txt",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/doc/manpageview.txt"
    }

    file { 'doc-tags':
        name    => "$plugroot/doc/tags",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/doc/tags"
    }

    # Autoload

    file { 'auto-Align':
        name    => "$plugroot/autoload/Align.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/autoload/Align.vim"
    }

    file { 'auto-AlignMaps':
        name    => "$plugroot/autoload/AlignMaps.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/autoload/AlignMaps.vim"
    }

    file { 'auto-manpageview':
        name    => "$plugroot/autoload/manpageview.vim",
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        ensure  => file,
        source  => "$modpath/autoload/manpageview.vim"
    }
}
