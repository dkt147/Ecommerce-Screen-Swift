//
//  ViewController.swift
//  Table_CollectionView
//
//  Created by JOEYCO-0072PK on 28/12/2021.
//

import UIKit

class ReusbaleCollectionViewController:   UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    let name : [String] = ["Item 1","Item 2","Item 3","Item 1","Item 2","Item 3","Item 1","Item 2","Item 3","Item 1","Item 2","Item 3","Item 1","Item 2","Item 3","Item 1","Item 2","Item 3"]
    let image : [String] = ["icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2","icon2"]



    @IBOutlet weak var MyCollection: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.name.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell3 = MyCollection.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell
            
            cell3.Imgae.image = UIImage(named: image[indexPath.row])
            cell3.Label.text = name[indexPath.row]
            
                    return cell3
    
        
        }
    
//    var type : [String] = ["One","Two","Three"]
//    var time : [String] = ["12:00 PM","01:15 PM","12:15 PM"]
    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.MyCollection.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell3")
            
    }
        // Do any additional setup after loading the view.
    }



