// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SuperchainPool {
    uint256 public poolLiquidityIndex = 1000;
    uint256 public rebalanceCounter;

    event PoolRebalanced(uint256 indexed newIndex, uint256 rebalanceId);

    function syncSuperchainLiquidity(uint256 _deltaIndex) external {
        poolLiquidityIndex += _deltaIndex;
        rebalanceCounter += 1;
        emit PoolRebalanced(poolLiquidityIndex, rebalanceCounter);
    }
}
