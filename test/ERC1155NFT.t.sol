// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "forge-std/Test.sol";
import "../src/ERC1155NFT.sol";

contract ERC1155NFTTest is Test {
    ERC1155NFT private erc1155nft;
    address private constant alice = address(0x1);

    function setUp() public {
        erc1155nft = new ERC1155NFT();
    }

    function testMintNFT() public {
        erc1155nft.mintNFT(alice);
        uint256 balance = erc1155nft.balanceOf(alice, erc1155nft.getNFTId());
        assertEq(balance, 1, "NFT balance should be 1");
    }

    function testBurnNFT() public {
        erc1155nft.mintNFT(address(this));
        erc1155nft.burnNFT(address(this));
        uint256 balance = erc1155nft.balanceOf(address(this), erc1155nft.getNFTId());
        assertEq(balance, 0, "NFT balance should be 0");
    }

    function testTokenURI() public {
        string memory expectedURI = "https://jsonkeeper.com/b/2KQZ";
        string memory uri = erc1155nft.uri(erc1155nft.getTokenId());
        assertEq(uri, expectedURI, "URI should match expected value");
    }
}
