pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ERC1155NFT is ERC1155, Ownable {
    uint256 public constant NFT_ID = 1;
    uint256 public constant TOKEN_ID = 2;
    mapping (address => bool) private _nftMinted;

    constructor() ERC1155("https://gateway.pinata.cloud/ipfs/QmTWkZ46JY8MmqRh9jL4VeppQuHcCrap1hLVEaNJawAzWV/{id}.json") {}

    function mintNFT(address account, bytes memory data) public onlyOwner {
        require(!_nftMinted[account], "NFT already minted");
        _nftMinted[account] = true;
        _mint(account, NFT_ID, 1, data);
    }

    function mintToken(address account, uint256 amount, bytes memory data) public onlyOwner {
        _mint(account, TOKEN_ID, amount, data);
    }
}
