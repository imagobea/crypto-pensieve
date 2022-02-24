# Genesis
- [Bitcoin whitepaper](https://bitcoin.org/bitcoin.pdf), published in 2008 by Satoshi Nakamoto
- [Ethereum whitepaper](https://ethereum.org/en/whitepaper/), published in 2013 by [Vitalik Buterin](https://vitalik.ca/)

# What is a blockchain
A blockchain is a public database that is updated and shared across many computers in a network [4].

"Block" refers to data and state being stored in consecutive groups known as "blocks". [...] "Chain" refers to the fact that each block cryptographically references its parent. In other words, blocks get chained together [4].

The genesis block is the first block in a blockchain.

Every computer in the network must agree upon each new block and the chain as a whole. These computers are known as "nodes". Nodes ensure everyone interacting with the blockchain has the same data. To accomplish this distributed agreement, blockchains need a consensus mechanism (?) [4].

New blocks are broadcast to the nodes in the network, checked and verified, thus updating the state of the blockchain for everyone [4].

Mining, nonce... (?)

# Blockchain features
- Deterministic: if past transactions could not produce the same result every time they are executed, achieving consensus would be impossible [2]
- Decentralised
- Transparent
- Fast and efficient
- Secure and immutable
- Remove counterparty risk and allow for trust minimised agreements, e.g. insurance company not wanting to execute a payment

- Sharding is a solution to the scalability problem

# Eth specifics
- Hashing via Keccak256 (which is not the same as SHA-3)
- Ethereum currently uses a proof-of-work consensus mechanism
- The problem that miners have to solve... (?)
- Each block will have solidity code in the data (or tx section)

# Smart contracts
- Specify license + solidity version at the top
- A contract is like class
- View functions don't make a state change
- All the solidity code gets compiled down to the EVM

# About chainlink
- Decentralised oracle network
- Blockchain agnostic

# Other concepts
- Hybrid smart contracts: onchain logic + offchain data and external computation
- Decentralised applications are a combination of smart contracts
- Wallet - 1 neumonic : many accounts, 1 public + 1 private key : 1 acccount (?)
- Ethereum addresses are based on the account public key
- EVM: Ethereum Virtual Machine, to be EVM compatible (?)
- Mainnet vs Testnet (+Faucet - application that provides test tokens)
- Block explorer: application that allows to review blockchain transactions
- Gas - depends on the amount of computation - and gas units (?)
- Hash (hashing): the result of mapping data of arbitrary size to fixed-size values, via cryptographic hash functions (CHF) - "one-way" functions. Most CHF are designed to take a string of any length as input and produce a fixed-length hash value. Examples of cryptographic hash algorithms: SHA-2, which consists of two hash algorithms, SHA-256 and SHA-512 [3].
- Elliptic Curve Digital Signature Algorithm
- L1 v L2 (?)
- Rollups (?)
- Sidechains (?)

# Paradigms
- DeFi (?)
- NFTs (?)
- DAOs (?)
- Some other projects inspired by Etherem have taken a different direction, e.g.: Polygon, Polkadot, Avalanche.

# Lingo
- Turing complete (?)
- Often times hybrid smart contracts are referred to as smart contracts, although hybrid specifically means that there is an offchain component
- Similarly: Smart contract = Decentralized protocol = Decentralized application (Dapp)
- Blockchain = Smart contract protocol = Smart contract platform
- Front-running: trading stocks or any asset based on insider knowledge of a future transaction that will affect its price, it is illegal in most cases [1]
- Web3 (?)
- Transactions = smart contract interactions = function calls

# References
1. Front-running definition, https://www.investopedia.com, 18 Jan 2022
2. Learn the blockchain basics, https://hackernoon.com/dojo-of-blockchain-sovereignty-part-1-determinism-so1d357b, 21 Jan 2022
3. Cryptographic hash function, https://en.wikipedia.org/wiki/Cryptographic_hash_function, 18 Feb 2022
4. Intro to Ethereum, https://ethereum.org/en/developers/docs/intro-to-ethereum, 24 Feb 2022

<hr />

*(?) Find out more!*
