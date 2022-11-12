// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;  
// kodun hangi solidity versiyonu ile yazıldığını belirtir.Buradaki versiyorunu compile ederken kullanacağız. Compile kısmında seçilen compiler versiyoru buradaki versiyonla aynı yada daha yukarda olmalıdır.

import "@openzeppelin/contracts/access/Ownable.sol";

// contract fonksiyonunu oluşturuyoruz. Burada is Ownable ile inheritance yaparak Ownable.sol de (import ettiğimiz) yer alan erişilebilir fonksiyonlara erişebiliriz.
contract Names is Ownable {
    string public ownerName; // burada contract hangi parametreleri alıyorsa belirtiyoruz. public olması erişilebilir olduğunu gösterir
    string[] public names;
    int256 private luckyNumber; // buranın private olması sadece names contract içinden erişilebilir olduğunu gösterir. in256 ise solidity type ıdır. 2 üzeri 256 (- --> + arası) 

    constructor(string memory _ownerName, int256 _luckyNumber) {  
        ownerName = _ownerName; // constructorda yukarıda belirtilen parametre ve type lara göre girdi veriyoruz.
        names.push(_ownerName);
        luckyNumber = _luckyNumber;
    }

    //function lar aşağıdaki şekillerde tanımlanıyor.
    function addMyName(string memory _myName) public {
        names.push(_myName);
    }
    //Alttaki fonksiyonda view attribute bu fonksiyonun sadece veri okuma ,ç,n kullanılabileceğini ifade ediyor.
    function isAdded(string memory _name) public view returns (bool) {
        for (uint256 i = 0; i < names.length; i++) {
            if (
                keccak256(abi.encodePacked((_name))) ==
                keccak256(abi.encodePacked((names[i])))
            ) return true;
        }
        return false;
    }

    function getNames() public view returns (string[] memory) {
        return names;
    }

    function nameCount() public view returns (uint256) {
        return names.length;
    }

    function changeOwnersName(string memory _ownerName) public onlyOwner {
        ownerName = _ownerName;
    }
}
