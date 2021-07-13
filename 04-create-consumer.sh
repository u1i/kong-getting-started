cid=$RANDOM
curl -i -X POST http://localhost:8001/consumers/ \
  --data username=consumer$cid \
  --data custom_id=consumer$cid

curl -i -X POST http://localhost:8001/consumers/consumer$cid/key-auth \
  --data key=apikey
