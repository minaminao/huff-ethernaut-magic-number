// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract SolverTest is Test {
    function test() public {
        Solver solver = Solver(HuffDeployer.deploy("Solver"));

        bytes32 magic = solver.whatIsTheMeaningOfLife();
        assertEq(
            magic,
            0x000000000000000000000000000000000000000000000000000000000000002a
        );

        uint256 size = address(solver).code.length;
        assertTrue(size <= 10);
    }
}

interface Solver {
    function whatIsTheMeaningOfLife() external returns (bytes32);
}
