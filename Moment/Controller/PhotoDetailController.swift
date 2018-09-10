//
//  PhotoDetailController.swift
//  Moment
//
//  Created by Valentin SCHERER on 07/09/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class PhotoDetailController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var photoImage: ImageCoinArrondi!
    @IBOutlet weak var nomLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var retourBouton: UIButton!
    @IBOutlet weak var largeurContrainte: NSLayoutConstraint!
    @IBOutlet weak var hauteurContrainte: NSLayoutConstraint!
    var photo: Photo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let nav = navigationController {
        if navigationController != nil {
            retourBouton.isHidden = true
        } else {
            //Pas utile
            retourBouton.isHidden = false
        }
        if photo != nil {
            nomLabel.text = "De: " + photo!.nom
            descLabel.text = photo!.desc
            photoImage.image = photo!.image
            let taille = Ratio.obtenir.taille(view.frame.width - 40, image: photo!.image)
            largeurContrainte.constant = taille.width
            hauteurContrainte.constant = taille.height
        }

    }

    @IBAction func retourAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
