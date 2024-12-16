pragma solidity >=0.8.2 <0.9.0;

contract Structure {

    //structs

    struct Buku {
        string judul;
        string author;
        uint id;
        bool isReady;
    }

    Buku buku1;

    function tambahBuku() public {
        buku1 = Buku("Pemrograman Blockchain", "Ipung", 1, true);
    }

    function lihatBuku() public view returns (string memory, string memory, uint, bool) {
        return (buku1.judul, buku1.author, buku1.id, buku1.isReady);
    }

    Buku buku2 = Buku("Membuat Daaps", "Andri", 13, false);

    function lihatBukuDua() public view returns(string memory, string memory) {
        return (buku2.judul, buku2.author);
    }

    Buku[] public buku3;

    function newBook(string memory judul, string memory author, uint id, bool isReady) public {
        buku3.push(Buku(judul, author, id, isReady));
    }

    function infoBuku(uint _index) public view returns (string memory judul, string memory author) {
        Buku storage book = buku3[_index];
        return (book.judul, book.author);
    }
}