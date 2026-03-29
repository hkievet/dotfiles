# dotfiles

Personal development environment config, shared across machines. Clone once, symlink, and go.

## Other quick links

[RayCast](https://www.raycast.com/)
[Obsidian](https://obsidian.md/)




## Quick Start

```bash
git clone https://github.com/hkievet/dotfiles.git ~/dotfiles
cd ~/dotfiles
cp .env-template .env        # fill in GIT_NAME and GIT_EMAIL
./install.sh
```

`install.sh` runs `install_dependencies.sh`, `copy_files.sh`, and sets your global git identity from `.env`.

## What's Included

### Shell (Zsh)
- **Oh My Zsh** with starship prompt
- **fzf** fuzzy finder integration
- **NVM** — Node Version Manager, defaults to Node 22
- Python aliased to `python3` / `pip3`
- `vim` aliased to `nvim`

### Aliases

| Alias | Command |
|-------|---------|
| `gs` | `git status` |
| `gcam` | `git commit -a -m` |
| `rzsh` | Reload `~/.zshrc` |
| `mux` | `tmuxinator` |
| `tmux` | `tmux -2` (256-color) |
| `npminstall` | `npm install --legacy-peer-deps` |
| `pytest` | `python -m pytest` |

### Neovim
- **LSP** for TypeScript (`ts_ls`) and Python (`pyright`) via `vim.lsp.config`
- **nvim-cmp** autocomplete with snippet support (vsnip)
- **Neoformat** — auto-formats JS/TS files on save via Prettier
- Plugin manager: **Packer**

Key LSP mappings:

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `K` | Hover docs |
| `<space>rn` | Rename |
| `<space>ca` | Code action |
| `<space>f` | Format |
| `[d` / `]d` | Prev/next diagnostic |

### Tmux
- 256-color support
- Mouse enabled
- Activity monitoring in background windows

### Other
- `bin/formatAllJson` — batch-format all JSON files in a directory with `jq`
- `gitignore_global` — ignores `.DS_Store`, `.vscode`, Go build artifacts
- `jshintrc` — minimal JSHint config

## File Layout

```
dotfiles/
├── copy_files.sh           # symlinks everything to ~
├── install_dependencies.sh # installs Xcode CLI + Homebrew
├── setup_nvim.sh           # installs pyright for Python LSP
├── homebrewpackages.txt    # Homebrew packages to install
├── zshrc                   # Zsh config
├── bashrc                  # minimal Bash config
├── bash_profile            # sources Cargo env
├── vimrc                   # minimal Vim config (line numbers)
├── init.lua                # Neovim main config (Lua)
├── plugins.lua             # Neovim Packer plugins
├── init.vim                # legacy Neovim config (vim-plug, unused)
├── tmux.conf               # Tmux config
├── gitignore_global        # global gitignore
├── jshintrc                # JSHint config
├── aliases/
│   ├── alias_git           # git aliases
│   └── alias_misc          # misc aliases
└── bin/
    └── formatAllJson       # batch JSON formatter
```

## Neovim Setup

**1. Install Packer** (plugin manager):

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

**2. Install LSP servers** (requires Node):

```bash
npm install -g pyright                  # Python LSP
npm install -g typescript-language-server typescript  # TypeScript LSP
npm install -g prettier                 # formatting (used by Neoformat)
```

Or run the included script:

```bash
./setup_nvim.sh
```

**3. Install plugins** — open `nvim` and run:

```
:PackerSync
```

## Dependencies

`install.sh` handles all of this automatically. Installed packages:

| Tool | Source |
|------|--------|
| ffmpeg | Homebrew |
| neovim | Homebrew |
| vscodium | Homebrew |
| yt-dlp | Homebrew |
| fzf | Homebrew |
| starship | Homebrew |
| tmuxinator | RubyGems |

Also required (installed separately):
- [Homebrew](https://brew.sh)
- [Oh My Zsh](https://ohmyz.sh)
- [NVM](https://github.com/nvm-sh/nvm)
