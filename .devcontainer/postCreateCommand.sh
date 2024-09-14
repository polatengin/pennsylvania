echo -e "\nStarting post creat command script..."
echo "Dev machine:"
uname -a
cd src
echo -e "\nInstalling expo boiler plate..."
npm install --save-dev -y create-expo-app@3.0.0

echo -e "\nInstalling watchman...\n"

sudo apt update
sudo apt install watchman -y
watchman version

echo -e "\n*******************************"
echo -e "\nDev container ready!".
echo -e "\n*******************************\n"
