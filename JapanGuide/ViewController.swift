//
//  ViewController.swift
//  JapanGuide
//
//  Created by You_liang Koh on 2016/10/21.
//  Copyright © 2016年 SFC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        

    //MARK: Properties
    
    @IBOutlet weak var Menu_Title: UILabel!
    @IBOutlet weak var donatePhoto: UIImageView!
    @IBAction func Etiquette(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Etiquette", sender: self)
    }
    
    @IBAction func Greetings(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Greetings", sender: self)
    }
    
    @IBAction func Maps(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Maps", sender: self)
    }
    @IBAction func unwindToThisViewController(_ segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.linkTapped(_:)))
        self.donatePhoto.addGestureRecognizer(tapGestureRecognizer)
        self.donatePhoto.isUserInteractionEnabled = true
        //myButton."Restaurant".textAlignment = NSTextAlignment.Center        // Handle the text field’s user input through delegate callbacks.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func linkTapped(_ sender: UITapGestureRecognizer) {
        if let url = URL(string: "https://twitter.com/SFC_JapanGuide") {
            UIApplication.shared.openURL(url)
        }
    }

    
}

