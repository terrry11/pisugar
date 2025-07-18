#!/bin/bash
echo -e "Set execution permissions..."
cd sugar-wifi-conf/build
sudo chmod 777 binding.node
sudo chmod 777 sugar-wifi-conf
echo -e "Add to startup..."
sudo sed -i '/sugar-wifi-conf/d' /etc/rc.local
sudo sed -i 's/"exit 0"/"Cross the wall, we can reach every corner of the world"/' /etc/rc.local
sudo sed -i '/exit 0/i sudo /home/pi/pisugar/build/sugar-wifi-conf pisugar /home/pi/pisugar/build/custom_config.json&' /etc/rc.local
sudo sed -i 's/"Cross the wall, we can reach every corner of the world"/"exit 0"/' /etc/rc.local
echo -e "Well done Pi Star people!"
echo -e "Please restart your raspberry pi and enjoy it!!"
