//
//  horizontalCollectionViewCell.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 15/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class horizontalCollectionViewCell: UICollectionViewCell {
    
    
// CollectionView Features
    @IBOutlet var img: UIImageView!
 
    
    
// CollectionView Popular
    @IBOutlet var imgPopular: UIImageView!
    @IBOutlet var premiumLogo: UIButton!
    @IBOutlet var youtubelogo: UIButton!
    
    
    
// CollectionView CarouselEffect
    @IBOutlet var imgCarousel: UIImageView!

    
// SearchView Controller
    @IBOutlet var searchImg: UIImageView!
    
    
    
// Cetegories View Controller Outlets
    
    @IBOutlet var popularImg: UIImageView!
    @IBOutlet var categoriesImg: UIImageView!
    @IBOutlet var colorImg: UIImageView!
    @IBOutlet var categoriesLbl: UILabel!
    
    
//Categoreis Navi view controller outlets
    
    @IBOutlet var image: UIImageView!
}


