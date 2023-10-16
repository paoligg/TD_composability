// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import "openzeppelin-contracts/contracts/token/ERC721/IERC721.sol";

interface IStudentNft is IERC721 {
	function mint(uint tokenIdToMint) external;

	function burn(uint tokenIdToBurn) external;
}
