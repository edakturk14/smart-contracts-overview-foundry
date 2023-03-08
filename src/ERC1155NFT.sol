// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "openzeppelin-contracts/access/Ownable.sol";

/**
 * @title ERC1155NFT
 * @dev This contract implements the ERC1155 token standard for non-fungible tokens (NFTs).
 * It allows for the creation and management of two types of tokens:
 * - TOKEN: A fungible token with ID 1 that can be minted and burned by the contract owner.
 * - NFT: A non-fungible token with ID 2 that can only be minted and burned by the contract owner.
 * The contract inherits from the ERC1155 and Ownable contracts.
 */
contract ERC1155NFT is ERC1155, Ownable {
    uint256 public constant TOKEN = 1;
    uint256 public constant NFT = 2;

    constructor() ERC1155("https://www.jsonkeeper.com/b/75N9") {
        _mint(msg.sender, TOKEN, 100, "");
    }

    function mintNFT(address account) external onlyOwner {
        _mint(account, NFT, 1, "");
    }

    function burnNFT(address account) external onlyOwner {
        _burn(account, NFT, 1);
    }

    function getNFTId() public pure returns (uint256) {
        return NFT;
    }
    function getTokenId() public pure returns (uint256) {
        return TOKEN;
    }
}

