wget -O data.json "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=usd"
echo "$(date), $(jq ' .bitcoin | .usd ' data.json)">>result.csv
