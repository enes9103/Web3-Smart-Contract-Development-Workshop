// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables {

    // Yorum satırı
    /* 
        Çoklu Yorum Satırı
    */

    // Not: Satır bitişlerinde noktalı virgül ";" koymak gerekiyor. koymama durumunda compile edildiğinde hata veriyor. JS teki gibi opsiyonel değil.

    //! 1. Fixed-Size Types

    bool isTrue = true; // varsayılan: false
    
    int256 number = 12; // -2^256 to 2^256 - 1 
    // sadece integer ile tanımlamada default değeri 256'dır. İstenen tüm boyutlarda tanımlanabilir.

    uint number2 = 10; // 0 to 2^256 - 1

    address addresss; // 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 - 20 byte

    bytes32 data; // bytes1 => bytes32

    //! 2. Dynamic-Size Types

    string name; // string name2 = "string value"

    bytes datas; // bytes larda bir değer belirtilmezse dinamik değişken olmuş olur. örn: bytes name3 = "test bytes value"

    uint[] numbers; // [1, 2, 3, 4, 5]    // array  örnek: uint[] array = [1, 2, 3, 4, 5]

    mapping(uint => uint) dictionary;       // mapping solidity de built in function değil değişken türüdür. örnek kullanım: mapping(uint => string) list;

    // Örnek kullanım: mapping(uint => address) list; bu mapping variable 'ındaki uint typeları address değişkeni tutsun anlamına geliyor.
    // mesela; list[4] = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;  burada bu listedeki 4. index'te bu adresi tut demiş olduk.

    //! 3. User Defined Value Types

    struct Human {
        uint ID;
        string name;
        string surname;
        uint age;
        address myAdress;
    }

    // Yukarıda ki gibi bir değişken tanımladıktan sonra Human değişkenine alttaki gibi atama yapabiliriz.
    /*
    Human person1;
    person1.ID = 564656544326;
    person1.name = 'Enes';
    person1.surname = 'UNLU';
    person1.age = '30';
    person1.myAdress = 0x......;
    */

//    Yine buradaki örnekte örneğin mapping içinde Human değişkenini tutabiliriz. örn: mapping(uint => Human) list2;
//    şeklinde tanımlama yaparak listedeki her bir indeks numarasında birer Human değişkeni tutacağım demiş oluruz.

    enum trafficLights {
        RED,
        YELLOW,
        GREEN
    } 
// Yukarıdaki örnekte sadece enum içinde belirtilen değişkenlerden oluşması durumunda bu şekilde tanımlama yapılır.
// örnek kullanım. trafficLights.GREEN;


    //! --------- operators

    //. ! (logical negation)
    // && (logical conjunction, “and”)
    // || (logical disjunction, “or”)
    // == (equality) 
    //. != (inequality) 


    // ether birimleri

    // 1 wei = 1
    // 1 gwei = 10^9
    // 1 ether = 10^18

    // zaman birimleri 

    // 1 == 1 seconds
    // 1 minutes == 60 seconds
    // 1 hours == 60 minutes
    // 1 days == 24 hours
    // 1 weeks == 7 days


    // State Variables

    string public bestClub = "itu blockchain";     
    // public (modifier) yazılması bu değişkene herkes müdahale edebilir anlamında kullanıyoruz.
    // Bu değişkenler state variable olduğu için contract yani function içinde tanımlanır. 

    // örneğin:
    contract variables {
        string public bestClub = "itu blockchain";

        function show() public view returns(string memory){    // (string memory) diyerek string döndüreceğimizi söyledik.
            return bestClub                                   // burada direk stateteki veriyi çektiğimiz için 103. satırda tanımlanan state variable'a ulaşabiliryoruz. Buradaki bestClub'da hem function ile hem de yukarıda state olarak tanımladığımız için state variable olarak ulaşabiliriz.
        }

        function show1() public pure returns(uint){    // (uint) diyerek integer döndüreceğimizi söyledik.
            uint number = 17;
            return number;                                   // burada direk function içinde tanımladığımız değişkene dışarıdan ulaşamayız. Veya başka bir functiın dan number değişkenini return edemeyiz. contract içinde tanımladığımıza ulaşabiliriz. yukarıdaki show örneğindeki gibi. bestClub 'a func içinde ulaşabildik. Çünkü globalde tanımlandı.
        }
    }

    uint256 public founded = 2018;
    bool private rich = false;

    function add(int256 _number) public pure returns (int256) {
        // Local Variables
        int256 minus = -1;
        int256 lucky = 33;

        return _number + minus + lucky;
    }

    //Global Variables

    // block.difficulty (uint)	Current block difficulty
    // block.gaslimit (uint)	Current block gaslimit
    // block.number (uint)	Current block number
    // block.timestamp (uint)	Current block timestamp as seconds since unix epoch
    // msg.data (bytes calldata)	Complete calldata
    // msg.sender (address payable)
    
}