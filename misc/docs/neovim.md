## Legend 
[all commands](https://github.com/neovim/neovim/blob/master/runtime/doc/index.txt)


## Commands:

| Action              | Result                                        |       Notes      |
|:--------------------|-----------------------------------------------|:----------------:|
| `v`                 | Enter **Visual** Mode (select)                |       Mode       |
| `:`                 | Enter **Command** Mode                        |       Mode       |
| `i` or `a`          | **Insert** or  **Append**                     | Normal -> Insert |
| `A`                 | **Append** at the end of a line               | Normal -> Insert |
| `r`                 | **Replace** *selection*                       | Normal -> Insert |
| `o` or `<S-o>`      | **Insert** a line Above or Below              | Normal -> Insert |
| `c <motion>`        | Change <motion>                               | Normal -> Insert |
| `d`, `y`, `p`       | ~~cut, copy, paste~~  **Delete, Yank, Put**   |      Action      |
| `x`                 | Cut                                           |      Action      |  |
| `f` / `F`           | **Find** ahead or behind                      |      Motion      |
| `h`, `j`, `k`, `l`  | Left, Up, Down, Right                         |      Motion      |
| `b`, `ge`, `w`, `e` | Previous, Previous, Next, Next                |      Motion      |
| `gg` & `G`          | Move to first or last line                    |      Motion      |
| `<line> G`          | Move to <line>                                |      Motion      |
| `%`                 | Jump to find a matching **)**,**]**, or **}** |      Motion      |

## Splits & Windows
| Input     | Action                         | Mode |
|:----------|:-------------------------------|:----:|
| `:sp`     | Split Horizontally             |      |
| `:vs`     | Split Vertically               |      |
| `:ws`     |
| `:wv`     |
| `<C-w> =` | Make all windows the same size |
|

### Custom: 

| Input     | Action              |      Mode      |
|:----------|:--------------------|:--------------:|
| `,ev`     | Edit .vimrc         |     Normal     |
| `,sv`     | Source .vimrc       |     Normal     |
| `<S-h>`   | Beginning of Line   |     Normal     |
| `<S-l>`   | End of Line         |     Normal     |
| `u`       | Undo                |     Normal     |
| `,u`      | Redo                |     Normal     |
| `<space>` | Insert a space      |     Normal     |
| `<bs>`    | Delete under Cursor |     Normal     |
| `,,`      |                     |       All      |
| `,w`      | Write Buffer        |       All      |
| `,q`      | Quit Vim            |     Normal     |
| `fj`      | Write & Quit        | Normal, Insert |
| `<C-u>`   | Undo                |     Insert     |
| `<C-b>`   | Beginning of Line   |     Insert     |
| `<C-e>`   | End of Line         |     Insert     |


### Plugins:

| Input            | Action                 |  Mode  |
|:-----------------|:-----------------------|:------:|
| `,tt`            | Toggle *Table Mode*    | Normal |
| `cs {from} {to}` | Change Surroundings    | Normal |
| `ds {s}`         | Delete Surroundings    | Select |
| `ys {where} {s}` | Surround with whatever | Normal |

```
o.......Open files, directories and bookmarks....................|NERDTree-o|
go......Open selected file, but leave cursor in the NERDTree.....|NERDTree-go|
t.......Open selected node/bookmark in a new tab.................|NERDTree-t|
T.......Same as 't' but keep the focus on the current tab........|NERDTree-T|
i.......Open selected file in a split window.....................|NERDTree-i|
gi......Same as i, but leave the cursor on the NERDTree..........|NERDTree-gi|
s.......Open selected file in a new vsplit.......................|NERDTree-s|
gs......Same as s, but leave the cursor on the NERDTree..........|NERDTree-gs|
O.......Recursively open the selected directory..................|NERDTree-O|
x.......Close the current nodes parent...........................|NERDTree-x|
X.......Recursively close all children of the current node.......|NERDTree-X|
e.......Edit the current dir.....................................|NERDTree-e|
```

- Modified:
  - `<c-X>`
  - `<c-O>` takes you back, 
  - `<c-I>` moves you forward. (Move **In** & **Out** of the jump list)

## Combos:

