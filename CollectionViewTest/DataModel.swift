//
//  DataModel.swift
//  CollectionViewTest
//
//  Created by Tran Khanh Trung on 11/6/17.
//  Copyright © 2017 KhanhTrung. All rights reserved.
//

import Foundation
import UIKit

class Item {
    var image: UIImage
    var name: String
    
    
    init(name: String, image: UIImage) {
        self.image = image
        self.name = name
    }
    
    static func createItems() -> [Item] {
        return [Item(name: "ic_alarm", image: #imageLiteral(resourceName: "ic_alarm")),
                Item(name: "ic_3d_rotation", image:#imageLiteral(resourceName: "ic_3d_rotation")),
                Item(name: "ic_accessibility", image:#imageLiteral(resourceName: "ic_accessibility")),
                Item(name: "ic_account_balance", image:#imageLiteral(resourceName: "ic_account_balance")),
                Item(name: "ic_add_shopping_cart", image:#imageLiteral(resourceName: "ic_add_shopping_cart"))]
 
    }

}
