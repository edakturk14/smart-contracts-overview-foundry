// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Import the ERC721 contract from the OpenZeppelin library
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "openzeppelin-contracts/access/Ownable.sol";

// Define the ERC721NFT contract as inheriting from ERC721
contract ERC721NFT is ERC721, Ownable {
    // Constructor sets the name and symbol of the token, and mints a new token to the deployer's address
    constructor() ERC721("EDA ERC721 NFT", "EDANFT") {
        _mint(msg.sender, 1);
    }

    // Override the tokenURI function to return the custom URI for your contract
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return "https://www.jsonkeeper.com/b/75N9";
    }

    // Function to mint a new token and assign it to the specified recipient address
    function mint(address to, uint id) external onlyOwner{
        _mint(to, id);
    }
}
