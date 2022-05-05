//
//  CarouselViewController.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 15/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class CarouselViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var blurView: UIVisualEffectView!
    @IBOutlet var popView: UIView!
    @IBOutlet var skipAd: UIButton!
    @IBOutlet var watchAd: UIButton!
    @IBOutlet var image: UIImageView!
   
    
    
    @IBAction func canclePop(_ sender: Any) {
        popView.isHidden = true
        blurView.isHidden = true
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    var img1 = [UIImage(named: "Krishna-radha (1)"),UIImage(named: "Krishna-radha (2)"),UIImage(named: "Krishna-radha (3)"),UIImage(named: "Krishna-radha (4)"),UIImage(named: "Krishna-radha (5)"),UIImage(named: "Krishna-radha (6)"),UIImage(named: "Krishna-radha (7)")]
    var img2 = [UIImage(named: "Groot (1)"),UIImage(named: "Groot (2)"),UIImage(named: "Groot (3)"),UIImage(named: "Groot (4)"),UIImage(named: "Groot (5)"),UIImage(named: "Groot (6)"),UIImage(named: "Groot (7)")]
    var img3 = [UIImage(named: "Nobita_Doraemon"),UIImage(named: "Nobita_Doraemon (2)"),UIImage(named: "Nobita_Doraemon (3)"),UIImage(named: "Nobita_Doraemon (4)"),UIImage(named: "Nobita_Doraemon (5)"),UIImage(named: "Nobita_Doraemon (6)")]
    var img4 = [UIImage(named: "Carryminati (4)"),UIImage(named: "Carryminati (2)"),UIImage(named: "Carryminati (3)"),UIImage(named: "Carryminati (1)"),UIImage(named: "Carryminati (5)"),UIImage(named: "Carryminati (6)")]
    var img5 = [UIImage(named: "Boy (7)"),UIImage(named: "Boy (6)"),UIImage(named: "Boy (5)"),UIImage(named: "Boy (4)"),UIImage(named: "Boy (3)"),UIImage(named: "Boy (2)"),UIImage(named: "Boy (1)")]
    var img6 = [UIImage(named: "Pubg (16)"),UIImage(named: "Pubg (14)"),UIImage(named: "Pubg (6)"),UIImage(named: "Pubg (5)"),UIImage(named: "Pubg (4)"),UIImage(named: "Pubg (3)"),]
    var img7 = [UIImage(named: "Pubg gun"),UIImage(named: "Pubg gun-1"),UIImage(named: "Pubg gun-2"),UIImage(named: "Pubg gun-3"),UIImage(named: "Pubg gun-4"),UIImage(named: "Pubg gun-5"),UIImage(named: "Pubg gun-6")]
    var img8 = [UIImage(named: "White (1)"),UIImage(named: "White (2)"),UIImage(named: "White (9)")]

    var items: Int = 999
    var set: Int = 0
    var search: String = ""
    var categorieItem: String = ""
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        layout()
        
        self.collectionView.showsHorizontalScrollIndicator = false
        let floawLayout = UPCarouselFlowLayout()
        floawLayout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 60.0, height: collectionView.frame.size.height)
               
        floawLayout.scrollDirection = .horizontal
        floawLayout.sideItemScale = 0.8
        floawLayout.sideItemAlpha = 1.0
               
        floawLayout.spacingMode = .fixed(spacing: 5.0)
        collectionView.collectionViewLayout = floawLayout

    }
