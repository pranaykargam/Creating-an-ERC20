// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol";
import {OurToken} from "../src/OurToken.sol";

contract OurTokenTest is Test {
    OurToken public ourToken;
    DeployOurToken public deployer;

    address sunny = makeAddr("sunny");
    address pranay = makeAddr("pranay");

    uint256 public constant INITIAL_SUPPLY = 1000 ether;

    function setUp() public {
        deployer = new DeployOurToken();

      
        ourToken = deployer.runLocal();

        ourToken.transfer(sunny, INITIAL_SUPPLY);
    }

    function testSunnyBalance() public view {
        uint256 sunnyBalance = ourToken.balanceOf(sunny);
        assertEq(sunnyBalance, INITIAL_SUPPLY);
    }

    function testAllowanceWorks() public {
        uint256 amount = 100 ether;
        address spender = address(0x123);

        vm.prank(sunny);
        ourToken.approve(spender, amount);

        assertEq(ourToken.allowance(sunny, spender), amount);
        assertEq(ourToken.balanceOf(sunny), INITIAL_SUPPLY);
    }
}
