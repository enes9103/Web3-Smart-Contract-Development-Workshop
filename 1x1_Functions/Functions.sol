// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Functions {

    uint luckyNumber = 7;

    // Yukarıdaki değişkeni tanımlarken uint public luckyNumber = 7; şeklinde public olarak tanımlarsak aşağıdaki görüntüleme fonksiyonuyla aynı işi yapmış olur. Yani kodu compile ettiğimizde hem bu public değişken hem de alttaki fonksiyon aynı sayıyı (7) döndürür. Sadece alttaki çıktı da fonksiyon ismi üsttekinde değişkenin ismi ile çıktı verir.

    function showNumber() public view returns(uint) {
        return luckyNumber;
    }

    function setNumber( uint _newNumber) public {
        luckyNumber = _newNumber;
    }

    // Üstteki fonksiyonda luckyNumber değişkenimizi değiştirerek manipüle eden bir fonksiyon yazdım. Burada fonksiyon içerisine parametre olarak gelecek değişkenin türünü ve bu yeni değişkenin adını setNumber( uint _newNumber) verdik.

    // Remix IDE de mavi butonlar herhangi bir işlem gerektirmeyen değişken tanımlama vs gibi işlemleri belirtirken, Turuncu butonlar bir değişiklik yapılan ve gas ücreti ödememiz gerektiğini ifade eder. Bu fonksiyona veri gönderip değişikliğii gerçekleştirdiğimizde account adresindeki ücretten gas fee bedelini düşer.

    function nothing() public pure returns(uint, bool, bool) {
        return (5, true, false);
    }

    // Yukarıda değişkenlerin typelarını belirttik. Bunlar için ayrıca değişken isimleri de belirtebiliriz. Bu fonksiyon tanımlamasını aşağıda görebiliriz.
    
    function nothing2() public pure returns(uint x, bool y, bool z) {
        x = 5;
        y = true;
        z = false;
    }

}