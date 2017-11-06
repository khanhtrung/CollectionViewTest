//
//  TestCollectionViewSectionHeader.swift
//  CollectionViewTest
//
//  Created by Tran Khanh Trung on 11/6/17.
//  Copyright © 2017 KhanhTrung. All rights reserved.
//

import UIKit
@IBDesignable
class TestCollectionViewSectionHeader: UICollectionReusableView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBOutlet weak var sectionNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func config(sectionName: String) {
        sectionNameLabel.text = sectionName
    }
    
}
