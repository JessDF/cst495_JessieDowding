//
//  FlickrPhotoCellCollectionViewCell.swift
//  demo2UICollectionView
//
//  Created by Jessie Dowding on 10/14/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import UIKit
import Foundation

class FlickrPhotoCellCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

    // MARK: - Properties
    override var isSelected: Bool {
        didSet {
            imageView.layer.borderWidth = isSelected ? 10 : 0
        }
    }
    
    //MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.borderColor = themeColor.cgColor
        isSelected = false
    }
}
