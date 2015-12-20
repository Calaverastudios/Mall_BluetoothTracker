//
//  Favorite.swift
//  MallBTtracker
//
//  Created by Johan Hallén on 14/12/15.
//  Copyright © 2015 Johan Hallén. All rights reserved.
//

import UIKit

struct Favorite {
    var brand: String?
    var price: String?
    var prodImg: Int
    
    init(brand: String?, price: String?, prodImg: Int){
        self.brand = brand
        self.price = price
        self.prodImg = prodImg
        
    }
}