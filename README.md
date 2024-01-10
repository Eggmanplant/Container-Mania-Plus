Sonic Mania Fedora Silverblue
First install distrobox:
rpm-ostree install distrobox && systemctl reboot
Second: Download images:
distrobox create -Y --image archlinux:latest && distrobox rm archlinux-latest
And download the script:
curl https://raw.githubusercontent.com/SonicGamerEpisode55/Sonic-Mania-Fedora-Silverblue/main/main.sh > sonic.sh && chmod +x sonic.sh && ./sonic.sh
