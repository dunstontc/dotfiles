# Vim

### Mappings


`<leader> (,)` - Lets you map more things to your keys;  *`<leader>` + key*  

```
(http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1))
{cmd} {attr} {lhs} {rhs}

where
{cmd}  is one of ':map', ':map!', ':nmap', ':vmap', ':imap',
       ':cmap', ':smap', ':xmap', ':omap', ':lmap', etc.
{attr} is optional and one or more of the following:
       (Vim)    <buffer>, <silent>, <expr>, <script>, <unique>, & <special>
       (Neovim) <buffer>, <silent>, <expr>, <script>, <unique>, & <nowait>
       More than one attribute can be specified to a map.
{lhs}  left hand side, is a sequence of one or more keys that you will use
       in your new shortcut.
{rhs}  right hand side, is the sequence of keys that the {lhs} shortcut keys
       will execute when entered.
```

#### Mode-specific
| Commands               | Mode                    |    
| --------               | ----                    |      
| nmap, nnoremap, nunmap | Normal mode             |  
| imap, inoremap, iunmap | Insert and Replace mode |  
| vmap, vnoremap, vunmap | Visual and Select mode  |    
| xmap, xnoremap, xunmap | Visual mode             |    
| smap, snoremap, sunmap | Select mode             |    
| cmap, cnoremap, cunmap | Command-line mode       |    
| omap, onoremap, ounmap | Operator pending mode   |    


#### Mode-Specific
```
Commands                        Mode
--------                        ----
nmap, nnoremap, nunmap          Normal mode
imap, inoremap, iunmap          Insert and Replace mode
vmap, vnoremap, vunmap          Visual and Select mode
xmap, xnoremap, xunmap          Visual mode
smap, snoremap, sunmap          Select mode
cmap, cnoremap, cunmap          Command-line mode
omap, onoremap, ounmap          Operator pending mode
```

#### Command Line Mode
```
:    Ex command prompt
/    Forward search prompt
?    Backward search prompt
>    Debug prompt
@    input() prompt
-    :insert and :append prompts.
```

#### Mouse Mappings

```
<LeftMouse>     - Left mouse button press
<RightMouse>    - Right mouse button press
<MiddleMouse>   - Middle mouse button press
<LeftRelease>   - Left mouse button release
<RightRelease>  - Right mouse button release
<MiddleRelease> - Middle mouse button release
<LeftDrag>      - Mouse drag while Left mouse button is pressed
<RightDrag>     - Mouse drag while Right mouse button is pressed
<MiddleDrag>    - Mouse drag while Middle mouse button is pressed
<2-LeftMouse>   - Left mouse button double-click
<2-RightMouse>  - Right mouse button double-click
<3-LeftMouse>   - Left mouse button triple-click
<3-RightMouse>  - Right mouse button triple-click
<4-LeftMouse>   - Left mouse button quadruple-click
<4-RightMouse>  - Right mouse button quadruple-click
<X1Mouse>       - X1 button press
<X2Mouse>       - X2 button press
<X1Release>     - X1 button release
<X2Release>     - X2 button release
<X1Drag>        - Mouse drag while X1 button is pressed
<X2Drag>        - Mouse drag while X2 button is pressed
```
