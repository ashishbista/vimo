# Vimo - Vim Distribution

Vimo is a carefully curated Vim distribution that brings together a collection of essential plugins and configurations to enhance your Vim experience. From productivity tools like NERDTree and FZF to powerful Git integrations with Fugitive, Vimo simplifies the setup process, allowing users to dive into a feature-rich Vim environment with ease.

## Table of Contents

- [Dependencies](#dependencies)
- [Installation](#installation)
- [Key Mappings](#key-mappings)
- [Basic Settings](#basic-settings)
- [Theme](#theme)
- [Terminal Colors](#terminal-colors)
- [Font](#font)
- [Clipboard and Mouse](#clipboard-and-mouse)
- [Whitespace](#whitespace)
- [Autoread and Autorun](#autoread-and-autorun)
- [Plugins](#plugins)
  - [NERDTree](#nerdtree)
  - [FZF](#fzf)
  - [Fugitive](#fugitive)
  - [nerdcommenter](#nerdcommenter)
  - [Supertab](#supertab)
- [ZoomToggle Function](#zoomtoggle-function)

## Dependencies

- **npm**
  - Required for Github Copilot and language servers functionalities.
- **fzf**
  - Required by FZF plugin.
- **ag**
  - Required by FZF plugin.

In MacOS, the dependencies can be installed using homebrew:

```bash
brew install node
brew install fzf
brew install ag
```

## Installation

Clone run repo and run `install.sh`:

```
git clone https://github.com/ashishbista/vimo.git
cd vimo && bash install.sh
```

## Key Mappings

- **Map the leader key:** `,`
  - Leader is mapped to `,`.

- **Toggle Paste Mode:** `<F4>`
  - Switch between paste mode and normal mode. Useful for pasting text without auto-indentation.

- **Speed Up Scrolling:**
  - `<ScrollWheelUp>`: Scroll up faster.
  - `<S-ScrollWheelUp>`: Scroll up even faster.
  - `<ScrollWheelDown>`: Scroll down faster.
  - `<S-ScrollWheelDown>`: Scroll down even faster.

- **Format the Entire File:** `<leader>fef`
  - Format the entire file using `gg=G`.

- **Upper/Lower Word:**
  - `<leader>u`: Convert word to uppercase.
  - `<leader>l`: Convert word to lowercase.

- **Upper/Lower First Char of Word:**
  - `<leader>U`: Convert first character of word to uppercase.
  - `<leader>L`: Convert first character of word to lowercase.

- **Change Directory to the File's Directory:** `<leader>cd`
  - Change the working directory to the directory containing the current file.

- **Create Directory for the File:** `<leader>md`
  - Create the directory containing the current file.

- **Jump to End of Line:** `<C-l>`
  - Jump to the end of the line.

- **Helpers to Edit Mode:**
  - `<leader>ew`: Edit file in the same directory.
  - `<leader>es`: Split edit file in the same directory.
  - `<leader>ev`: Vertical split edit file in the same directory.
  - `<leader>et`: Edit file in a new tab.

- **Underline the Current Line with '=':** `<leader>ul`
  - Underline the current line using '='.

- **Set Text Wrapping Toggles:** `<leader>tw`
  - Toggle text wrapping.

- **Find Merge Conflict Markers:** `<leader>fc`
  - Jump to merge conflict markers.

- **Map Arrow Keys Based on Display Lines:** `<Up>`, `<Down>`
  - Map arrow keys based on display lines.

- **Toggle Highlight Search:** `<leader>hs`
  - Toggle search highlighting.

- **Adjust Viewports:**
  - `<leader>x`: Equalize viewports.
  - `<leader>m`: Maximize current viewport.

- **Save with Ctrl+S:**
  - `<C-s>` (Insert Mode): Save current file.
  - `<C-s>` (Normal Mode): Save current file.

### Terminal-Specific Mappings (MacVim)

- **Indent/Outdent Mappings:**
  - `<D-]>`: Indent selected text.
  - `<D-[>`: Outdent selected text.

- **Switch Tabs with Command-#:** `<D-0>`, `<D-1>`, ..., `<D-9>`
  - Switch to tabs 0 through 9 using Command key.

- **Zoom/Restore Window:** `<leader>z`
  - Toggle between zooming and restoring the window.

### Plugin Mappings

#### NERDTree

- **Toggle NERDTree:** `<leader>n`
  - Toggle the NERDTree file explorer.

- **Find File in NERDTree:** `<leader>f`
  - Find the current file in NERDTree.

#### FZF

- **File Search:** `<C-p>`, `<D-p>`
  - Open FZF for file search.

- **Buffer Search:** `<C-b>`, `<D-b>`
  - Open FZF for buffer search.

- **Text Search (Ag):** `<C-f>`, `<D-f>`
  - Open FZF for text search using Ag.

#### Fugitive

- **Git Blame:** `<leader>gb`
  - Open Git Blame.

- **Git Status:** `<leader>gs`
  - Open Git Status.

- **Git Diff:** `<leader>gd`
  - Open Git Diff.

- **Git Log:** `<leader>gl`
  - Open Git Log.

- **Git Commit:** `<leader>gc`
  - Open Git Commit.

- **Git Push:** `<leader>gp`
  - Execute Git Push.

#### nerdcommenter

- **Toggle Comment:** `<D-/>`
  - Toggle comments for selected lines or current line in insert mode.

#### Supertab

- **Trigger Supertab:** `<Tab>`, `<S-Tab>`
  - Trigger Supertab for autocompletion.

### Miscellaneous Mappings

- **Toggle Spell Checking:** `:set spell`
  - Toggle spell checking for the current buffer.

Various key mappings are defined for different functionalities, including toggling paste mode, scrolling, formatting the entire file, and more.

## Basic Settings

```vim
set nocompatible            " Must come first because it changes other options.
syntax enable               " Turn vim syntax highlighting on
filetype plugin indent on   " Turn on detection, plugin, and indent at once
```

The `nocompatible` setting ensures that Vim uses its own enhanced features rather than emulating Vi. Syntax highlighting and filetype detection are also enabled.

## Theme

```vim
set t_Co=256            " Number of colors
set term=xterm-256color

colorscheme gruvbox
color gruvbox
```

The configuration sets the Gruvbox color scheme with additional customization options.

## Font

```vim
set guifont=Fira\ Mono:h13
```

This sets the font for GUI Vim to "Fira Mono" with a height of 13.

## Clipboard and Mouse

```vim
set clipboard=unnamed   " Use system clipboard
set mouse=a             " Enable mouse
set ttymouse=xterm2     " Much faster mouse reporting
set termwinscroll=40000 " Number of scrollback lines to keep
```

Enables system clipboard usage, mouse support, and sets up terminal scrolling.

## Whitespace

```vim
set tabstop=2         " Global tab width.
set shiftwidth=2      " Global shift width.
set expandtab         " Use spaces instead of tabs
```

Sets tab and shift width preferences.

## Autoread and Autorun

```vim
set autoread                        " Reread files automatically if changes outside
autocmd BufWritePre * :%s/\s\+$//e  " Autoremove trailing whitespaces
```

Automatically reloads files when changes occur outside Vim. Removes trailing whitespaces before saving.

## Plugins

### NERDTree

```vim
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinSize=20
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
```

Configures and sets key mappings for the NERDTree plugin.

### FZF

```vim
map <C-p> :Files<cr>
map <D-p> :Files<cr>
imap <D-p> <ESC>:Files<CR>

map <C-b> :Buffers<cr>
map <D-b> :Buffers<cr>
imap <D-b> <ESC>:Buffers<CR>

map <C-f> :Ag<cr>
map <D-f> :Ag<cr>
imap <D-f> <ESC>:Ag<CR>
```

Configures FZF plugin settings and key mappings.

### Fugitive

```vim
map <leader>gb :Gblame<CR>
map <leader>gs :Gstatus<CR>
map <leader>gd :Gdiff<CR>
map <leader>gl :Glog<CR>
map <leader>gc :Gcommit<CR>
map <leader>gp :Git push<CR>
```

Configures Fugitive plugin settings and key mappings.

### nerdcommenter

```vim
map <D-/> NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i
```

Configures nerdcommenter settings and key mappings.

### Supertab

```vim
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<tab>'
```

Configures Supertab plugin settings.

## ZoomToggle Function

```vim
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction

command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>z :ZoomToggle<CR>
```

Defines a function `ZoomToggle` to toggle between zoomed and normal window states. Additionally, a key mapping (`<leader>z`) is set to trigger this function.

Feel free to customize this configuration to suit your preferences. Happy coding!

# License
MIT
