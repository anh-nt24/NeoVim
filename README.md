# NeoVim :rocket:

[![GitHub last commit](https://img.shields.io/github/last-commit/anh-nt24/NeoVim.svg)](https://github.com/anh-nt24/NeoVim/commits/master)

Welcome to my NeoVim configuration repository! :wave: 

This repository contains my personal setup for NeoVim. 
Feel free to fork and customize it according to your needs. :computer:

## Table of Contents :book:

1. [Introduction](#introduction)
2. [Requirements](#requirements)
3. [Installation](#installation)
4. [Cheatsheet](#cheatsheet)

## Introduction 📋

![image](https://github.com/anh-nt24/NeoVim/assets/106876168/7980e3cc-f900-4c80-adf1-1dca150ded8f)


Some key aspects of my NeoVim configuration are:

- **Vim Plugin Manager:** I use [vim-plug](https://github.com/junegunn/vim-plug) as my plugin manager. It provides a simple and efficient way to manage and install plugins for NeoVim. 🧩

- **Language Support:** My configuration provides support for multiple programming languages, including Python, Java, JavaScript, HTML, CSS, ReactJS. 🚀

- **Outstanding Features:** My NeoVim configuration includes several outstanding features to boost productivity and improve the coding experience, such as:

  - Code Snippets: Simplifies code writing by allowing the insertion of pre-defined code snippets with a few keystrokes.
  - Code Generation: Using OpenAI API to assist in code generation tasks. 
 With the help of artificial intelligence, my configuration can generate code constructs based on context and user prompts.
  - Code Intelligence: Enhances code understanding and navigation with intelligent suggestions, code analysis, and documentation lookup.
  - Syntax Highlighting: Highlights syntax elements in different colors to improve code readability.
  - Refactoring Support: Assists in making large-scale code changes by providing automated refactoring capabilities.

  These features, among others, aim to streamline development workflows and make coding more efficient and enjoyable. 💡
  
  You can check the list of plugins used in my configuration in the [vim-plugs.vim](vim-plugs.vim) file. ✅
  
This repository is designed to work on both Linux and Windows operating systems, providing a consistent experience across platforms. 🐧 🪟

## Requirements :heavy_check_mark:

To use this NeoVim configuration, ensure that you have the following prerequisites installed:

- [NeoVim](https://neovim.io/) (v0.5 or later) :zap:
- [Node.js](https://nodejs.org/) (v12 or later) for certain plugins :package:
- [Python](https://www.python.org/) (v3 or later) for language-specific features :snake:
- [Git](https://git-scm.com/) (optional but recommended) for easy plugin management :octocat:

## Installation :gear:

To set up the environment for NeoVim using my configuration, follow these steps:

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/anh-nt24/NeoVim.git
   ```
   
2. Navigate to the cloned repository:

```shell
cd NeoVim
   ``` 
   
3. Copy the configuration files to the NeoVim configuration directory:
  - On Unix-like systems:

``` shell
cp -r . ~/.config/nvim
```

  - On Windows (PowerShell):

``` shell
cp -r . $HOME/AppData/Local/nvim
```

4. Install the NeoVim plugins using vim-plug. Launch NeoVim and run the following command:

``` vim
:PlugInstall
```

This will install all the plugins specified in the vim-plugs.vim file. 

5. Restart NeoVim for the changes to take effect

## Cheatsheet ⌨️

Here are some common key mappings in NeoVim that you may find useful:

- **Saving and Quitting:**
  - Save: `:w` or `:write` 💾
  - Save and quit: `:wq` or `:x` or `:exit` 🚪
  - Quit without saving: `:q!` ⛔️

- **Navigating and Editing:**
  - Switch between buffers: `:bn` (next) and `:bp` (previous) or `Ctrl Right` (next) `Ctrl Left` (previous) ↪️↩️
  - Undo/Redo: `u` (undo) and `Ctrl + r` (redo) ⏪⏩
  - Copy, Cut, and Paste: `y` (copy/yank), `d` (cut/delete), `p` (paste) 📋✂️📋

- **Search and Replace:**
  - Search for a pattern: `/pattern` or `?pattern` 🔍
  - Find next occurrence: `n` (next) and `N` (previous) ➡️⬅️
  - Replace text: `:%s/old/new/g` (replace all occurrences) ♻️

- **Split Windows:**
  - Split horizontally: `:split` or `Ctrl + w + s` 📊
  - Split vertically: `:vsplit` or `Ctrl + w + v` 📈
  - Switch between windows: `Ctrl + w + hjkl` (directional keys) ⬅️⬇️⬆️➡️

- **Code Navigation:**
  - Go to definition: `gd` ⚓️
  - Find references: `gr` 🎯
  - Go to declaration: `gD` 📜

- **Code Completion:**
  - Trigger code completion: `Ctrl + space` ⌨️
  - Accept completion: `Enter` ⏎
 
**Terminal:**
  - Open new terminal: `Alt + t` 💻
  - Navigate previous terminal: `F8` 🔼
  - Navigate next terminal: `F9` 🔽
  - Toggle terminal: `F12` 🔄
  - Kill all terminal: `\tka` ☠️
  - Fill current terminal: `\tk` 📝

- **My other configuration:**
  - Open Neural prompt: `Ctrl + g` 🧠
  - Open file browser: `F5` 📁
  - Resize pane: `Alt + Right` (vertical + 1), `Alt + Left` (vertical - 1), `Alt + Down` (resize + 1), `Alt + Up` (resize - 1) 📏
  - Formatting code: `:Format` ✨
  - Formatting selected code: `\f` ✨
  - File searching: `F6` 🔍
  - Word searching (in project): `F7`

These are just a few examples of key mappings in NeoVim. Feel free to explore more shortcuts and customize them according to your preferences. Happy coding! 🚀

