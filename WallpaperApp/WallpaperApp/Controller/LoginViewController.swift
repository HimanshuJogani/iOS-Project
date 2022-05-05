//
//  LoginViewController.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 17/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var imgLogo: UIImageView!
    @IBOutlet var facebook: UIButton!
    @IBOutlet var google: UIButton!
    @IBOutlet var login: UIButton!
    
    
    @IBAction func loginAction(_ sender: Any) {
        let cell:RegistrationViewController = storyboard?.instantiateViewController(identifier: "RegistrationViewController") as! RegistrationViewController
        self.navigationController?.pushViewController(cell, animated: true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        BtnLayout()
        
    }
    func BtnLayout(){
        google.layer.cornerRadius = google.layer.frame.height/2
        facebook.layer.cornerRadius = facebook.layer.frame.height/2
        login.layer.cornerRadius = login.layer.frame.height/2
        imgLogo.layer.borderWidth = 1
        imgLogo.layer.masksToBounds = false
        imgLogo.layer.cornerRadius = imgLogo.frame.height/2
        imgLogo.clipsToBounds = true
        
    }


}
