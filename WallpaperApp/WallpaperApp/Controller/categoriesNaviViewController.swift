//
//  categoriesNaviViewController.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 18/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class categoriesNaviViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate, UICollectionViewDelegateFlowLayout {

    var Array = [categoresImages]()
    
    var searching = [categoresImages]()
    var searchinng = false
    var labels: String = ""
    @IBOutlet var back: UIButton!
    @IBOutlet var search: UIButton!
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var lbl: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    
    
    @IBAction func search(_ sender: Any) {
        self.searchBar.isHidden = false
        self.lbl.isHidden = true
    }
    @IBAction func back(_ sender: Any) {
        self.searchBar.isHidden = true
        self.lbl.isHidden = false
        self.navigationController?.popViewController(animated: true)
    }
    
    private func TrandingImage(){
        Array.append(categoresImages(image: "Pubg (16)", anim: "Vijay Devarkonda-2", white: "White (8)"))
        Array.append(categoresImages(image: "Pubg gun-5", anim: "Vijay Devarkonda-2", white: "White (1)"))
        Array.append(categoresImages(image: "Pubg (12)", anim: "Vijay Devarkonda-2", white: "White (7)"))
        Array.append(categoresImages(image: "Pubg (1)", anim: "Vijay Devarkonda-2", white: "White (6)"))
        Array.append(categoresImages(image: "Pubg (8)", anim: "Vijay Devarkonda-1", white: "King_royal (2)"))
        Array.append(categoresImages(image: "Pubg (9)", anim: "Vijay Devarkonda-1", white: "White (2)"))
        Array.append(categoresImages(image: "Pubg (10)", anim: "Vijay Devarkonda-1", white: "White (3)"))
        Array.append(categoresImages(image: "Pubg (11)", anim: "Vijay Devarkonda", white: "White (4)"))
        Array.append(categoresImages(image: "Pubg (5)", anim: "Vijay Devarkonda", white: "Yash"))
        Array.append(categoresImages(image: "Pubg (4)", anim: "Hrutik Roshan", white: "Pubg gun-5"))
        Array.append(categoresImages(image: "Pubg gun-3", anim: "Hrutik Roshan", white: "King_royal (5)"))
        Array.append(categoresImages(image: "Pubg gun-4", anim: "Hrutik Roshan", white: "White (5)"))
        
        searching = Array
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        TrandingImage()

        searchBar.delegate = self
        hit()
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return searching.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "horizontalCollectionViewCell", for: indexPath) as! horizontalCollectionViewCell
        if labels == "Pubg"{
            cell.image.image = UIImage(named: searching[indexPath.row].image)
            cell.contentView.layer.cornerRadius = 7
        }else if labels == "White"{
        cell.image.image = UIImage(named: searching[indexPath.row].white)
        cell.contentView.layer.cornerRadius = 7
        }else{
        cell.image.image = UIImage(named: searching[indexPath.row].anim)
        cell.contentView.layer.cornerRadius = 7
        }
        return cell
    
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = storyboard?.instantiateViewController(withIdentifier: "CarouselViewController") as! CarouselViewController
        if labels == "Pubg"{
            cell.categorieItem = searching[indexPath.row].image
        }else if labels == "White"
        {
            cell.categorieItem = searching[indexPath.row].white
        }else{
        cell.categorieItem = searching[indexPath.row].anim
        }
        self.navigationController?.pushViewController(cell, animated: true)
    }
    
// Categorie Label Name
    
    func hit(){
        self.lbl.text = labels
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

                guard !searchText.isEmpty else { searching = Array; return
        collectionView.reloadData()
        }
            searching = Array.filter({ animal -> Bool in
                if labels == "Pubg"{
                return animal.image.lowercased().contains(searchText.lowercased())
                }else if labels == "White"{
                    return animal.white.lowercased().contains(searchText.lowercased())
                }else{
                    return animal.anim.lowercased().contains(searchText.lowercased())
                }
            })
            collectionView.reloadData()
        searchinng = true
        searchBar.searchTextField.textColor = .white
    }

}


