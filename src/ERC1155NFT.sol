// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// Import the necessary contracts from OpenZeppelin
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "openzeppelin-contracts/access/Ownable.sol";

contract ERC1155NFT is ERC1155, Ownable {
    uint256 public constant EDA_TOKEN = 1;
    uint256 public constant EDA_NFT = 2;

    constructor() ERC1155("https://ipfs.io/ipfs/bafybeihjjkwdrxxjnuwevlqtqmh3iegcadc32sio4wmo7bv2gbf34qs34a/{id}.json") {
        _mint(msg.sender, EDA_TOKEN, 100, "");
    }

    function mintNFT(address account) external onlyOwner {
        _mint(account, EDA_NFT, 1, "");
    }

    function burnNFT(address account) external onlyOwner {
        _burn(account, EDA_NFT, 1);
    }
}

