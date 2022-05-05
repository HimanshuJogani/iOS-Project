//
//  RegistrationViewController.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 17/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet var imgLogo: UIImageView!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var forgetPassword: UIButton!
    @IBOutlet var signIn: UIButton!
    @IBOutlet var registration: UIButton!
    
    @IBAction func registrationAction(_ sender: Any) {
        let cell:CreateViewController = storyboard?.instantiateViewController(identifier: "CreateViewController") as! CreateViewController
        self.navigationController?.pushViewController(cell, animated: true)
        
    }
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BtnLayout()
        
    }
    func BtnLayout(){
        signIn.layer.cornerRadius = signIn.layer.frame.height/2
        registration.layer.cornerRadius = registration.layer.frame.height/2
        imgLogo.layer.borderWidth = 1
        imgLogo.layer.masksToBounds = false
        imgLogo.layer.cornerRadius = imgLogo.frame.height/2
        imgLogo.clipsToBounds = true
    }

    

}
