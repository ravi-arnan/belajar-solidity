// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.28;

contract BasicSyntaxContract {
    uint storedData;

    //melakukan set data
    function set(uint x) public {
        storedData = x;
    }

    //menampilkan data
    function get() public view returns (uint) {
        return storedData;
    }
}

