//
//  Photo.swift
//  Moment
//
//  Created by Valentin SCHERER on 03/09/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class Photo {
//    met en place les parametres pour chaque photo
    private var _image: UIImage
    private var _nom: String
    private var _desc: String
    
    var image: UIImage {
        return _image
    }
    
    var nom: String {
        return _nom
    }
    
    var desc: String {
        return _desc
    }
    
    init(image: UIImage, nom: String, desc: String) {
        self._image = image
        self._nom = nom
        self._desc = desc
        
    }
    
}
