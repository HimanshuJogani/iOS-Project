//
//  SearchViewController.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 14/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {

    var Array = [Images]()
    var search = [Images]()
    var searching = false
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpimage()
        searchBar.delegate = self
    }
    
//Images Modal

    
    private func setUpimage(){
        Array.append(Images(image: "Krishna-radha (1)"))
        Array.append(Images(image: "Groot (1)"))
        Array.append(Images(image: "Allu Arjun-3"))
        Array.append(Images(image: "Nobita_Doraemon"))
        Array.append(Images(image: "Mahesh Babu-1"))
        Array.append(Images(image: "Ganpati_Bappa-Ganesha"))
        Array.append(Images(image: "Carryminati (1)"))
        Array.append(Images(image: "Boy (7)"))
        Array.append(Images(image: "Math (1)"))
        Array.append(Images(image: "Vijay Devarkonda-2"))
        Array.append(Images(image: "King_royal (1)"))
        Array.append(Images(image: "Joker (5)"))
        Array.append(Images(image: "Rohan-2"))
        Array.append(Images(image: "Groot (2)"))
        Array.append(Images(image: "Nature"))
        Array.append(Images(image: "Pubg gun-2"))
        Array.append(Images(image: "Groot (4)"))
        
        search = Array
    }
//Collection View
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return search.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "horizontalCollectionViewCell", for: indexPath) as! horizontalCollectionViewCell
        cell.searchImg.image = UIImage(named: search[indexPath.row].image)
        cell.contentView.layer.cornerRadius = 7
        return cell
        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cellB:CarouselViewController = self.storyboard?.instantiateViewController(identifier: "CarouselViewController") as! CarouselViewController
        cellB.search = search[indexPath.item].image
        self.navigationController?.pushViewController(cellB, animated: true)
      }
      

    
// Flow Layout
    
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let collectionWidth = collectionView.bounds.width
            return CGSize(width: collectionWidth/3 - 3, height: 301)
            
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 3
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
        
// Searching
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else { search = Array; return
        collectionView.reloadData()
        }
        search = Array.filter({ animal -> Bool in
            return animal.image.lowercased().contains(searchText.lowercased())
        })
        collectionView.reloadData()
        searching = true
        searchBar.searchTextField.textColor = .white
    }

}
