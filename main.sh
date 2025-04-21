echo Sonic Mania for Fedora Silverblue - setup
echo  
echo Creating container
distrobox create -Y --image archlinux:latest --name SonicMania --home ~/.mania --additional-packages "pipewire-jack base-devel glew glfw libtheora portaudio git cmake"
cd ~
mkdir .mania
cd .mania
rm .bashrc
rm .zshrc
curl https://raw.githubusercontent.com/Eggmanplant/Container-Mania-Plus/main/first.bashrc > .bashrc
echo 'bash' >> ./.zshrc
cd ..
distrobox enter SonicMania
