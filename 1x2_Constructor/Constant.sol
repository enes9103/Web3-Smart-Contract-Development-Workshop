// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constants {
    
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;

}

// `constant`: Değeri değiştirilemeyen değişkenlerdir. Atanan değer kontrat deploy edildikten sonra bir daha değiştirilemez. Başka bir fonksiyon yazıp yine de müdahale edilemez. Gaz maaliyetinden tasarruf sağlayabilir.