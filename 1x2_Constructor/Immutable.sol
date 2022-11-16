// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Immutable {
    
    address public immutable MY_ADDRESS;
    uint public immutable MY_LUCKYNUMBER;

    constructor(uint _myNumber) {
        MY_ADDRESS = msg.sender;
        MY_LUCKYNUMBER = _myNumber;
    }
// `immutable`: Değeri değiştirilemeyen değişkenlerdir. Constant'tan farkı immutable ile işaretlenmiş değişkenin değerinin constructor ile başlangıçta değiştirilebiliyor oluşudur.

    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }

//Buradaki işlemde ise bir owner değişkeninin ilk çalışmadan sonra sabit değiştirilemez olmasını istiyoruz. immutable bir owner address değişkeni tanımlıyoruz. ce constructor ile bir defa çalıştığı için bu işlemi deploy edem sender yapan adresi owner'a tanımlamış olduk. Daha sonra bu owner adresi değiştirilemez.
}



