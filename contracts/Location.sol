pragma solidity >=0.6.0 <0.8.28;

//lokasi data
//gas

//storage
//memory

//calldata
//stack

contract Locations {

    /*uint stateVar = 10; //storage
    function iniFungsi() public returns (uint) {
        uint localVar = 20; //memory

        localVar = stateVar

        stateVar = 40; //tidak berpengaruh
        return localVar;
    }*/

    function iniFungsi() public pure returns(uint[] memory, uint[] memory) {
        uint[] memory localMemoryArray1 = new uint[](3);

        localMemoryArray1[0] = 4;
        localMemoryArray1[1] = 5;
        localMemoryArray1[2] = 6;

        uint[] memory localMemoryArray2 = localMemoryArray1;
        localMemoryArray1[0] = 10;

        return (localMemoryArray1, localMemoryArray2);
    }

    

    function iniValue() public pure returns(uint) {
        uint localVar1 = 10;
        uint localVar2 = 20;

        localVar1 = localVar2;
        localVar2 = 40;

        return localVar1;
    }

    /*uint public stateVariable1 = 10;
    uint stateVariable2 = 20;

    function iniFungsi() public returns (uint) {
        stateVariable1 = stateVariable2;
        stateVariable2 = 30;

        return stateVariable1; //20
    }*/
}




/*contract DataLocation {
    //storage
    uint stateStorage;

    //uint storage stateStorageSaya; //error

    //memory
    function kalkulasi(uint a, uint b) public pure returns (uint hasil) {
        return a + b
    }

}

contract Locations {
    //storage
    bool isReady;

    function iniFungsi() public {
        //values
        bool isOke;
        uint number;
        address akun;
    }
}*/
