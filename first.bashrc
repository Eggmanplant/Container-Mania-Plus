cd ~
rm .zshrc
git clone --recursive https://github.com/Rubberduckycooly/RSDKv5-Decompilation engine
git clone https://github.com/Rubberduckycooly/Sonic-Mania-Decompilation game
cd engine
cmake -B build && cmake --build build --config release
cd ~
cd game
make
mkdir ~/files
mkdir -p ~/files/mods/GLShaders/Data/Shaders
cp ~/game/bin/Linux/SonicMania.so ~/files/Game.so
cp -r ~/engine/RSDKv5/Shaders/OGL ~/files/mods/GLShaders/Data/Shaders
printf "Name=GLShaders\nDescription=OGLShaders\nAuthor=Ducky\nVersion=1.0.0\nTargetVersion=5\n" > ~/files/mods/GLShaders/mod.ini
printf "[Mods]\nGLShaders=y\n" > ~/files/mods/modconfig.ini
rm ~/.bashrc
echo 'cd ~/files' >> ~/.bashrc
ln -s ~/files ~/../Documents
mv ~/../Documents/files ~/../Documents/SonicMania
echo '~/engine/build/RSDKv5U' >> ~/.bashrc
echo 'exit' >> ~/.bashrc
echo 'bash' >> ~/.zshrc
echo 'exit' >> ~/.zshrc
exit
