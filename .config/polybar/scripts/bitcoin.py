from requests import get
from requests.exceptions import ConnectionError
from subprocess import run

API_VERSION = 3
API_ENDPOINT = f"https://api.coingecko.com/api/v{API_VERSION}/coins/bitcoin"

ICON = "~/.local/share/icons/bitcoin.png"
NOTIFY_PRICE = 40000

try:
    data = get(API_ENDPOINT).json()["market_data"]
    price = data["current_price"]["usd"]
    if price <= NOTIFY_PRICE:
        run(
            f"notify-send -u critical -i {ICON} 'Bitcoin' 'price less than ${NOTIFY_PRICE}'",
            shell=True,
        )
    print(f"${price}")
except ConnectionError as e:
    print("n/a")
