//
//  CollectionViewController.swift
//  Table_CollectionView
//
//  Created by JOEYCO-0072PK on 28/12/2021.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var Collection: UICollectionView!

    let name : [String] = ["Item 1","Item 2","Item 3","Item 1","Item 2","Item 3","Item 1","Item 2","Item 3","Item 1","Item 2","Item 3","Item 1","Item 2","Item 3","Item 1","Item 2","Item 3"]
    let image : [String] = ["icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2"]




    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
}


extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let col = Collection.dequeueReusableCell(withReuseIdentifier: "col", for: indexPath) as! MyCollectionViewCell
        col.Image.image = UIImage(named: image[indexPath.row])
        col.Label.text = name[indexPath.row]
        col.layer.cornerRadius = 10
        col.layer.borderWidth = 1
        col.layer.borderColor = UIColor.gray.cgColor
        col.layer.shadowRadius = 20
        col.layer.shadowColor = UIColor.black.cgColor
        col.layer.shadowOffset = CGSize(width: 3, height: 3)
        col.layer.shadowOpacity = 0.2
        col.layer.shadowRadius = 2.0
        
        
        return col
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-10)/2
        return CGSize(width: size, height: size)
    }
    
    
}
