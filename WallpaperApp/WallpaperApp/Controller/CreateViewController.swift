//
//  CreateViewController.swift
//  WallpaperApp
//
//  Created by Hit Sutariya on 17/03/1942 Saka.
//  Copyright © 1942 Madhav Barot. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet var imgLogo: UIImageView!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var repeatPassword: UITextField!
    @IBOutlet var signUp: UIButton!
    
    @IBAction func SignUp(_ sender: Any) {
    }
    @IBAction func Cancle(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BtnLayout()
     
    }
    func BtnLayout(){
        signUp.layer.cornerRadius = signUp.layer.frame.height/2
        imgLogo.layer.borderWidth = 1
        imgLogo.layer.masksToBounds = false
        imgLogo.layer.cornerRadius = imgLogo.frame.height/2
        imgLogo.clipsToBounds = true
    }



}
