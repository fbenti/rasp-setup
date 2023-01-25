cd
git clone https://github.com/eProsima/foonathan_memory_vendor.git ~/foonathan_memory_vendor
cd ~/foonathan_memory_vendor
mkdir build && cd build
cmake ..
sudo cmake --build . --target install
