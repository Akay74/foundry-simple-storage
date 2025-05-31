// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // Start broadcasting transactions
        vm.startBroadcast();
        
        // Deploy the contract
        SimpleStorage simpleStorage = new SimpleStorage();
        
        // Optional: Initialize with some data
        simpleStorage.addPerson("Alice", 42);
        simpleStorage.addPerson("Bob", 7);
        
        // Stop broadcasting
        vm.stopBroadcast();
        
        // Return the deployed contract for potential further interaction
        return simpleStorage;
    }
}