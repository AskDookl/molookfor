#!/bin/sh
if [ ! -f UUID ]; then
  UUID="50fa5324-a158-4403-b4de-8715d3588774"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

