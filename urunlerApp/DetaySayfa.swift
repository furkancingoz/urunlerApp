//
//  DetaySayfa.swift
//  urunlerApp
//
//  Created by Furkan Cingöz on 16.10.2023.
//

import UIKit

class DetaySayfa: UIViewController {
    @IBOutlet weak var urunImageView: UIImageView!
    @IBOutlet weak var fiyatLabel: UILabel!
    
    var urun:Urunler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let u = urun {
            self.navigationItem.title = u.ad
            urunImageView.image = UIImage(named: u.resim!)
            fiyatLabel.text = "\(u.fiyat!) ₺"
        }

        
    }
    
    @IBAction func sepeteEkleButton(_ sender: Any) {
        if let u = urun {
            print("detay sayfa \(u.ad!) sepete eklendi")
        }
    }
    
  

}
