" .ideavimrc is a configuration file for IdeaVim plugin. It uses
"   the same commands as the original .vimrc configuration.
" You can find a list of commands here: https://jb.gg/h38q75
" Find more examples here: https://jb.gg/share-ideavimrc

" Leader keys
let mapleader = " "
let maplocalleader = " "

" Commentary plugin
Plug 'tpope/vim-commentary'

"" -- Suggested options --
" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.

" --- Enable IdeaVim plugins https://jb.gg/ideavim-plugins

" Highlight copied text
Plug 'machakann/vim-highlightedyank'


"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
"" Map \r to the Reformat Code action
"map \r <Action>(ReformatCode)

"" Map <leader>d to start debug
"map <leader>d <Action>(Debug)

"" Map \b to toggle the breakpoint on the current line
"map \b <Action>(ToggleLineBreakpoint)

" Center screen after movements
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

" Buffer navigation
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>
nnoremap <C-c> :bp\|bd #<CR>

" Split window
nnoremap <leader>vs :vsplit<CR>

" Paste without overwriting register
vnoremap p "_dP

" Exit insert mode
inoremap jk <ESC>

" Stay in indent mode
vnoremap < <gv
vnoremap > >gv

" Clear search highlight
nnoremap <Esc> :nohlsearch<CR>


" Completion options
set completeopt=menuone,noselect
set pumheight=10
set smartindent

" Numbers
set number
set relativenumber

" Don't show mode
set noshowmode

" Clipboard sync (in vimscript, just set directly)
set clipboard=unnamedplus

" Save undo history
set undofile

" Case-insensitive searching unless capital letters are used
set ignorecase
set smartcase

" Keep signcolumn on
set signcolumn=yes

" Faster updates
set updatetime=250

" Shorter mapped sequence timeout
set timeoutlen=300

" Split behavior
set splitright
set splitbelow

" Tabs & indentation
set noexpandtab
set laststatus=3

" Wrap movement keys to next/prev line
set whichwrap+=<,>,[,],h,l

" Treat dash as part of a word
set iskeyword+=-

" Remove auto-commenting on new lines
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o

" Break long lines visually (without inserting line breaks)
set linebreak

" Live substitution preview
set inccommand=split

" Highlight current line
set cursorline

" Keep lines above/below cursor
set scrolloff=10

" Disable line wrapping
set nowrap

" Comment selection or line (requires 'gcc' from commentary/Comment.nvim/etc.)
nnoremap <leader>c :norm gcc<CR>
vnoremap <leader>c :norm gcc<CR>
