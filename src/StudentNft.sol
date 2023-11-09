// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "./IStudentNft.sol";

contract StudentNft is IStudentNft, ERC721 {

    constructor() ERC721("PaoNft", "NFP") {
    }

    function mint(uint256 tokenIdToMint) external {
        require(ERC20(0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE).allowance(0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE, address(this))== 10 * 10 ** 18,
         "cannot mint nft without collateral");
        _mint(msg.sender, tokenIdToMint);
    }

    function burn(uint256 tokenIdToBurn) external{
        _burn(tokenIdToBurn);
    }
}
