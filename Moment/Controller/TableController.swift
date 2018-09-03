//
//  TableController.swift
//  Moment
//
//  Created by Valentin SCHERER on 02/09/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class TableController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var photos = [Photo]()
    let cellID = "MomentTableCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: cellID, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellID)
        

photos = BaseDePhotos.charger.toutesLesPhotos()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let photo = photos[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? MomentTableCell {
            cell.mep(photo: photo)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    
}
