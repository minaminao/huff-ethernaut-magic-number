// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Script.sol";

interface MagicNum {
    function setSolver(address) external;
}

contract Deploy is Script {
    function run(address instanceAddress) public {
        address solverAddress = HuffDeployer.broadcast("Solver");
        vm.broadcast();
        MagicNum(instanceAddress).setSolver(solverAddress);
    }

    function runShortest(address instanceAddress) public {
        address solverAddress = HuffDeployer.broadcast("SolverShortest");
        vm.broadcast();
        MagicNum(instanceAddress).setSolver(solverAddress);
    }
}
