#  Smart Contract Development with Foundry and Token Standards

Foundry is a toolkit for Ethereum application development written in Rust. It's a framework for testing, debugging and deploying Solidity smart contracts.

This repo is for the following blog post: <here>

---

## Quickstart

Follow the steps [here](https://book.getfoundry.sh/getting-started/installation) to install Foundry.

Clone the repo & install the dependencies.

```
git clone https://github.com/edakturk14/smart-contracts-overview-foundry.git
cd smart-contracts-overview-foundry
forge install
```

To build, use `forge build`

```
$ forge build
[⠆] Compiling...
[⠒] Compiling 44 files with 0.8.17
[⠃] Solc 0.8.17 finished in 4.41s
Compiler run successful
```

Run the tests: `forge test`
```
$ forge test
[⠰] Compiling...
No files changed, compilation skipped

Running 2 tests for test/ERC721NFT.t.sol:ERC721NFTTest
[PASS] testMintToken() (gas: 1143731)
[PASS] testTokenURI() (gas: 1145450)
Test result: ok. 2 passed; 0 failed; finished in 3.74ms

Running 2 tests for test/ERC1155NFT.t.sol:TestERC1155NFT
[PASS] testMintNFT() (gas: 1453993)
[PASS] testMintToken() (gas: 1431645)
Test result: ok. 2 passed; 0 failed; finished in 3.79ms

Running 2 tests for test/ERC20Token.t.sol:ERC20TokenTest
[PASS] testInitialBalance() (gas: 9100)
[PASS] testTransfer() (gas: 37418)
Test result: ok. 2 passed; 0 failed; finished in 3.81ms
```

You can get gas reports by running: `forge test --gas-report`
```
╭───────────────────────────────────────────────────────────────────────────┬─────────────────┬───────┬────────┬───────┬─────────╮
│ lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol:ERC20 contract ┆                 ┆       ┆        ┆       ┆         │
╞═══════════════════════════════════════════════════════════════════════════╪═════════════════╪═══════╪════════╪═══════╪═════════╡
│ Deployment Cost                                                           ┆ Deployment Size ┆       ┆        ┆       ┆         │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ 518333                                                                    ┆ 3253            ┆       ┆        ┆       ┆         │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ Function Name                                                             ┆ min             ┆ avg   ┆ median ┆ max   ┆ # calls │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ balanceOf                                                                 ┆ 562             ┆ 1562  ┆ 1562   ┆ 2562  ┆ 2       │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ decimals                                                                  ┆ 266             ┆ 266   ┆ 266    ┆ 266   ┆ 2       │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ transfer                                                                  ┆ 29838           ┆ 29838 ┆ 29838  ┆ 29838 ┆ 1       │
╰───────────────────────────────────────────────────────────────────────────┴─────────────────┴───────┴────────┴───────┴─────────╯
╭────────────────────────────────────────┬─────────────────┬───────┬────────┬───────┬─────────╮
│ src/ERC1155NFT.sol:ERC1155NFT contract ┆                 ┆       ┆        ┆       ┆         │
╞════════════════════════════════════════╪═════════════════╪═══════╪════════╪═══════╪═════════╡
│ Deployment Cost                        ┆ Deployment Size ┆       ┆        ┆       ┆         │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ 1342979                                ┆ 6792            ┆       ┆        ┆       ┆         │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ Function Name                          ┆ min             ┆ avg   ┆ median ┆ max   ┆ # calls │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ balanceOf                              ┆ 700             ┆ 700   ┆ 700    ┆ 700   ┆ 2       │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ mintNFT                                ┆ 48904           ┆ 48904 ┆ 48904  ┆ 48904 ┆ 1       │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ mintToken                              ┆ 26535           ┆ 26535 ┆ 26535  ┆ 26535 ┆ 1       │
╰────────────────────────────────────────┴─────────────────┴───────┴────────┴───────┴─────────╯
╭──────────────────────────────────────┬─────────────────┬───────┬────────┬───────┬─────────╮
│ src/ERC721NFT.sol:ERC721NFT contract ┆                 ┆       ┆        ┆       ┆         │
╞══════════════════════════════════════╪═════════════════╪═══════╪════════╪═══════╪═════════╡
│ Deployment Cost                      ┆ Deployment Size ┆       ┆        ┆       ┆         │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ 1039322                              ┆ 5473            ┆       ┆        ┆       ┆         │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ Function Name                        ┆ min             ┆ avg   ┆ median ┆ max   ┆ # calls │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ mint                                 ┆ 47328           ┆ 47328 ┆ 47328  ┆ 47328 ┆ 2       │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ ownerOf                              ┆ 602             ┆ 602   ┆ 602    ┆ 602   ┆ 1       │
├╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌┼╌╌╌╌╌╌╌╌╌┤
│ tokenURI                             ┆ 978             ┆ 978   ┆ 978    ┆ 978   ┆ 1       │
╰──────────────────────────────────────┴─────────────────┴───────┴────────┴───────┴─────────╯
```

To deploy the smart contract use `forge create` [options] contract. You'll need to set your environmental variables:
```
export RPC_URL=https://opt-mainnet.g.alchemy.com/v2/<YOUR_API_KEY>
export PRIVATE_KEY=<YOUR_PRIVATE_KEY>
export ETHERSCAN_API_KEY=<YOUR_ETHERSCAN_API_KEY>
```


---

## Intro to Token Standards

### ERC-20:

- Defines a standard for **fungible tokens**
- Each token is interchangeable with one other
- One of the most widely used token standards on Ethereum, with many popular tokens such as DAI, USDC, LINK and UNI


### ERC-721:

- Defines a standard for **non-fungible tokens** (NFTs)
- Each token is **unique and non-interchangeable**
- Each token is stored as a **separate smart contract** on the blockchain, which can make it more expensive to create and manage large numbers of tokens.
- Typically used for digital assets such as art, collectibles, and unique in-game items
- There are many popular ERC-721 NFT collections; some of the most well-known ones are CryptoKitties, NBA Top Shot, Art Blocks and Bored Ape Yacht Club.


Before diving into ERC-1155, it's worth briefly mentioning [**ERC-721A**](https://github.com/chiru-labs/ERC721A), an extension to the ERC-721 standard which adds optional interfaces to create more complex non-fungible tokens.

**ERC-721A:**

- It's a **community-driven** extension of the ERC-721 standard created by [Azuki](https://www.azuki.com/erc721a). It's not an official Ethereum Improvement Proposal (EIP), meaning it has not been formally approved by the Ethereum community.
- Used for creating non-fungible tokens (NFTs) on Ethereum
- Allows for significant gas savings when **minting multiple NFTs in a single transaction.**


### ERC-1155:

- Defines a standard for **both fungible and non-fungible tokens**
- Tokens can be **unique and non-interchangeable** (like ERC-721 tokens) or **identical and interchangeable** (like ERC-20 tokens)
- **Multiple tokens can be stored in a single smart contract**, making it more **gas efficient** compared to ERC-721
- Allows for **batch transfers**, which can significantly reduce gas costs for large collections of tokens. Batch transfers allow multiple token transfers to occur within a single transaction. So if you want to send multiple tokens to different users then you can do this with a single batch transfer instead of multiple transactions, which would reduce the number of transactions you need to make and hence the gas costs.
- Supports **more complex token designs**. It can be used for a wider range of use cases, such as in-game items that come in different colors or levels of rarity. For example, if you wanted to use both fungible and non-fungible tokens you would need to use both ERC-20 and the ERC-721 contracts, with ERC-1155 you are now able to achieve this in a single smart contract.
- Some projects that use the ERC-1155 are Enjin, The Sandbox & Immutable X.