//
//  hoge.swift
//  Ecommerce Home
//
//  Created by hikaru nakamata on 2018/11/11.
//  Copyright © 2018 hikaru nakamata. All rights reserved.
//

import UIKit

class hope: NSObject {
    let userDefaults = UserDefaults.standard
    let name:String
    let id:String
    let flag:String
    
//    userDefaults.register(defaults: ["ProductName" : "採れたて野菜","Detail" : "今朝うちの畑で採れました。","Price" : "800円"])
    
    init(name:String,texts:String,price:String) {
        self.name = name
        self.id = texts
        self.flag = price
        
        userDefaults.set(["ProductName" : self.name,"Detail" : id,"Price" : flag], forKey: "Products")
    }

        
    

}
