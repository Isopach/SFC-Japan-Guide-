//
//  Etiquette.swift
//  JapanGuide
//
//  Created by You_liang Koh on 2016/11/30.
//  Copyright © 2016年 SFC. All rights reserved.
//

import UIKit

class Etiquette: UIViewController {

    //MARK: Properties
    @IBAction func Restaurant(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Restaurant", sender: self)
    }
    
    @IBAction func unwindToThisViewController(_ segue: UIStoryboardSegue) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
