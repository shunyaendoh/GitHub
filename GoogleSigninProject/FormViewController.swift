//
//  FormViewController.swift
//  GoogleSigninProject
//
//  Created by shunya endoh on 2019/12/03.
//  Copyright © 2019 shunya endoh. All rights reserved.
//

import UIKit
import Firebase

class FormViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = Auth.auth().currentUser!
        emailLabel.text = user.email
        nameLabel.text = user.displayName
        
        let data = try! Data(contentsOf: user.photoURL!)
        let image = UIImage(data: data)
        imageView.image = image
    }

}
