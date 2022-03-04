// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

import "@chainlink/contracts/src/v0.7/interfaces/AggregatorV3Interface.sol";
import "@chainlink/contracts/src/v0.7/vendor/SafeMathChainlink.sol";

contract FundMe {
    // Contract to accept payments
    using SafeMathChainlink for uint256;

    address public owner;
    AggregatorV3Interface public priceFeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    // Sets a min amount of funding in USD
    function sendFunds() public payable {
        uint256 minimumAmount = 50 * 10 ** 18;
        require(convertEthToUsd(msg.value) >= minimumAmount, "Need to spend more Eth!!");
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
    }

    // What the ETH - USD conversion rate is (via Chainlink)
    function getEthereumPrice() public view returns (int256) {
        (, int256 price,,,) = priceFeed.latestRoundData();
        return price * 10 ** 10;
    }

    function convertEthToUsd(uint256 amountFunded) public view returns (uint256) {
        uint256 ethPrice = uint256(getEthereumPrice());
        return (amountFunded * ethPrice) / 10 ** 18;
    }

    // Withdraw contract balance, reset mapping and funders array
    function withdrawFunds() public payable onlyOwner {
        msg.sender.transfer(address(this).balance);

        for (uint256 idx = 0; idx < funders.length; idx++) {
            address funder = funders[idx];
            addressToAmountFunded[funder] = 0;
        }
        funders = new address[](0);
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

// Rinkeby: 0x2894339206a3d340E7616893e9f2b7dd9D30131E
// Could not validate due to import strings pointing at Chainlink NPM packages instead of GitHub
