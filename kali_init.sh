#!/bin/bash
set -xeuo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RST='\033[0m'

# LOG_FILE="$HOME/ad_install.log"
# exec > >(tee -a "$LOG_FILE") 2>&1

print_status() {
    echo -e "${BLUE}[*]${RST} $1"
}

print_success() {
    echo -e "${GREEN}[+]${RST} $1"
}

print_error() {
    echo -e "${RED}[-]${RST} $1"
}

print_warning() {
    echo -e "${YELLOW}[!]${RST} $1"
}

start_step() {
  export step_name="$1"
  print_status "----- $step_name -----"
}

end_step() {
  print_success "----- completed $step_name -----"
  unset step_name
}

original_directory=$PWD

start_step "updating system"
apt-get update
end_step

start_step "getting pentester-worthy .zsh_history"
curl -s https://raw.githubusercontent.com/Jeremiznoo/Updated_Exegol_Zsh_History/refs/heads/main/.zsh_history_for_kali >> ~/.zsh_history
end_step

start_step "installing pipx"
apt install -y pipx
pipx ensurepath
end_step

start_step "installing certipy-ad"
pipx install certipy-ad
end_step

start_step "installing bloodyAD"
pipx install bloodyAD
end_step

start_step "installing docker"
apt install -y docker.io
systemctl enable docker --now
usermod -aG docker $USER
end_step

start_step "installing ligolo-ng"
apt install -y ligolo-ng
end_step

start_step "installing peass"
apt install -y peass
end_step

start_step "installing bloodhound-cli"
wget https://github.com/SpecterOps/bloodhound-cli/releases/latest/download/bloodhound-cli-linux-amd64.tar.gz
tar -xvzf bloodhound-cli-linux-amd64.tar.gz
./bloodhound-cli install
end_step

cd $original_directory

print_success "\n------------------------\nsetup complete!"
