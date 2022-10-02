from web3 import Web3
from ens import ENS
from ens.auto import ns



w3 = Web3(Web3.IPCProvider("~/.ethereum/geth.ipc"))


ns = ENS.fromWeb3(w3)


# look up the hex representation of the address for a name

eth_address = ns.address('jasoncarver.eth')

assert eth_address == 1

print(1)
