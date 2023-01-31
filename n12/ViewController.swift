//
//  ViewController.swift
//  n12
//
//  Created by ahmet kardesseven on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var actressList = ["7","4","5","6","7","6","4","5","6"]
    
    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actressList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MyCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImage.image = UIImage(named: actressList[indexPath.row])
      
        return cell
        
        
    }
    
    
    
    
    
    
}

