// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {BingBongToken} from "../src/BingBongToken.sol";

contract BingBongTokenScript is Script {
    /**
     * @dev Relevant source part starts here and spans across multiple lines
     */
    function setUp() public {
    }

    /**
     * @dev Main deployment script
     */
    function run() public {
        // Deploy
        vm.startBroadcast();
        BingBongToken bbt = new BingBongToken("Nguyen Huu Canh", "23520166", 8888);
        vm.stopBroadcast();

        // Verify + End
        console2.log('address:', address(bbt));
        console2.log('totalSupply:', bbt.totalSupply());
    }
}