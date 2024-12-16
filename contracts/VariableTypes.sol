pragma solidity >=0.6.0 <0.8.28;

contract VariableTypes {
    //state variable
    uint sum;

    //local variable
    function tambah(uint num1, uint num2) public {
        //local
        uint temp = num1 + num2;

        sum = temp;
    }

    function getHasil() public view returns(uint){
        return sum;
    }

}

contract Types {
    bool public valid = true;

    int32 public angkaku = -32;
    uint public angkamu = 1;

    uint32 public ui_data = 5_01_2021;

    uint8 result;

    function tambah() public {
        //result = 3/5;
        result = 3.5 + 1.5;
    }

    //bytes

    bytes1 public hurut = "A";
    string public kalimat = "ini adalah data string";

    //enum

}

contract EnumSaya {
    enum Jobs {Programmer, Analis, Security}

    function getEnum() public pure returns(Jobs) {
        return Jobs.Analis;
    }
}

