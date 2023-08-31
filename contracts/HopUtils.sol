// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";


interface IStakingRewards {
    // Views
    function lastTimeRewardApplicable() external view returns (uint256);

    function rewardPerToken() external view returns (uint256);

    function earned(address account) external view returns (uint256);

    function getRewardForDuration() external view returns (uint256);

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    // Mutative

    function stake(uint256 amount) external;

    function withdraw(uint256 amount) external;

    function getReward() external;

    function exit() external;
}

contract HopUtils {

    constructor() {}

    function withdraw(address[] memory contracts) public {
        for (uint i = 0; i < contracts.length; i++) {
            IStakingRewards(contracts[i]).getReward();
        }
    }

    function exit(address[] memory contracts) public {
        for (uint i = 0; i < contracts.length; i++) {
            IStakingRewards(contracts[i]).getReward();
        }
    }
}
