//
//  ProductViewController.swift
//  MallBTtracker
//
//  Created by Johan Hallén on 11/12/15.
//  Copyright © 2015 Johan Hallén. All rights reserved.
//

import UIKit

class ExploreViewController: UITableViewController {
  
    
    var products:[Product] = productsData
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) ->Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
            as! ProductCell
        
        let product = products[indexPath.row] as Product
        cell.product = product
        return cell
    }
    
    @IBAction func saveProduct(sender: AnyObject) {
        favoritesData.insert(Product(brand: "Nils Petter", price: "299:-", prodImg: 3), atIndex: 0)
        print(favoritesData)
    }
    
}