//
//  BrandsCollectionViewCell.swift
//  SwapifyApp
//
//  Created by Bilal on 11/5/21.
//

import UIKit

class BrandsCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Interface Components
    
    @IBOutlet weak var brandImage       : UIImageView!
    @IBOutlet weak var brandTitle       : UILabel!
    @IBOutlet weak var balanceAmount    : UILabel!
    @IBOutlet weak var offerAmount      : UILabel!
    @IBOutlet weak var ratingImage      : UIImageView!

    
    // MARK: - Class Variables
    
    
    // MARK: - Lifecycle Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Methods
    
}
