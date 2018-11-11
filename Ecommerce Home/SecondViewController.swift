//
//  SecondViewController.swift
//  Ecommerce Home
//
//  Created by hikaru nakamata on 2018/11/10.
//  Copyright © 2018 hikaru nakamata. All rights reserved.
//

import UIKit
import SDWebImage


class SecondViewController: UIViewController {


    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productName: UITextField!
    @IBOutlet var productDetail: UITextView!
    @IBOutlet var productPrice: UITextField!
    
    var productTable:hope!

    override func viewDidLoad() {
        super.viewDidLoad()

       let path = Bundle.main.path(forResource: "sample1", ofType: ".jpg")
       let url = "https://i1.wp.com/keepfresh.com.au/wp-content/uploads/2014/09/FruitVeg-heart.png?zoom=2&w=1080&ssl=1"
       print(path)
        
    //productImage.sd_setImage(with: URL(string: url))
      productImage.image = UIImage(contentsOfFile: path!)
       productImage.contentMode = .scaleAspectFill
        // Do any additional setup after loading the view.
    }
    

    @IBAction func action(_ sender: Any) {
        productTable = hope(name:productName.text!, texts:productDetail.text , price:productPrice.text!)
    
        print(UserDefaults.standard.object(forKey:  "Products"))
        navigationController?.popViewController(animated: true)
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
