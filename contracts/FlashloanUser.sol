pragma solidity 0.8.8;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import './FlashloanProvide.sol';
import './IFlashloanUser.sol';


contract FlashloanUser is IFlashloanUser {
    function startFlashloan(
        address flashloan,
        uint amount,
        address token,
    )
    external 
    {
        FlashloanProvider(flashloan).executeFlashloan(
            address(this),
            amount,
            token,
            bytes('')
        )
    }
}