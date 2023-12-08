cd ~
git clone --recursive https://github.com/Rubberduckycooly/RSDKv5-Decompilation engine
git clone https://github.com/Rubberduckycooly/Sonic-Mania-Decompilation game
cd engine
cmake -B build && cmake --build build --config release
cd ~
cd game
make
cd ./bin/Linux
mkdir ~/files
cp SonicMania.so ~/files/Game.so
rm ~/.bashrc
echo 'cd ~/files' >> ~/.bashrc
echo 'ln -s ~/files ~/../Documents/SonicMania' >> ~/.bashrc
echo '~/engine/build/RSDKv5U' >> ~/.bashrc
echo 'exit' >> ~/.bashrc
exit
