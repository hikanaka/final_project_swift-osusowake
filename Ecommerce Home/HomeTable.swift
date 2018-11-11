//
//  HomeTable.swift
//  Ecommerce Home
//
//  Created by hikaru nakamata on 2018/11/07.
//  Copyright © 2018 hikaru nakamata. All rights reserved.
//

import UIKit

class HomeTable: UITableView,UITableViewDelegate,UITableViewDataSource {
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
       // if row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell") as! FeatureCell
            
            return cell

        
    }
}
    


