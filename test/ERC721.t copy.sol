// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "forge-std/Test.sol";
import "../src/ERC721NFT.sol";

contract ERC721NFTTest is Test {
    ERC721NFT erc721;
    address private constant alice = address(0x1);

    function testMintToken() public {
        erc721 = new ERC721NFT();
        erc721.mint(alice, 0);
        address owner_of = erc721.ownerOf(0);
        assertEq(alice, owner_of);

    }

}
