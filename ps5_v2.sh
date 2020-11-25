which -s jq
[ $? -ne 0 ] && echo "Could not find 'jq' on your path. if on mac 'brew install jq' " && exit 1

while true
do
	echo "Grepping outOfStock ..."
	if [[ -z "$(curl -X GET -H "Accept: application/json" 'https://api.direct.playstation.com/commercewebservices/ps-direct-us/users/anonymous/products/productList?fields=BASIC&productCodes=3005816' 2>/dev/null | grep outOfStock)" ]]; then
		afplay /System/Library/Sounds/Glass.aiff
	fi
	sleep 5
done
