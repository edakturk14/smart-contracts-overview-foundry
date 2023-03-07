// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Import the ERC721 contract from the OpenZeppelin library
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Define the ERC721NFT contract as inheriting from ERC721
contract ERC721NFT is ERC721 {
    // Constructor sets the name and symbol of the token, and mints a new token to the deployer's address
    constructor() ERC721("EDA ERC721 NFT", "EDANFT") {
        _mint(msg.sender, 1);
    }

    // Function to mint a new token and assign it to the specified recipient address
    function mint(address to, uint id) external {
        _mint(to, id);
    }
}
