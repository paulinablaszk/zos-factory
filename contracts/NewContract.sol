pragma solidity ^0.4.24;

import "zos-lib/contracts/Initializable.sol";

contract NewContract is Initializable {

    uint256 public x;

    event NewContractCreated(
        uint256 x_number,
        address contractAddress
    );

    function initialize() initializer public {
        x = 10;
        emit NewContractCreated(x, address(this));
    }

    function setNumber(uint256 _x) public returns (bool) {
        x = _x;
    }

}