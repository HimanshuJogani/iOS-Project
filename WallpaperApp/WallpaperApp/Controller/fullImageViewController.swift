//
//  fullImageViewController.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 15/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class fullImageViewController: UIViewController {

    @IBOutlet var fullImage: UIImageView!
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    var fullimg: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullImage.image = fullimg

       
    }
    


}
