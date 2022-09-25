from requests import get
from requests.exceptions import ConnectionError

API_VERSION = 3
API_ENDPOINT = f"https://api.coingecko.com/api/v{API_VERSION}/coins/bitcoin"

try:
    data = get(API_ENDPOINT).json()["market_data"]
    price = data["current_price"]["usd"]
    print(f"${price}")
except ConnectionError as e:
    print("n/a")
