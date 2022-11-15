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

    // Fonksiyon Görünürlükleri

    // - `public`: Herhangi bir akıllı kontrat ve hesap çağırabilir. 
    // - `private`: Yalnızca fonksiyonun tanımlı olduğu kontratın içerisinde çağırılabilir. 
    // - `internal`: Tanımlı olduğu kontrat ile birlikte miras olarak alındığı kontrat tarafından da çağırılabilir., 
    // - `external`: Yalnızca diğer akıllı kontratlar ve hesaplar tarafından çağıralabilir. 

    function add(uint a, uint b) public pure returns(uint) {
        return a + b;
    }

    function add2(uint c, uint d) public pure returns(uint) {
        return add(c, d);
    }

    // ---PUBLİC--- 
    // Üstteki add fonksiyonunda yapılan a+ b işlemine add2 fonksiyonundan parametre gönderip erişerek işlem yaptık. Bu fonksiyon "public" olması nedeniyle bu fonksiyona erişip kullanabildik.

    function publicKeyword() public pure returns(string memory) {
        return "Bu bir public fonksiyondur.";
    }

    function callPublicKeyword() public pure returns(string memory) {
        return publicKeyword();
    }

    // Üstteki fonksiyonlar da public olduğu için bir fonksyondaki string ifadeyi diğer fonksiyonlar callback yaparak okumuş olduk.

    // --- PRİVATE ---

    function privetKeyword() private pure returns(string memory) {
        return "Bu bir private fonksiyondur.";
    }

    // Burada üstteki fonksiyon private olduğu için compile ettiğimizde bu fonksiyona ulaşamayız. ve okuyamayız. Bu fonksiyona sadece buradaki contract içinde ulaşılabilir.

    function callPrivetKeyword() public pure returns(string memory) {
        return privetKeyword();
    }

    // Ancak üstteki fonksiyon gibi public bir foknsiyon yazıp içinde private olan fonksiyonu çağırırsak bu fonksiyon (callPrivetKeyword()) public olduğu için privetKeyword() fonksiyonunu okuma yapabiliriz.


    // --- INTERNAL ---

    function internalKeyword() internal pure returns(string memory) {
        return "Bu bir internal fonksiyondur.";
    }

    // Burada üstteki fonksiyon internal olduğu için compile ettiğimizde bu fonksiyona ulaşamayız. ve okuyamayız. Bu fonksiyona sadece buradaki contract içinde ulaşılabilir.

    function callInternalKeyword() public pure returns(string memory) {
        return internalKeyword();
    }

    // Ancak üstteki fonksiyon gibi public bir foksiyon yazıp içinde internal olan fonksiyonu çağırırsak bu fonksiyon (callInternalKeyword()) public olduğu için internalKeyword() fonksiyonunu okuma yapabiliriz. Private ile çok farkı yok gibi görünüyor ancak internal'ın mantığı Tanımlı olduğu kontrat ile birlikte miras olarak alındığı kontrat tarafından da çağırılabilir olmasıdır.

    // --- EXTERNAL ---

    function externalKeyword() external pure returns(string memory) {
        return "Bu bir external fonksiyondur.";
    }

    // Burada üstteki fonksiyon external olduğu için compile ettiğimizde bu fonksiyona dışarıdan parametre göndererek direk ulaşabiliriz. Ancak alttaki gibi contract içinde kullanamayız. Altta contract içinde başka bir fonksiyon ile okuma yapmaya çalıştık ancak aynı contract içinde erişilemediği için hata verir.

    function callExternalKeyword() public pure returns(string memory) {
        return externalKeyword();
    }
}