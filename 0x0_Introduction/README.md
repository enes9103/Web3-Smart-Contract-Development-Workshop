# Introduction

Bu dersimizde Solidity ve Ethereum'a dair basit özelliklerden bahsedip Metamask cüzdanı kurduk. Ardından ise bir akıllı kontrat örneği üzerinden Remix IDE kullanmayı öğrendik.

# Resources

[Web3 Uygulamaları Makalesi](https://blog.ibby.dev/introduction-to-web3-development)

[How Does Ethereum Work, Anyway?](https://www.preethikasireddy.com/post/how-does-ethereum-work-anyway)

[Javascript Eğitimimiz](https://www.youtube.com/playlist?list=PLby2HXktGwN5WnvvI3jm0xSaac79JyRpT)

[Kaynak Listemiz](https://twitter.com/ITUblockchain/status/1418527525010132993)

[Metamask](https://www.metamask.io)

[Metamask Ağ Ekleme](https://www.chainlist.org)

[Metamask - Avalanche](https://support.avax.network/en/articles/4626956-how-do-i-set-up-metamask-on-avalanche)

[Solidity Docs](https://docs.soliditylang.org/en/latest/)

[Remix IDE](https://www.remix.ethereum.org)

[Names Kontrat Örneği - Rinkeby @ 0x43557ed01dFb3Db167aEA5c0f4981847E6DD64fa](./Names.sol)

Notlar:
- Metamask'a farklı ağları hızlıca eklemek için chainlist.org sitesi kullanılabilir. Metamask cüzdan siteye bağlandıktan sorna istenen ağ bulunup eklenmeli.
- Metamask'tan test ağları gösterimini açıp ardından örn: rinkeby gibi test ağlarına bakiye göndermemiz gerekiyor. Bunun için https://faucet.rinkeby.io/ sitesi kullanılabilir.
- Metamask cüzdanımıza test ethereum almak için test ağlarının (rinkeby goerly sepolia vs) twetter koşullarını sağlayıp cüzdanımıza alıyoruz.
solidity yazmak için Remix ıde VSCode gibi ideler kullanılabilir.
- Yazıp hazırladığımız solidity kodlarını solidity compiler ile compile edip ERM nin anlayacağı dile çeviriyoruz. [Remix IDE Solidity Compiler](remix ıde solidity compiler.png)
- ERM (Ethereum Sanal Makinası)'i Ethereum blockchain işletim sistemi olarak düşünebiliriz.
- ERM solidity dilini anlamadığı için Losidity compiler ile compile ediyoruz. Ardından compile edilmiş Bytecode'u Ethereum sanal makinası ile paylaşarak işlem gerçekleştiriyoruz.

- Remix IDE Solidity Compiler alt kısımda ihtiyacımız olan ABI kısmı olacak.  Buradaki veri tiplerine erişim sağlayacağız. ABI detayında contract lara ait veri tipi parametreler vs gibi bilgiler yer alır. Arayüzümüzden kolayca bu bilgiler ile etkileşebiliyoruz.
- Remix IDE'de en alttaki sekme ise deploy sekmesi.  Cüzdan adresimiz hangi hesaptan işlem yapacağımız gibi bilgiler var. Buradan hangi contract ta işlem yapıyorsak CONTRACH kısmından onu seçmeliyiz. Aynı şekilde deploy dropdown'ı içinden hangi parametreler gönderilmesi gerekiyorsa bunları buradan belirtmeliyiz. Buradan transact butonuna basarak contract'ımızın deploy edildiğini görebiliriz.
- Hazırladığımız contract'ı gerçek ağa yüklemek için remix'te environment'ı injected web3 (veya injected provider) yapıyoruz. Bu bizim metamask cüzdanımız anlamına gelir. buradan metamask cüzdanımızı idemize bağlıyoruz. 