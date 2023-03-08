pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


/**
 * @title ERC1155NFT
 * @dev This contract implements the ERC1155 token standard for non-fungible tokens (NFTs).
 * It allows for the creation and management of two types of tokens:
 * - TOKEN: A fungible token with ID 1 that can be minted and burned by the contract owner.
 * - NFT: A non-fungible token with ID 2 that can only be minted and burned by the contract owner.
 * The contract inherits from the ERC1155 and Ownable contracts.
 */
contract ERC1155NFT is ERC1155, Ownable {

    /**
     * @dev ID values for the NFT and TOKEN tokens.
     */
    uint256 public constant NFT_ID = 1;
    uint256 public constant TOKEN_ID = 2;

    /**
     * @dev Mapping to track whether an address has already minted an NFT token.
     */
    mapping (address => bool) private _nftMinted;

    /**
     * @dev Constructor function that sets the base URI for the tokens.
     */
    constructor() ERC1155("https://gateway.pinata.cloud/ipfs/QmTWkZ46JY8MmqRh9jL4VeppQuHcCrap1hLVEaNJawAzWV/{id}.json") {}

    /**
     * @dev Function to mint an NFT token.
     * @param account The address that will receive the NFT token.
     * @param data Additional data to include in the minting transaction.
     */
    function mintNFT(address account, bytes memory data) public onlyOwner {
        // Check if the account has already minted an NFT
        require(!_nftMinted[account], "NFT already minted");

        // Mark the account as having minted an NFT
        _nftMinted[account] = true;

        // Mint the NFT token to the specified account with ID 1 and quantity 1
        _mint(account, NFT_ID, 1, data);
    }

    /**
     * @dev Function to mint a TOKEN token.
     * @param account The address that will receive the TOKEN token.
     * @param amount The amount of TOKEN tokens to mint.
     * @param data Additional data to include in the minting transaction.
     */
    function mintToken(address account, uint256 amount, bytes memory data) public onlyOwner {
        // Mint the TOKEN token to the specified account with ID 2 and the specified quantity
        _mint(account, TOKEN_ID, amount, data);
    }
}
