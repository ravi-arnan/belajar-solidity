pragma solidity >=0.6.0 <0.8.28;

contract HelloWorld {

    uint hasil;

    function cetakHello() public pure returns(string memory) {
        return 'Hello World';
    }

    function tambah(uint a, uint b) public {
        //local
        uint temp = a + b;

        hasil = temp;
    }

    function getHasil() public view returns(uint) {
        return hasil;
    }


}


contract PayableContract {
    uint receivedAmount;

    function receivedEther() payable public {
        receivedAmount = msg.value;
    }

    function getTotalAmount() public view returns (uint) {
        return receivedAmount;
    }


    //overload
    function tambah(uint a, uint b) public pure returns(uint hasil) {
        hasil = a + b;
    }

    function tambah(uint a, uint b, uint c) public pure returns(uint hasil) {
        hasil = a + b + c;
    }

}







