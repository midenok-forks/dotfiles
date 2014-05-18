# Executed only by login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login exists..
# Most of what this does can propagate to subshells, e.g. exports.

# Source bashrc if running bash.
if [ -n "$BASH_VERSION" ]; then
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

#<ciro>

  ##export

    export EDITOR=vim
    export LANGUAGE="en_US:en"
    export LC_MESSAGES="en_US.UTF-8"
    export LC_CTYPE="en_US.UTF-8"
    export LC_COLLATE="en_US.UTF-8"

    # Linux from scratch home.
    export LFS=/media/lfs/

    ##PATH

      # Before.
      PATH="$PATH:$MY_PYTHON_BIN_DIR"
      PATH="$PATH:$MY_BASH_BIN_DIR"
      PATH="$PATH:$LATEX_BIN_DIR"
      # Linux from scratch home.
      export LFS=/media/lfs/
      if [ -d "$HOME/bin" ] ; then
          PATH="$HOME/bin:$PATH"
      fi

      # After.
      PATH="$ANDROID_ADT_DIR/tools/:$PATH"
      PATH="$ANDROID_ADT_DIR/platform-tools/:$PATH"
      PATH="$DEVBIN:$PATH"
      export PATH

    PYTHONPATH="$PYTHONPATH:$PYTHON_DEVPATH_DIR:/var/www/django/devpath"
    # Adding to path is the only way I found to dev most modules with git
    # because the module often is a subdir of the git root and you can't
    # clone modify commit subdirs in git.
    export PYTHONPATH

    # Set PATH so it includes user's private bin if it exists.

  # History

    # Whenever you stop a shell, it dumps all the commands you did into ~/.bash_history
    # these options customize how that is done.

    # <UP> <DOWN>: first goes back on commands you did
    # in current section, and then goes back on ~/.bash_history

    shopt -s histappend # append to the history file, don't overwrite it
    export HISTCONTROL=ignoreboth #ignores both whitespace only commands and dupes
    export HISTSIZE=10000
    export HISTFILESIZE=100000
    #export HISTFILE=~/.new_bash_history
    export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '
    # Expressions that match will not be put on ~/.bash_history
    # and will not reappear on current bash session after <UP>.
    export HISTIGNORE='ls:cd*:[bf]g:exit:history'
    #export PROMPT_COMMAND='history -a' #this command is executed once when shell is ready

  # Directory structure.

    MYID=my

    export ROOT_DIR="$HOME"

    export BAK_DIR="$ROOT_DIR/bak"
    export BIN_DIR="$ROOT_DIR/bin"

    export PROGRAM_DIR="$BAK_DIR/git"
      export ANDROID_DIR="$PROGRAM_DIR/android"
        export ANDROID_ADT_DIR="$ANDROID_DIR/adt"
        export MY_ANDROID_DIR="$ANDROID_DIR/$MYID/"
      export DEVBIN="$PROGRAM_DIR/devbin"
      export DOTFILES="$PROGRAM_DIR/dotfiles"
      export MY_BASH_DIR="$PROGRAM_DIR/bash/$MYID"
      export MY_BASH_BIN_DIR="$PROGRAM_DIR/bash/$MYID/bin"
      export ASSEMBLER_DIR="$PROGRAM_DIR/assembler/$MYID/"
      export C_DIR="$PROGRAM_DIR/c/$MYID/"
      export CPP_DIR="$PROGRAM_DIR/c/$MYID/"
      export LATEX_BIN_DIR="$PROGRAM_DIR/latex"
      export WEBDEV_DIR="$PROGRAM_DIR/web"
      export MY_LINUX_DIR="$PROGRAM_DIR/linux/$MYID"
      export PYTHON_DIR="$PROGRAM_DIR/python"
        export PYTHON_DEVPATH_DIR="$PYTHON_DIR/devpath"
        export MY_PYTHON_DIR="$PYTHON_DIR/cheat/"
        export MY_PYTHON_BIN_DIR="$PYTHON_DIR/$MYID/bin"
        export PYTHON_DIST_PKG_DIR="/usr/local/lib/python2.7/dist-packages"
      export RAILS_DIR="$PROGRAM_DIR/rails-cheat/cirosantilli"
    export TEST_DIR="~/test"
    export MEDIA_DIR="$ROOT_DIR/media"
      export MUSIC_DIR="$MEDIA_DIR/music"
      export GAME_DIR="$MEDIA_DIR/game"
        export CHINESE_MUSIC_DIR="$MUSIC_DIR/chinese traditional"
        export INDIAN_MUSIC_DIR="$MUSIC_DIR/indian classical"
        export JAZZ_MUSIC_DIR="$MUSIC_DIR/jazz"

  ##for Gitlab development as git user so I can run X programs as Git.

    xhost +

  # Texlive
  export PATH="/usr/local/texlive/2013/bin/i386-linux:$PATH"
  export MANPATH="/usr/local/texlive/2013/texmf-dist/doc/man:$MANPATH"
  export INFOPATH="/usr/local/texlive/2013/texmf-dist/doc/info:$INFOPATH"

#</ciro>