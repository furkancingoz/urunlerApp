//
//  Urunler Data.swift
//  urunlerApp
//
//  Created by Furkan Cingöz on 16.10.2023.
//

import Foundation


class Urunler {
  
    
    var id:Int?
    var ad:String?
    var resim:String?
    var fiyat:Int?
    
    init(){
        
    }
    
     init(idInput: Int, adInput: String, resimInput: String, fiyatInput: Int) {
        self.id = idInput
        self.ad = adInput
        self.resim = resimInput
        self.fiyat = fiyatInput
    }
}
