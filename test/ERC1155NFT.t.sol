// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/ERC1155NFT.sol";

contract TestERC1155NFT is Test {
    ERC1155NFT erc1155nft;
    address owner = address(this);
    address account1 = address(0x01);
    address account2 = address(0x02);
    bytes data = "0x01";

    function testMintNFT() public {
        erc1155nft = new ERC1155NFT();
        erc1155nft.mintNFT(account1, data);
        uint256 NFTId = 1;
        assertEq(erc1155nft.balanceOf(account1, NFTId), 1, "NFT balance is incorrect");
    }

    function testMintToken() public {
        erc1155nft = new ERC1155NFT();
        uint256 amount = 100;
        uint256 tokenId = 2;
        erc1155nft.mintToken(account1, amount, data);
        assertEq(erc1155nft.balanceOf(account1, tokenId), amount, "Token balance is incorrect");
    }
}
