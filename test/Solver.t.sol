// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract SolverTest is Test {
    function test() public {
        Solver solver = Solver(HuffDeployer.deploy("Solver"));

        uint256 magic = solver.whatIsTheMeaningOfLife();
        assertEq(magic, 0x2a);

        uint256 size = address(solver).code.length;
        emit log_named_uint("Solver code length", size);
        assertTrue(size <= 10);
    }

    function testShortest() public {
        Solver solver = Solver(HuffDeployer.deploy("SolverShortest"));

        uint256 magic = solver.whatIsTheMeaningOfLife();
        assertEq(magic, 0x2a);

        uint256 size = address(solver).code.length;
        emit log_named_uint("Solver code length", size);
        assertTrue(size <= 10);
    }
}

interface Solver {
    function whatIsTheMeaningOfLife() external returns (uint32);
}
