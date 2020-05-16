--- Adham Elmosalamy (c) 2020 ---
# My system configuration and installed tools for quick replication.

--- SYSTEM ---
OS: Ubuntu
THEME: Numix[GTK2/3]
ICONS: Flat-Remix[Different Flavours]
TERMINAL: xfce4-terminal
TERMINAL_FONT: FiraCode Nerd Font Medium
SYSTEM_FONT: AlYarmook
SHELL: zsh
	conf: github
	loc: ~/.zshrc
SHELL_PROMPT_CONFIGURATOR: powerlevel10k
	conf: gist
	loc: ~/.p10k.zsh
WM: i3-gaps
	conf: github
	loc: ~/.config/i3/config
	color_conf: an online tool the name of which i forgot...
BAR: i3bar
STATUS: i3status
	conf: github
	loc: ~/.config/i3status/config
SCREEN_LOCK: i3lock fuzzylock.sh
	conf: github
	loc: ~/.local/bin/
	note: fuzzylock is a wrapper i wrote around i3lock
SCREEN_LOCK_CONTROLLER: xss-lock
	note: runs fuzzylock.sh script before sleep, suspend, screensaver, lid close
AUDIO_CONTROLLER: pactl
BRIGHTNESS_CONTROLLER: xbacklight
WIFI_CONTROLLER: nm-applet
APP_LAUNCHER: *rofi dmenu
	rofi_theme: glue_pro_blue

--- CLI ESSENTIALS ---
SYSTEM_MONITOR: htop
SYSTEM_INFO: *neofetch screenfetch
CLI_FILE_MANAGER: *nnn rangerr
VCS: git
	conf: github
BG_SETTER: nitrogen
EDITOR: vim
	conf: github
EVENT_LISTENER: xev

--- GUI ESSENTIALS ---
BROWSER: *Firefox Chrome
FILE_MANAGER: Thunar
IMAGE_VIEWER: feh
DOCUMENT_VIEWER: Atril
MEDIA_PLAYER: vlc
SCREEN_SHOTTER: xfce4-screenshooter
SCREEN_CAST: OBS
PHOTO_EDITOR: GIMP
EBOOK_MANAGER: Calibre
TEXT_EDITOR: Sublime Text
	font: Fira Code
	packages: ...
IDE: Visual Studio Code
	font: Fira Code
	icons: Material Icon Theme
	color_theme: *"Atom One Dark" Horizon
	extensions: "Bracket Pair Colorizer" "Prettier - Code formatter" "Live Server" 

--- EXTRAS ---
Cool Terminal Commands: cowsay lolcat
Cool Wallpapers: Unsplash.com
Libre Office: Office Productivity Suite
Audacity: Audio editor and recorder
Inkscape: Vector Graphics Editor
Blender: 3D Modeler
OpenShot: Video Editor
Discord: Internet Messenger
GitKraken: Graphical Git Client

--- MEH ---
synaptic: Package Manager
IDLE: Python3 IDE
Atom: Light-weight Text Editor
kitty: feature full minimalistic terminal emulator
