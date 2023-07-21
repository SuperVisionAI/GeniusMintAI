/// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

/**
 * @title NFT - A simple ERC721 Non-Fungible Token contract
 * @author Thomas Heim
 * @notice This contract allows users to mint ERC721 tokens by paying a certain cost in Ether.
 */
contract NFT is ERC721URIStorage {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;

    address public owner;
    uint256 public cost;

    /**
     * @notice Initializes the contract with the specified token name, symbol, and minting cost.
     * @param _name The name of the ERC721 token.
     * @param _symbol The symbol of the ERC721 token.
     * @param _cost The cost in Ether required to mint a new token.
     */

    constructor(string memory _name, string memory _symbol, uint256 _cost) ERC721(_name, _symbol) {
        owner = msg.sender;
        cost = _cost;
    }

    /**
     * @notice Mints a new ERC721 token with the given tokenURI.
     * @dev The caller must pay the specified cost in Ether to mint the token.
     * @param tokenURI The metadata URI for the token.
     */
    function mint(string memory tokenURI) public payable {
        require(msg.value >= cost, "Insufficient Ether to mint the token.");

        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
    }

    /**
     * @notice Retrieves the total number of tokens minted so far.
     * @return The total number of minted tokens.
     */
    function totalSupply() public view returns (uint256) {
        return _tokenIds.current();
    }

    /**
     * @notice Allows the contract owner to withdraw the contract's balance in Ether.
     * @dev Only the contract owner can call this function.
     */
    function withdraw() public {
        require(msg.sender == owner, "Only the contract owner can withdraw.");
        (bool success,) = owner.call{value: address(this).balance}("");
        require(success, "Withdrawal failed.");
    }
}
