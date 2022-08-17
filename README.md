<img align="right" width="150" height="150" top="100" src="./assets/blueprint.png">

# Huff - Ethernaut MagicNumber Solver

Huff: https://huff.sh/

Ethernaut MagicNumber: https://ethernaut.openzeppelin.com/level/0x200d3d9Ac7bFd556057224e7aEB4161fED5608D0

## Solver.huff (10 bytes)
```js
#define macro MAIN() = takes (0) returns (0) {
    0x2a 0x00 mstore // mstore(offset, value)
    0x20 0x00 return // return(offset, size)
}
```

## SolverShortest.huff (7 bytes)
```js
#define macro MAIN() = takes (0) returns (0) {
    0x2a returndatasize mstore  // mstore(offset, value)
    msize returndatasize return // return(offset, size)
}
```

## Test
```sh
forge test -vvvv
```

## Deploy
```sh
forge script Deploy -vvvv --private-key $PRIVATE_KEY --fork-url $RPC_RINKEBY --broadcast --sig "run(address)" <INSTANCE ADDRESS>
```
