<img align="right" width="150" height="150" top="100" src="./assets/blueprint.png">

# Huff - Ethernaut MagicNumber Solver

Huff: https://huff.sh/

Ethernaut MagicNumber: https://ethernaut.openzeppelin.com/level/0x200d3d9Ac7bFd556057224e7aEB4161fED5608D0

## Solver.huff
```js
#define macro MAIN() = takes (0) returns (0) {
    0x2a // PUSH1 42
    0x00 mstore // MSTORE 0x00
    0x20 0x00 return // RETURN 0x00 0x20
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
