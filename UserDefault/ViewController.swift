//
//  ViewController.swift
//  UserDefault
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var btnSwitch: UISwitch!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
   
    override func viewWillAppear(_ animated: Bool) {
        txtName.text = ""
        lblName.text = ""
    }
   
    @IBAction func btnSaveClick(_ sender: UIButton)
    {
        if txtName.text == txtPassword.text && btnSwitch.isOn
        {
            UserDefaults.standard.set(txtName.text, forKey: "name")
            UserDefaults.standard.set(txtPassword.text,forKey: "name")
        }
            
    }
    
    @IBAction func btnFetchClick(_ sender: UIButton)
    {
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        lblName.text = name
    }
    
    @IBAction func btnNextClick(_ sender: UIButton)
    {
    }
}

