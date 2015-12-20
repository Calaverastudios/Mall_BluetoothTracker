//
//  FavoriteCell.swift
//  MallBTtracker
//
//  Created by Johan Hallén on 14/12/15.
//  Copyright © 2015 Johan Hallén. All rights reserved.
//

import UIKit

class FavoriteCell: UITableViewCell {
    
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var favoriteImageView: UIImageView!
    
    
    var favorite: Product! {
        didSet{
            brandLabel.text = favorite.brand
            priceLabel.text = favorite.price
            favoriteImageView.image = imageForFavorite(favorite.prodImg)
        }
    }
    
    
    func imageForFavorite(prodImg:Int)-> UIImage?{
        let imageName = "\(prodImg)product"
        return UIImage(named: imageName)
    }
}
