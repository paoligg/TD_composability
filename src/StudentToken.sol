pragma solidity ^0.8.0;

import "./IStudentToken.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
//import "@v3-core/contracts/interfaces/IUniswapV3Factory.sol";

contract StudentToken is IStudentToken, ERC20 {

    // ISwapRouter constant swapRouter =
    //     ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);
    // IUniswapV3Factory constant uniswapFactory =
    //     IUniswapV3Factory(0x1F98431c8aD98523631AE4a59f267346ea31F984);

    constructor() ERC20("Paolig", "PAO") {
        _mint(msg.sender, 100000000000000000000000000);
        _mint(address(this), 100000000000000000000000000);
        _approve(address(this), 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE, 1000000000000000000000);
    }

    function mint(address account, uint256 amount) external  {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external  {
        _burn(account, amount);
    }
      function createLiquidityPool() external{
    //     address newPoll = uniswapFactory.createPool(
    //         address(this),
    //         0xB4FBF271143F4FBf7B91A5ded31805e42b2208d6d,
    //         3000
    //     );

    //     return newPoll;
    }

    function SwapRewardToken() external{
    //     IERC20(EvaluatorToken).transferFrom(
    //         msg.sender,
    //         address(this),
    //         amountIn
    //     );
    //     IERC20(EvaluatorToken).approve(address(swapRouter), amountIn);

    //     ISwapRouter.ExactOutputSingleParams memory params = ISwapRouter
    //         .ExactOutputSingleParams({
    //             tokenIn: 0x5cd93e3B0afBF71C9C84A7574a5023B4998B97BE,
    //             tokenOut: 0x56822085cf7C15219f6dC404Ba24749f08f34173,
    //             fee: poolFee,
    //             recipient: msg.sender,
    //             deadline: block.timestamp,
    //             amountOut: _amountOut,
    //             amountInMaximum: _amountInMaximum,
    //             sqrtPriceLimitX96: 0
    //         });

    //     amountIn = swapRouter.exactOutputSingle(params);

    //     if (amountIn < _amountInMaximum) {
    //         IERC20(EvaluatorToken).approve(address(swapRouter), 0);

    //         IERC20(EvaluatorToken).transfer(
    //             msg.sender,
    //             _amountInMaximum - amountIn
    //         );
    //     }

    //     return amountIn;
    }
}

