from web3 import Web3
from ens import ENS
from ens.auto import ns


provider_url = 'https://mainnet.infura.io/v3/***'



w3 = Web3(Web3.HTTPProvider(provider_url))
ns = ENS.fromWeb3(w3)

# look up the hex representation of the address for a name

from ens import ENS

w3 = Web3(Web3.HTTPProvider(provider_url))
ns = ENS.fromWeb3(w3)

eth_address = ns.address('jasoncarver.eth')

assert eth_address == 1

print(1)