// CollectionView
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if set == 1{
            if items == 0 || search == "dsf"
            {
                return img4.count
            }
            else if items == 1 || search == "Groot (1)"
            {
                return img5.count
            }
            else if items == 2 || search == "sd"
            {
                return img5.count
            }
            else{
                return img5.count
            }
        }else{
            if items == 0 || search == "dsf"
            {
                return img1.count
            }
            else if items == 1 || search == "Groot (1)"
            {
                return img2.count
            }
            else if items == 2 || search == "sd"
            {
                return img3.count
            }
            else if categorieItem == "Pubg (16)"
            {
                return img6.count
            }else if categorieItem == "Pubg gun-5"
            {
                return img7.count
            }
            else if categorieItem == "White (1)"
            {
                return img8.count
            }else{
                return img5.count
            }
        }

        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "horizontalCollectionViewCell", for: indexPath) as! horizontalCollectionViewCell
        if set == 1{
            if  items == 0 || search == "dsf"
            {
                cell3.imgCarousel.image = self.img4[indexPath.row]
            }
            else if items == 1 || search == "Groot (1)"
            {
                cell3.imgCarousel.image = self.img5[indexPath.row]
            }
            else if items == 2 || search == "sd"
            {
                cell3.imgCarousel.image = self.img5[indexPath.row]
            }
            else
            {
                cell3.imgCarousel.image = self.img5[indexPath.row]
            }
        }else{
            if  items == 0 || search == "dsf"
            {
                cell3.imgCarousel.image = self.img1[indexPath.row]
            }
            else if items == 1 || search == "Groot (1)"
            {
                cell3.imgCarousel.image = self.img2[indexPath.row]
            }
            else if items == 2 || search == "sd"
            {
                cell3.imgCarousel.image = self.img3[indexPath.row]
            }
            else if categorieItem == "Pubg (16)"
            {
                cell3.imgCarousel.image = self.img6[indexPath.row]
            }else if categorieItem == "Pubg gun-5"
            {
                cell3.imgCarousel.image = self.img7[indexPath.row]
            }
            else if categorieItem == "White (1)"
            {
                cell3.imgCarousel.image = self.img8[indexPath.row]
            }
            else
            {
                cell3.imgCarousel.image = self.img5[indexPath.row]
            }
        }
            return cell3
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

      if set == 1{
          popView.isHidden = false
          blurView.isHidden = false
      }else{
          
     let cell:fullImageViewController = self.storyboard?.instantiateViewController(identifier: "fullImageViewController") as! fullImageViewController
         if items == 0 || search == "dsf"
         {
             cell.fullimg = img1[indexPath.row]
         }
         else if items == 1 || search == "Groot (1)"
         {
             cell.fullimg = img2[indexPath.row]
         }
         else if items == 2 || search == "sd"
         {
             cell.fullimg = img3[indexPath.row]
         }
         else if categorieItem == "Pubg (16)"
         {
             cell.fullimg = img6[indexPath.row]
         }else if categorieItem == "Pubg gun-5"
         {
             cell.fullimg = img7[indexPath.row]
         }
        else if categorieItem == "White (1)"
        {
            cell.fullimg = img8[indexPath.row]
        }
         else
         {
             cell.fullimg = img5[indexPath.row]
         }
      self.navigationController?.pushViewController(cell, animated: true)
      }
      }

//CarouselEffect
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let layout = self.collectionView.collectionViewLayout as! UPCarouselFlowLayout
        let pageSide = (layout.scrollDirection == .horizontal) ? self.pageSize.width : self.pageSize.height
        let offset = (layout.scrollDirection == .horizontal) ? scrollView.contentOffset.x : scrollView.contentOffset.y
        currentPage = Int(floor((offset - pageSide / 2) / pageSide) + 1)
    }
    fileprivate var currentPage: Int = 0 {
        didSet {
            print("page at centre = \(currentPage)")
        }
    }
    
    fileprivate var pageSize: CGSize {
        let layout = self.collectionView.collectionViewLayout as! UPCarouselFlowLayout
        var pageSize = layout.itemSize
        if layout.scrollDirection == .horizontal {
            pageSize.width += layout.minimumLineSpacing
        } else {
            pageSize.height += layout.minimumLineSpacing
        }
        return pageSize
    }

//Buttons and View Layout
    
    func layout(){
        popView.layer.cornerRadius = 15
        watchAd.layer.cornerRadius = watchAd.layer.frame.height/2
        skipAd.layer.cornerRadius = skipAd.layer.frame.height/2
        skipAd.layer.borderWidth = 1.5
        skipAd.layer.borderColor = UIColor.green.cgColor


    }
}
