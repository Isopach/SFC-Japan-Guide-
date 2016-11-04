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
    @IBAction func RestaurantPage(sender: UIButton) {
        self.performSegueWithIdentifier("Restaurant", sender: self)

    }
    @IBAction func unwindToThisViewController(segue: UIStoryboardSegue) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "linkTapped:")
        self.donatePhoto.addGestureRecognizer(tapGestureRecognizer)
        self.donatePhoto.userInteractionEnabled = true
        
        // Handle the text field’s user input through delegate callbacks.
      

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func linkTapped(sender: UITapGestureRecognizer) {
        if let url = NSURL(string: "https://twitter.com/SFC_JapanGuide") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    @IBAction func Restaurant_Etiquette(sender: UIButton) {
        
    }

}

