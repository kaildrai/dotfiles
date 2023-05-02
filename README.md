# Terminal Setup Config Files

Credit to [craftzdog (Takuya)](https://github.com/craftzdog/dotfiles-public), most of the config files are identical to the setup created there.

## Installation Process & Notes
### Switch Caps Lock to Control/Escape
If using Mac: `Keyboard Settings > Keyboard Shortcuts > Modifier Keys > Caps Locks to Control`:

### Neovim Package Installation
run ':PackerInstall' in Neovim 

### LSP Library Installation
Inside neovim, run ':LspInstall <LSP_LIBRARBY>'
e.g. `:LspInstall tailwindcss` will install Tailwind LSP configurations

### Keybinding Cheatsheet
#### NVIM
| Keybind | Usage |
| Space | Remapped leader modifier |
| te | New tab |
| tn | Switch tab next |
| tp | Switch tab previous
| ss | Split window vertically |
| sv | Split window horizontally |
| <leader>pv | Open NetRW |
| <leader>pf | Find files |
| <C-p> | Find git files |
| :%s/x/y/g | Replaces string 'x' with 'y' (/g for global) |


#### TMUX
| Keybind | Usage |
|---------|-------|
| Control-t | Command button to start keybind |
| n | next panel |
| p | previous panel |
| c | new panel | 


#### Splitting Panels
| Keybind | Usage |
|---------|-------|
