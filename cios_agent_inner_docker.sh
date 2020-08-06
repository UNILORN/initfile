echo "Activation Key ? > "
read activation_key
echo "Identification number ? > "
read identification
echo "Device name ? > "
read device

sudo ./scripts/activation/activation.sh -a ${activation_key} -i ${identification} -n ${device}