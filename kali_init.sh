#!/bin/bash

# functions
start_step() {
  export step_name="$1"
  echo "[*] ----- $step_name -----"
}

end_step() {
  echo "[+] ----- completed $step_name -----"
  unset step_name
}

# script
start_step "updating system"
apt-get update
end_step

start_step "populating .zsh_history"
curl -s https://raw.githubusercontent.com/Jeremiznoo/Updated_Exegol_Zsh_History/refs/heads/main/.zsh_history_for_kali >> ~/.zsh_history
end_step

start_step "downloading pipx"
apt install -y pipx
pipx ensurepath
end_step

start_step "getting certipy-ad"
pipx install certipy-ad
end_step

start_step "getting bloodyAD"
pipx install bloodyAD
end_step

start_step "getting docker"
apt install -y docker.io
systemctl enable docker --now
usermod -aG docker $USER
end_step
