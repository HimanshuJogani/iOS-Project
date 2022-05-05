//
//  CategoriesViewController.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 17/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var popular = [UIImage(named: "Pubg-1"),UIImage(named: "Free Fire"),UIImage(named: "Joker"),UIImage(named: "Hanuman"),UIImage(named: "Love"),UIImage(named: "Black")]
    var color = [UIImage(named: "Blue"),UIImage(named: "White"),UIImage(named: "Pink"),UIImage(named: "Gold"),UIImage(named: "Green"),UIImage(named: "Silver"),UIImage(named: "Red")]
    var categorie = [UIImage(named: "Trending"),UIImage(named: "Animal"),UIImage(named: "Anime"),UIImage(named: "Bollywood"),UIImage(named: "Logo"),UIImage(named: "Car"),UIImage(named: "Pattern"),UIImage(named: "Naturee"),UIImage(named: "Entertainment"),UIImage(named: "Funney"),UIImage(named: "Holidays"),UIImage(named: "Game (2)")]
    var categoriesName = ["Trending","Animals","Anime","Bollywood","Logos","Cars & Vehicals","Designs","Nature","Entertainment","Funny","Holidays","Games"]
    var popularName = ["Pubg", "Free Fire", "Joker", "Hanuman", "Love", "Black"]
    var ColorName = ["Blue", "White", "Pink", "Gold", "Green", "Silver", "Red"]
    
    @IBOutlet var collectionA: UICollectionView!
    @IBOutlet var collectionB: UICollectionView!
    @IBOutlet var collectionC: UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
// Collection View
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionA{
            return popular.count
        }else if collectionView == collectionB{
            return color.count
        }else{
            return categorie.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "horizontalCollectionViewCell", for: indexPath) as! horizontalCollectionViewCell
        if collectionView == collectionA{
        cell.popularImg.image = popular[indexPath.row]
            cell.contentView.layer.cornerRadius = 5
        }else if collectionView == collectionB{
        cell.colorImg.image = color[indexPath.row]
            cell.contentView.layer.cornerRadius = 5
        }else{
        cell.categoriesImg.image = categorie[indexPath.row]
            cell.categoriesLbl.text = categoriesName[indexPath.row]
            cell.contentView.layer.cornerRadius = 5
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell:categoriesNaviViewController = storyboard?.instantiateViewController(identifier: "categoriesNaviViewController") as! categoriesNaviViewController
        if collectionView == collectionA{
            cell.labels = popularName[indexPath.item]
        }else if collectionView == collectionB{
            cell.labels = ColorName[indexPath.item]
        }else if collectionView == collectionC{
            cell.labels = categoriesName[indexPath.row]
        }
        self.navigationController?.pushViewController(cell, animated: true)
    }
    
// Collection View FlowLayout
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: collectionWidth/2 - 5, height: 97)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    

}
