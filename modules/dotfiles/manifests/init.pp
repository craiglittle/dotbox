class dotfiles {

  $dir = "/Users/${boxen_user}/.dotfiles"

  repository { 'dotfiles':
    path     => $dotfiles::dir,
    source   => 'craiglittle/dotfiles',
    provider => git
  }

  repository { 'vundle':
    path     => "/Users/${boxen_user}/.vim/bundle/vundle",
    source   => 'gmarik/vundle',
    provider => git,
    require  => Dotfile['vim']
  }

  exec { 'install vundle packages':
    command => 'vim +BundleInstall +BundleClean +qall',
    require => Repository['vundle']
  }

  file { "/Users/${boxen_user}/bin":
    ensure  => link,
    target  => "${dotfiles::dir}/bin",
    require => Repository['dotfiles']
  }

  dotfile { 'bash_profile' : subdir => 'bash'  }
  dotfile { 'bashrc'       : subdir => 'bash'  }
  dotfile { 'gitconfig'    : subdir => 'git'   }
  dotfile { 'gitignore'    : subdir => 'git'   }
  dotfile { 'ackrc'        : subdir => 'other' }
  dotfile { 'env'          : subdir => 'other' }
  dotfile { 'tmux.conf'    : subdir => 'other' }
  dotfile { 'irbrc'        : subdir => 'ruby'  }
  dotfile { 'vim'          : subdir => 'vim'   }
  dotfile { 'vimrc'        : subdir => 'vim'   }
  dotfile { 'zshrc'        : subdir => 'zsh'   }


  # Boxen provides a gemrc by default, so it must be overriden.

  include boxen::gemrc

  File <| title == "${home}/.gemrc" |> {
    ensure  => link,
    source  => "${dotfiles::dir}/ruby/gemrc.symlink",
    require => Repository['dotfiles']
  }

}
