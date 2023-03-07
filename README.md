#  Create Tokens w/Foundry & Token Standards Overview

<add_image>

This repo is an overview for the blog post: <ADD_LINK>

---

## Quickstart


---

## Intro to Token Standards

### ERC-20:

- Defines a standard for **fungible tokens**
- Each token is interchangeable with one other
- One of the most widely used token standards on Ethereum, with many popular tokens such as DAI, USDC, LINK and UNI


### ERC-721:

- Defines a standard for **non-fungible tokens** (NFTs)
- Each token is **unique and non-interchangeable**
- Each token is stored as a **separate smart contract** on the blockchain, which can make it more expensive to create and manage large numbers of tokens.
- Typically used for digital assets such as art, collectibles, and unique in-game items
- There are many popular ERC-721 NFT collections; some of the most well-known ones are CryptoKitties, NBA Top Shot, Art Blocks and Bored Ape Yacht Club.


Before diving into ERC-1155, it's worth briefly mentioning [**ERC-721A**](https://github.com/chiru-labs/ERC721A), an extension to the ERC-721 standard which adds optional interfaces to create more complex non-fungible tokens.

**ERC-721A:**

- It's a **community-driven** extension of the ERC-721 standard created by [Azuki](https://www.azuki.com/erc721a). It's not an official Ethereum Improvement Proposal (EIP), meaning it has not been formally approved by the Ethereum community.
- Used for creating non-fungible tokens (NFTs) on Ethereum
- Allows for significant gas savings when **minting multiple NFTs in a single transaction.**


### ERC-1155:

- Defines a standard for **both fungible and non-fungible tokens**
- Tokens can be **unique and non-interchangeable** (like ERC-721 tokens) or **identical and interchangeable** (like ERC-20 tokens)
- **Multiple tokens can be stored in a single smart contract**, making it more **gas efficient** compared to ERC-721
- Allows for **batch transfers**, which can significantly reduce gas costs for large collections of tokens. Batch transfers allow multiple token transfers to occur within a single transaction. So if you want to send multiple tokens to different users then you can do this with a single batch transfer instead of multiple transactions, which would reduce the number of transactions you need to make and hence the gas costs.
- Supports **more complex token designs**. It can be used for a wider range of use cases, such as in-game items that come in different colors or levels of rarity. For example, if you wanted to use both fungible and non-fungible tokens you would need to use both ERC-20 and the ERC-721 contracts, with ERC-1155 you are now able to achieve this in a single smart contract.
- Some projects that use the ERC-1155 are Enjin, The Sandbox & Immutable X.