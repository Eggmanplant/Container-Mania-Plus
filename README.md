## Container Mania Plus
- First install distrobox: For Silverblue `rpm-ostree install distrobox && systemctl reboot`
- Second: Download images: `distrobox create -Y --image archlinux:latest && distrobox rm archlinux-latest`
- And download the script: `curl https://raw.githubusercontent.com/Eggmanplant/Container-Mania-Plus/main/main.sh > sonic.sh && chmod +x sonic.sh && ./sonic.sh && rm sonic.sh`
