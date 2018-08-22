mklink %USERPROFILE%\_vimrc %USERPROFILE%\dotfiles\.vimrc
mklink %USERPROFILE%\_gvimrc %USERPROFILE%\dotfiles\.gvimrc
mklink /D %USERPROFILE%\vimfiles %USERPROFILE%\dotfiles\.vim
mkdir %USERPROFILE%\dotfiles\.vim\colors
mklink %USERPROFILE%\dotfiles\.vim\colors\PaperColor.vim %USERPROFILE%\dotfiles\papercolor-theme\colors\PaperColor.vim
mkdir %USERPROFILE%\dotfiles\.vim\syntax
mklink %USERPROFILE%\dotfiles\.vim\syntax\xc.vim %USERPROFILE%\dotfiles\xc.vim\plugin\xc.vim
pause
