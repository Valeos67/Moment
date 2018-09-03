//
//  MomentTableCell.swift
//  Moment
//
//  Created by Valentin SCHERER on 03/09/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class MomentTableCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: ImageCoinArrondi!
    @IBOutlet weak var nomLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    var photo: Photo!
    
    func mep(photo:Photo) {
        self.photo = photo
        
        
        imageViewCell.image = self.photo.image
        nomLabel.text = "De: " + self.photo.nom
        descLabel.text = self.photo.desc
    }
    
    
    
}
