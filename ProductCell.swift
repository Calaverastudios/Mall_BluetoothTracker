//
//  ProductCell.swift
//  MallBTtracker
//
//  Created by Johan Hallén on 11/12/15.
//  Copyright © 2015 Johan Hallén. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var addProduct: UIButton!
    
    var product: Product! {
        didSet{
            brandLabel.text = product.brand
            priceLabel.text = product.price
            productImageView.image = imageForProduct(product.prodImg)
        }
    }
    
    
    func imageForProduct(prodImg:Int)-> UIImage?{
        let imageName = "\(prodImg)product"
        return UIImage(named: imageName)
    }
}

