//
//  HomeViewController.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 14/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    @IBOutlet var collectionViewA: UICollectionView!
    @IBOutlet var collectionViewB: UICollectionView!
    @IBOutlet var segment: UISegmentedControl!
    @IBOutlet var sidebarButton: UIButton!
    @IBOutlet var search: UIButton!
    
    
    @IBAction func searchAction(_ sender: Any) {
        let cell:SearchViewController = self.storyboard?.instantiateViewController(identifier: "SearchViewController") as! SearchViewController
        self.navigationController?.pushViewController(cell, animated: true)
    }
    
    
    var imgA = [UIImage(named: "Technologyd"),UIImage(named: "Sport"),UIImage(named: "Spiritual"),UIImage(named: "Saying"),UIImage(named: "People")]
    var imgB = [UIImage(named: "Krishna-radha (1)"),UIImage(named: "Groot (1)"),UIImage(named: "Nobita_Doraemon"),UIImage(named: "Ganpati_Bappa-Ganesha"),UIImage(named: "Math (1)"),UIImage(named: "Boy (1)"),UIImage(named: "Carryminati (1)"),UIImage(named: "Marshmallow (1)"),UIImage(named: "Mahesh Babu"),UIImage(named: "Pubg (2)"),UIImage(named: "Joker (1)"),UIImage(named: "Math (7)"),UIImage(named: "SunSet"),UIImage(named: "Nature"),UIImage(named: "King_royal (1)")]
    var imgAPremium = [UIImage(named: "People"),UIImage(named: "Saying"),UIImage(named: "Naturee"),UIImage(named: "Sport"),UIImage(named: "Technologyd")]
    var imgBPremium = [UIImage(named: "Carryminati (1)"),UIImage(named: "Boy (7)"),UIImage(named: "Hrutik Roshan"),UIImage(named: "Math (6)"),UIImage(named: "Nature (3)"),UIImage(named: "Vijay Devarkonda-1"),UIImage(named: "Krishna-radha (6)"),UIImage(named: "Pubg (13)"),UIImage(named: "Groot (12)"),UIImage(named: "Pubg gun-2"),UIImage(named: "Marshmallow (2)"),UIImage(named: "Blue (6)"),UIImage(named: "Allu Arjun-3"),UIImage(named: "King_royal (4)"),UIImage(named: "Joker (5)")]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewA.delegate = self
        collectionViewA.dataSource = self
        collectionViewB.delegate = self
        collectionViewB.dataSource = self

    }

    
//CollectionView
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var value = 0
        switch segment.selectedSegmentIndex{
        case 0:
            if collectionView == self.collectionViewA
            {
                value = imgA.count
            }
            else if collectionView == collectionViewB
            {
                value = imgB.count
            }
            break
        case 1:
            if collectionView == self.collectionViewA
            {
                value = imgAPremium.count
            }
            else if collectionView == collectionViewB
            {
                value = imgBPremium.count
            }
            break
        default:
            break
        }
        return value
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "horizontalCollectionViewCell", for: indexPath) as! horizontalCollectionViewCell

        switch segment.selectedSegmentIndex{
        case 0:
            if collectionView == self.collectionViewA
            {
                cellA.img.image = imgA[indexPath.row]
                cellA.contentView.layer.cornerRadius = 5
                cellA.premiumLogo.isHidden = true
                
            }
            else if collectionView == collectionViewB
            {
                cellA.imgPopular.image = imgB[indexPath.row]
                cellA.contentView.layer.cornerRadius = 5
                cellA.youtubelogo.isHidden = true
            }
        case 1:
            
            if collectionView == self.collectionViewA
            {
                cellA.img.image = imgAPremium[indexPath.row]
                cellA.contentView.layer.cornerRadius = 5
                cellA.premiumLogo.isHidden = false
                
            }
            else if collectionView == collectionViewB
            {
                cellA.imgPopular.image = imgBPremium[indexPath.row]
                cellA.contentView.layer.cornerRadius = 5
                cellA.youtubelogo.isHidden = false
                
            }
            
            break
            
        default:
        break
        }
        return cellA
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == collectionViewB
        {
            let cell:CarouselViewController = self.storyboard?.instantiateViewController(identifier: "CarouselViewController") as! CarouselViewController
            cell.items = indexPath.item
            cell.set =  segment.selectedSegmentIndex
            self.navigationController?.pushViewController(cell, animated: true)
        }
    }
    
//Collection View FlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: collectionWidth/3 - 5, height: 301)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
// Segment Action
       
    @IBAction func segmentAction(_ sender: Any) {
        self.collectionViewA.reloadData()
        self.collectionViewB.reloadData()
    }
    

    
}
