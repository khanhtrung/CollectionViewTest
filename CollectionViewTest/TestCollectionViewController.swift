//
//  TestCollectionViewController.swift
//  CollectionViewTest
//
//  Created by Tran Khanh Trung on 11/6/17.
//  Copyright © 2017 KhanhTrung. All rights reserved.
//

import UIKit

private let cellID = "TestCollectionViewCell"
private let sectionHeaderID = "TestCollectionViewSectionHeader"

class TestCollectionViewController: UIViewController {

    var items: [Item] = [Item(name: "ic_alarm", image: #imageLiteral(resourceName: "ic_alarm"))]
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

         //self.clearsSelectionOnViewWillAppear = true
        collectionView.dataSource = self
        collectionView.delegate = self

        // Register cell classes
        //collectionView.register(TestCollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        let cellNib = UINib(nibName: cellID, bundle: Bundle.main)
        collectionView.register(cellNib, forCellWithReuseIdentifier: cellID)
        
        items = Item.createItems()
    }
}


    // MARK: UICollectionViewDataSource
extension TestCollectionViewController: UICollectionViewDataSource {
        
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let testCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! TestCollectionViewCell
    
        // Configure the cell
        testCollectionViewCell.config(image: items[indexPath.item].image, name: items[indexPath.item].name)
    
        return testCollectionViewCell
    }
}

    // MARK: UICollectionViewDelegate
extension TestCollectionViewController : UICollectionViewDelegate {
     /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // Uncomment this method to specify if the specified item should be selected
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
   */

}

