## TD Composability

Ex 1: Deploy an ERC20 contract (2pts)

Ex 2: Mint your ERC20 tokens by calling `ex2_mintStudentToken` (2pts)

Ex 3: Mint some EvaluatorTokens by calling `ex3_mintEvaluatorToken` (2 pts)

Ex 4: From your smart contract, you must call uniswap V3 smart contracts in order to swap EvaluatorToken <> RewardToken. Then call `ex4_checkRewardTokenBalance`  (2 pts)

Ex 5: You must send to the Evaluator smart contract some RewardToken by calling `ex5_checkRewardTokenBalance` (2 pts)

Ex 6: Create a liquidity pool on uniswap V3 between your ERC20 tokens and some WETH. You must use Uniswap smart contracts (2 pts)

Ex 7: Deploy an ERC721 (2 pts)

Ex 8: Mint some ERC721's by calling `ex8_mintNFT` (2 pts)

Ex 9: Ouch... my Evaluator contract is admin of your ERC721 token. He has full rights and you must call `ex9_burnNft` (1 pts)

Ex 10: Verify your smart contract on Etherscan and sourcify (1 pts)

Ex 11: Simply call `ex11_unlock_ethers` (2 pts)

-----------------------------------------
Deployed Addresses on goerli:
- [Evaluator contract](https://goerli.etherscan.io/address/0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE)
- [Reward contract](https://goerli.etherscan.io/address/0x56822085cf7C15219f6dC404Ba24749f08f34173)

-----------------------------------------

## My Work on this TD 

The GoerliETH address I used was [0x527834BE7F1a2bB4648c04d7978CB768d0A99CE9](https://goerli.etherscan.io/address/0x527834BE7F1a2bB4648c04d7978CB768d0A99CE9)

My ERC20 address is [0x76DB242DD88c2C742e6B5048458bb1d3aAB382b9](https://goerli.etherscan.io/address/0x76DB242DD88c2C742e6B5048458bb1d3aAB382b9#code)

My ERC721 address is [0x8C74Ea08A903A425B8de05016E220bD7590D0320](https://goerli.etherscan.io/address/0x8c74ea08a903a425b8de05016e220bd7590d0320)

**QUESTION 1** 
```bash
forge create --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY src/StudentToken.sol:StudentToken --constructor-args "Paolig" "PAO"
```
**QUESTION 2** 
```bash
cast send 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "registerStudentToken(address)" 0x76DB242DD88c2C742e6B5048458bb1d3aAB382b9 --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
cast send 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "ex2_mintStudentToken()" --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
```
**QUESTION 3**
```bash
cast send 0x76DB242DD88c2C742e6B5048458bb1d3aAB382b9 "transfer(address,uint256)" 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE 20000000 --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
cast send 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "ex3_mintEvaluatorToken()" --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
```
**QUESTION 4**

I had an issue with UniswapV3 libraries due to nodejs and npm problems on my WSL, i used the app to swap my the tokens. 

```bash
cast send 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "ex4_checkRewardTokenBalance()" --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
```
**QUESTION 5**
```bash
cast send 0x56822085cf7C15219f6dC404Ba24749f08f34173 "approve(address, uint256)" 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE 10000000000000000000 --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
cast send 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "ex5_checkRewardTokenBalance()" --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
```
**QUESTION 6**

Same as Question 4, the problems with Uniswap libraries didn't allow me to deploy the contract correctly.

**QUESTION 7**
```bash
forge create --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY src/StudentNft.sol:StudentNft
```
**QUESTION 8**
```bash
cast send 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "registerStudentNft(address)" 0x8C74Ea08A903A425B8de05016E220bD7590D0320 --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
cast send 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "ex8_mintNFT()" --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
```
**QUESTION 9**



**QUESTION 10** 

For Etherscan, I used forge to verify the contracts :
```bash
forge verify-contract --chain-id 5 --etherscan-api-key $ETHERSCAN_API_KEY 0x76DB242DD88c2C742e6B5048458bb1d3aAB382b9 src/StudentToken.sol:StudentToken
forge verify-contract --chain-id 5 --etherscan-api-key $ETHERSCAN_API_KEY 0x8C74Ea08A903A425B8de05016E220bD7590D0320 src/StudentNft.sol:StudentNft
```
For Sourcify I used the website : 
https://sourcify.dev/#/verifier

**QUESTION 11** 

To be continued...
```bash
cast send 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE "ex11_unlock_ethers()" --rpc-url $GOERLI_RPC_URL --private-key $PRIVATE_KEY
```





