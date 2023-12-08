cd ~
git clone --recursive https://github.com/Rubberduckycooly/RSDKv5-Decompilation engine
git clone https://github.com/Rubberduckycooly/Sonic-Mania-Decompilation game
cd engine
cmake -B build && cmake --build build --config release
cd ~
cd game
make
mkdir ~/files
cp ~/game/bin/Linux/SonicMania.so ~/files/Game.so
rm ~/.bashrc
echo 'cd ~/files' >> ~/.bashrc
ln -s ~/files ~/../Documents
mv ~/../Documents/files ~/../Documents/SonicMania
echo '~/engine/build/RSDKv5U' >> ~/.bashrc
echo 'exit' >> ~/.bashrc
echo Done. Run Sonic Mania from your desktop's application launcher.
exit
