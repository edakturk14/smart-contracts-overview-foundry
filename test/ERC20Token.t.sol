// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/ERC20Token.sol";

contract ERC20TokenTest is Test {
    ERC20Token private erc20token;
    address private constant ACCOUNT1 = address(0x1111111111111111111111111111111111111111);

    function setUp() public {
        erc20token = new ERC20Token();
    }

    function testInitialBalance() public {
        uint256 balance = erc20token.balanceOf(address(this));
        assertEq(balance, 1000 * 10 ** erc20token.decimals(), "Initial balance should be 1000");
    }

    function testTransfer() public {
        uint256 amount = 100 * 10 ** erc20token.decimals();
        erc20token.transfer(ACCOUNT1, amount);
        uint256 balance = erc20token.balanceOf(ACCOUNT1);
        assertEq(balance, amount, "Recipient balance should be equal to transferred amount");
    }
}
