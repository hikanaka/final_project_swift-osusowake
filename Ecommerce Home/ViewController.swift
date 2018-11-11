//
//  ViewController.swift
//  Ecommerce Home
//
//  Created by hikaru nakamata on 2018/11/07.
//  Copyright © 2018 hikaru nakamata. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController, UITextViewDelegate {


    
    override func viewDidLoad() {
//        UserDefaults.standard.removeObject(forKey: "Products")
        
        if (UserDefaults.standard.object(forKey: "Products") != nil) {
            let products = UserDefaults.standard.object(forKey:  "Products") as! [String:Any]
        }
        
//        productName.text = products["ProductName"] as! String
//        productPrice.text = products["Price"] as! String
//        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // textViewがUITextViewDelegateを使えるようにします。
        
        // TextViewに何か入力されたら動作します。
        func textViewDidChange(_ textView: UITextView) {
            // AppDelegateを呼び出して変数に格納します。
        
        // AppDelegateが持っている前回の内容を呼び出してTextViewに表示されるようにします。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        textView.text = appDelegate.lastText
        
        
    }


}

}

