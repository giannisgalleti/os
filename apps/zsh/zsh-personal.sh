# Enable provided zsh script
source ~/.config/zsh/zsh-theme.sh
unsetopt PROMPT_SP

alias aria2c="aria2c -j 16 -s 16"
alias chmod="sudo chmod"
alias clear-keys="sudo rm -rf ~/ local/share/keyrings/* ~/ local/share/kwalletd/*"
alias pacman="sudo pacman"
alias reboot-windows="sudo grub-set-default 0 && sudo grub-reboot 2 && sudo reboot"
alias ssh="TERM=xterm-256color ssh"
alias sunshine="export DISPLAY=:0 && sunshine ~/ config/sunshine/sunshine conf"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub cfg"
alias update="(yay -Syu --noconfirm) ; (yes | protonup) ; (yes | path-to-mozilla-updater/updater.sh)"
alias vpn-off="mullvad disconnect"
alias vpn-on="mullvad connect"
alias vpn="mullvad status"
