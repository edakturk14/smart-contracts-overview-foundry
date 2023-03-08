// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "openzeppelin-contracts/access/Ownable.sol";

contract ERC721NFT is ERC721, Ownable {
    constructor() ERC721("EDA ERC721 NFT", "EDANFT") {
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        return "https://www.jsonkeeper.com/b/75N9";
    }

    function mint(address to, uint id) external onlyOwner{
        _mint(to, id);
    }
}
