//
//  FavoriteViewController.swift
//  MallBTtracker
//
//  Created by Johan Hallén on 14/12/15.
//  Copyright © 2015 Johan Hallén. All rights reserved.
//

import UIKit

class FavoriteViewController: UITableViewController {

    var favorites:[Product] = favoritesData
    
    override func viewDidLoad() {
        tableView.reloadData()
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) ->Int {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favorites.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FavoriteCell", forIndexPath: indexPath)
            as! FavoriteCell
        
        let favorite = favorites[indexPath.row] as Product
        cell.favorite = favorite
        return cell
    }
    
    
    
    
    

}