| Result                 | Keys  | Actions                     |
|:-----------------------|:------|:----------------------------|
| Select Current Word    | `viw` | Visual InnerWord            |
| Duplicate Current Line | `Vyp` | Visual(linewise), Yank, Put |
| Easy Align             | `<:`  | Justify Left by `:`         |

## Command Line Mode
- `ctrl-D` - Complete



## Commands
- `:m` - Move <what> <where>
- `:split <filename>` - Open/Make a new File
- `:nmap` - List Mappings
- `:s` - Search & Substitute
  - `:s/old/new` - Substitute `new` for the first `old` in a line 
  - `:s/old/new/g` - Substitute `new` for all `old`s on a line 
  - `:#,#s/old/new/g` - Substitute between within lines  
  - `:%s/old/new/g` - Substitute all occurrences in the file  
  - `:%s/old/new/gc` - Ask for confirmation each time add `c` 




## Mappings
[Notation](https://neovim.io/doc/user/intro.html#notation)

- `<Leader> (,)`
  - Value of "mapleader", which the user defines as the keys that plugin mappings start with.
  - Lets you map more things to your keys;  *`<leader>` + key*  
- `<C-$>` - ctrl + a character `ctrl+$`
- `<CR>` = `<Return>` = `<Enter>`

```
<S-...>		shift-key			              *shift* *<S-*
<C-...>		control-key			            *control* *ctrl* *<C-*
<M-...>		alt-key or meta-key		      *META* *meta* *alt* *<M-*
<A-...>		same as <M-...>		        	*<A-*
<D-...>		command-key or "super" key	*<D-*
```

```
{cmd} {attr} {lhs} {rhs}

where
{cmd}  is one of ':map', ':map!', ':nmap', ':vmap', ':imap',
       ':cmap', ':smap', ':xmap', ':omap', ':lmap', etc.
{attr} is optional and one or more of the following:
       <buffer>, <silent>, <expr>, <script>, <unique>, & <nowait>
       More than one attribute can be specified to a map.
       They can be in any order.
{lhs}  left hand side, is a sequence of one or more keys that you will use
       in your new shortcut.
{rhs}  right hand side, is the sequence of keys that the {lhs} shortcut keys
       will execute when entered.
```

```
      COMMANDS                   MODES 
:map   :noremap  :unmap    Normal, Visual, Select, Operator-pending
:nmap  :nnoremap :nunmap   Normal
:vmap  :vnoremap :vunmap   Visual and Select
:smap  :snoremap :sunmap   Select
:xmap  :xnoremap :xunmap   Visual
:omap  :onoremap :ounmap   Operator-pending
:map!  :noremap! :unmap!   Insert and Command-line
:imap  :inoremap :iunmap   Insert
:lmap  :lnoremap :lunmap   Insert, Command-line, Lang-Arg
:cmap  :cnoremap :cunmap   Command-line
:tmap  :tnoremap :tunmap   Terminal
```


```viml
" " https://github.com/scrooloose/vimfiles/blob/master/vimrc
" " return the syntax highlight group under the cursor ''
" " set statusline+=%0*\ \ %{StatuslineCurrentHighlight()}%*"current highlight
" function! StatuslineCurrentHighlight()
"     let name = synIDattr(synID(line('.'),col('.'),1),'name')
"     if name == ''
"         return ''
"     else
"         return '[' . name . ']'
"     endif
" endfunction
```

## tpope/eunuch
| Command      | Action                                                               |
| :----------: | :----                                                                |
| :Delete      | Delete a buffer and the file on disk simultaneously.                 |
| :Unlink      | Like :Delete, but keeps the now empty buffer.                        |
| :Move        | Rename a buffer and the file on disk simultaneously.                 |
| :Rename      | Like :Move, but relative to the current file's containing directory. |
| :Chmod       | Change the permissions of the current file.                          |
| :Mkdir       | Create a directory, defaulting to the parent of the current file.    |
| :Find        | Run find and load the results into the quickfix list.                |
| :Locate      | Run locate and load the results into the quickfix list.              |
| :Wall        | Write every open window. Handy for kicking off tools like guard.     |
| :SudoWrite   | Write a privileged file with sudo.                                   |
| :SudoEdit    | Edit a privileged file with sudo.                                    |

- File type detection for sudo -e is based on original file name.
- New files created with a shebang line are automatically made executable.
- New init scripts are automatically prepopulated with /etc/init.d/skeleton.
