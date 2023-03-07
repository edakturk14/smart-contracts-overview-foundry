// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Import the ERC20 contract from the OpenZeppelin library
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Define the ERC20Token contract as inheriting from ERC20
contract ERC20Token is ERC20 {
    // Constructor sets the name and symbol of the token, and mints 1000 tokens to the deployer's address
    constructor() ERC20("EDA ERC20 Token", "EDAT") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }
}