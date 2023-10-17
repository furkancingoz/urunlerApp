# Ürünler App
Kasım adalan bootcamp kursunda yapılan Ürünler uygulaması table view ve cell içerisinde 
görünümleri listeleyerek ürünlerin adını,görselini,fiyatını gösteren bir alışveriş uygulama demosu gibi düşünebilirsiniz 

![Simulator Screenshot - iPhone 11 - 2023-10-17 at 22 33 07](https://github.com/furkanwithcode/urunlerApp/assets/138152979/f0a6230e-b3ae-41c1-b1f9-b185c28f2426)


Ürünlere tıklandığında detaylar sayfasında yer alan bütün ürün adı fiyat ve görseli tekrar gösteriyoruz.
Detay sayfasında ürün adını label ile değil Navigation controllerın title kısmına yazıyoruz ve daha güzel bir görünüm elde ediyoruz.

Bu uygulamada ilk defa protocol kullandım ve 2 farklı yapının olduğunu öğrendim
Tetikleyen: ücremiz tetikleyen taraf oluyor
Protokolile birlikte bir fonksiyon oluşturduk ve daha sonra kullanacağımız Ana sayafa ekliyoruz.
Ana sayafada kullanmak için hücrenin içerisindeki butonumuzdan tetiklememiz lazım. Protokol ve indexPathi tanımlıyoruz dışarıdan eklenmesini istiyoruz.
Kullanan: Anasayfamız kullanan taraf oluyor 
Prtokole self diyerek ana sayfayı temsil ettik indexpathi aktardık değerini indexi almak için
