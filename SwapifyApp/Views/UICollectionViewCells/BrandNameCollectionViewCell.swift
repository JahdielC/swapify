//
//  BrandNameCollectionViewCell.swift
//  SwapifyApp
//
//  Created by Bilal on 11/9/21.
//

import UIKit

class BrandNameCollectionViewCell: UICollectionViewCell {

    // MARK: - Interface Components

    @IBOutlet weak var brandImage : UIImageView!
    @IBOutlet weak var brandName  : UILabel!
    @IBOutlet weak var brandCards : UILabel!
    @IBOutlet weak var brandPrice : UILabel!
    @IBOutlet weak var brandCategory : UILabel!

    
    // MARK: - Class Variables
    
    
    // MARK: - Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
