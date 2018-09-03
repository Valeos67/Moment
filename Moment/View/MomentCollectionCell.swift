//
//  MomentCollectionCell.swift
//  Moment
//
//  Created by Valentin SCHERER on 03/09/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class MomentCollectionCell: UICollectionViewCell {

    @IBOutlet weak var imageViewCell: ImageCoinArrondi!
    
    var photo: Photo!
    
    func mep(_ photo: Photo) {
        self.photo = photo
        
        imageViewCell.image = self.photo.image
        
    }

}
