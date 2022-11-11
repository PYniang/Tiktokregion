if [ ! "$(command -v jq)" ]; then
  apt install jq -y
  yum install jq -y
fi
if [ ! "$(command -v curl)" ]; then
  apt install curl -y
  yum install curl -y
fi
clear
region=$(curl -s https://www.tiktok.com/node/common/web-privacy-config?locale=zh-Hant-TW | jq '.body.appProps.region')
echo "地区："$region