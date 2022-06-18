pragma solidity 0.8.8;

interface IFlashloanUser {
    function flashloanCallback(uint amount, address token, bytes memory data) external;
}