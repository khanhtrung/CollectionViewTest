//
//  HomeViewController.swift
//  CollectionViewTest
//
//  Created by Tran Khanh Trung on 11/6/17.
//  Copyright © 2017 KhanhTrung. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func goButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showCollectionView", sender: self)
    }

}

