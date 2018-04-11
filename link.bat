mklink %USERPROFILE%\_vimrc %USERPROFILE%\dotfiles\.vimrc
mklink %USERPROFILE%\_gvimrc %USERPROFILE%\dotfiles\.gvimrc
mklink /D %USERPROFILE%\vimfiles %USERPROFILE%\dotfiles\.vim
mkdir %USERPROFILE%\dotfiles\.vim\colors
mklink %USERPROFILE%\dotfiles\.vim\colors\PaperColor.vim %USERPROFILE%\dotfiles\papercolor-theme\colors\PaperColor.vim
pause
