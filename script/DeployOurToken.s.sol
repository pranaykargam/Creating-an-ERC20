// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {OurToken} from "../src/OurToken.sol";

contract DeployOurToken is Script {
    uint256 public constant INITIAL_SUPPLY = 1000 ether;
    uint256 private deployerKey;

    function run() external returns (OurToken) {
        // normal script for real networks
        if (block.chainid == 31337) {
            deployerKey = vm.envUint("DEFAULT_ANVIL_KEY");
        } else {
            deployerKey = vm.envUint("PRIVATE_KEY");
        }

        vm.startBroadcast(deployerKey);
        OurToken ot = new OurToken(INITIAL_SUPPLY);
        vm.stopBroadcast();
        return ot;
    }

    // TEST-ONLY deploy function: no broadcast
    function runLocal() public returns (OurToken) {
        OurToken ot = new OurToken(INITIAL_SUPPLY);
        ot.transfer(msg.sender, INITIAL_SUPPLY);
        return ot;
    }

}
