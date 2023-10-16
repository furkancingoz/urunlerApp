//
//  ViewController.swift
//  urunlerApp
//
//  Created by Furkan Cingöz on 16.10.2023.
//

import UIKit

class Anasayfa: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var urunListesi = [Urunler]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let u1 = Urunler(idInput: 1, adInput: "Macbook Pro 14'", resimInput: "bilgisayar", fiyatInput: 43000)
        let u2 = Urunler(idInput: 2, adInput: "Rayban Club Master", resimInput: "gozluk", fiyatInput: 2500)
        let u3 = Urunler(idInput: 3, adInput: "Sony ZX Series", resimInput: "kulaklik", fiyatInput: 4000)
        let u4 = Urunler(idInput: 4, adInput: "Gio Armani", resimInput: "parfum", fiyatInput: 2000)
        let u5 = Urunler(idInput: 5, adInput: "Casio X Series", resimInput: "saat", fiyatInput: 70000)
        let u6 = Urunler(idInput: 6, adInput: "Dyson V8", resimInput: "supurge", fiyatInput: 18000)
        let u7 = Urunler(idInput: 7, adInput: "iPhone 13", resimInput: "telefon", fiyatInput: 32000)
        urunListesi.append(u1)
        urunListesi.append(u2)
        urunListesi.append(u3)
        urunListesi.append(u4)
        urunListesi.append(u5)
        urunListesi.append(u6)
        urunListesi.append(u7)
        
    }


}


extension Anasayfa : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urunListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let urun = urunListesi[indexPath.row]
        let hucre = tableView.dequeueReusableCell(withIdentifier: "urunlerHucre") as! UrunlerHucre
        hucre.imageViewUrun.image = UIImage(named: urun.resim!)
        hucre.urunAdLabel.text = urun.ad
        hucre.urunFiyatLabel.text = "\(urun.fiyat!) ₺"
        
        
        return hucre
    }
}
