//
//  ProductsCollection.swift
//  Ecommerce Home
//
//  Created by hikaru nakamata on 2018/11/07.
//  Copyright © 2018 hikaru nakamata. All rights reserved.
//

import UIKit

class ProductsCollection: UICollectionView,UICollectionViewDataSource,UICollectionViewDelegate  {
    

    
    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath)
        return cell
    }
}
