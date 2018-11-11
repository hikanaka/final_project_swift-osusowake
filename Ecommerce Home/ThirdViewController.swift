//
//  ThirdViewController.swift
//  Ecommerce Home
//
//  Created by hikaru nakamata on 2018/11/10.
//  Copyright © 2018 hikaru nakamata. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var productText: UITextView!
    
    @IBOutlet var productName: UILabel!
    
    @IBOutlet var productPrice: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        let products = UserDefaults.standard.object(forKey:  "Products") as! [String:Any]
        productText.text = products["Detail"] as! String
        productName.text = products["ProductName"] as! String
        productPrice.text = products["Price"] as! String
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
