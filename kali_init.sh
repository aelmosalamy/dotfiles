#!/bin/bash

start_step() {
  export step_name="$1"
  echo "[*] ----- $step_name -----"
}

end_step() {
  echo "[+] ----- completed $step_name -----"
  unset step_name
}

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

start_step "installing bloodhound-cli"
wget https://github.com/SpecterOps/bloodhound-cli/releases/latest/download/bloodhound-cli-linux-amd64.tar.gz
tar -xvzf bloodhound-cli-linux-amd64.tar.gz
./bloodhound-cli install
end_step

echo "\n------------------------\ndone, enjoy your kali!"
