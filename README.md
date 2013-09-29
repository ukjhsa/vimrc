ukjhsa's vimrc
============

HOW TO INSTALL
--------------

1. Check out from github

        $ git clone https://github.com/ukjhsa/vimrc ~/.vim
        $ cd ~/.vim
        $ git submodule update --init

2. Install ~/.vimrc

        $ ./install-vimrc.sh

3. Install YouCompleteMe

        * see [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
        1. Install CMake
        2.
        $ cd ~/.vim/bundle/YouCompleteMe
        $ ./install.sh --clang-complete

If you have some problem when updating submodule, such as

        $ git submodule update
        fatal: reference is not a tree: 2d7cfbd09fc96c04c4c41148d44ed7778add6b43
        Unable to checkout '2d7cfbd09fc96c04c4c41148d44ed7778add6b43' in submodule path 'mysubmodule'

then you may need to roll-back your parent repository and re-update submodules
to solve it. There's a good tutorial to solve such problems:

* [Stackoverflow: Git submodule head](http://stackoverflow.com/questions/2155887/git-submodule-head)

UPGRADE PLUGIN BUNDLES
----------------------

All plugins (except vim-latex) were checked out as git submodules,
which can be upgraded with `git pull`. For example, to upgrade Command-T

     $ cd ~/.vim/bundle/command-t
     $ git pull

HOW TO USE
----------


PLUGINS
-------

* [vundle](https://github.com/gmarik/vundle)

* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
