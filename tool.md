# Tools

## [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

```bash
#######################################################
## Install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#######################################################
vi ~/.zshrc

## Set zsh theme
# ZSH_THEME="random"
ZSH_THEME="kafeitu"
alias cls="clear"
alias ll="ls -l"
alias la="ls -a"
# https://github.com/sindresorhus/trash
# npm install --global trash-cli
alias del="rm -rf"

## Open vscode
alias v="open -a Visual_Studio_Code -g"

#######################################################
## Change your default shell
chsh -s /bin/zsh
```

## [Iterm2](https://www.iterm2.com/)

> iTerm2 is a replacement for Terminal and the successor to iTerm. It works on Macs with macOS 10.10 or newer. iTerm2 brings the terminal into the modern age with features you never knew you always wanted.

* [Theme](http://iterm2colorschemes.com/)
* [lencx](./lencx.itermcolors)

### [VS Code](https://code.visualstudio.com/)

#### Extensions

* vscode-icons
* HTML CSS Support
* HTML Snippets
* JavaScript(ES6) code snippets
* Auto Close Tag
* Code Runner
* Path Intellisense
* Debugger for Chrome
* TODO Parser
* Git History (git log)
* Bracket Pair Colorizer

---

* Auto Import
* Beautify
* Hazy Theme
* Angular v5 Snippets
* vue
* Sass
* Pug (Jade) snippets
* TSLint
* Project Manager

#### VS Code Keyboard shortcuts

* [macOS](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)

* [Windows](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf)
