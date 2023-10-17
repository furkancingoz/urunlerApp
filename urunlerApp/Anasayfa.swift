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
        
        //ürünleri tanımlama
        let u1 = Urunler(idInput: 1, adInput: "Macbook Pro 14'", resimInput: "bilgisayar", fiyatInput: 43000)
        let u2 = Urunler(idInput: 2, adInput: "Rayban Club Master", resimInput: "gozluk", fiyatInput: 2500)
        let u3 = Urunler(idInput: 3, adInput: "Sony ZX Series", resimInput: "kulaklik", fiyatInput: 4000)
        let u4 = Urunler(idInput: 4, adInput: "Gio Armani", resimInput: "parfum", fiyatInput: 2000)
        let u5 = Urunler(idInput: 5, adInput: "Casio X Series", resimInput: "saat", fiyatInput: 70000)
        let u6 = Urunler(idInput: 6, adInput: "Dyson V8", resimInput: "supurge", fiyatInput: 18000)
        let u7 = Urunler(idInput: 7, adInput: "iPhone 13", resimInput: "telefon", fiyatInput: 32000)
        //ürünlerlistesine ürünleri ekleme
        urunListesi.append(u1)
        urunListesi.append(u2)
        urunListesi.append(u3)
        urunListesi.append(u4)
        urunListesi.append(u5)
        urunListesi.append(u6)
        urunListesi.append(u7)
        tableView.separatorColor = UIColor(white: 0.95, alpha: 1)
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

        hucre.backgroundColor = UIColor(white: 0.95, alpha: 1) // hücrenin arka plan rengini ayarlama
        hucre.hucreView.layer.cornerRadius = 20
        hucre.selectionStyle = .none //seçime tıklandığında işaretlemeyi kaldırma
        return hucre
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let urun = urunListesi[indexPath.row]
        
        let delAction = UIContextualAction(style: .destructive, title: "Sil") {contexualAction,view,bool in
            print("\(urun.ad!) silindi")
        }
        let editAction = UIContextualAction(style: .normal, title: "Düzenle") {contexualAction,view,bool in
            print("\(urun.ad!) düzenlendi")
        }
     return UISwipeActionsConfiguration(actions: [delAction,editAction])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let urun = urunListesi[indexPath.row]
        performSegue(withIdentifier: "toDetayVC", sender: urun) //burda urunu seçmemiz önemli sender geçiş sırasında taşınacak veriyi temsil ediyor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetayVC" {
            if let urun = sender as? Urunler {
                let gidilecekVC = segue.destination as! DetaySayfa
                gidilecekVC.urun = urun
            }
        }
    }
}
