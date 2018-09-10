//
//  TabBarController.swift
//  Moment
//
//  Created by Valentin SCHERER on 02/09/2018.
//  Copyright © 2018 Valentin SCHERER. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        ajoute image et titre a la tabbar
        let collection = CollectionController()
        collection.title = "Collection View"
        collection.tabBarItem.image = #imageLiteral(resourceName: "collectionView")
        
        let table = UINavigationController(rootViewController: TableController())
        table.title = "Table View"
        table.tabBarItem.image = #imageLiteral(resourceName: "tableView")

        
//        ajoute collection et table a la tabbar
        viewControllers = [collection, table]
        
        
        
    }


}
