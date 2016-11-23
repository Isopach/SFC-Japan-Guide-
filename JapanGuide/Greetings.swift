//
//  Greetings.swift
//  JapanGuide
//
//  Created by You_liang Koh on 2016/11/23.
//  Copyright © 2016年 SFC. All rights reserved.
//

import UIKit

class Greetings: UIView {
// MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        
        //button.addTarget(self, action: #selector(Greetings.greetingsButtonTapped(_:)), forControlEvents: .TouchDown)
        addSubview(button)
     
        
    }


// MARK: Button Action
    
    
    func greetingsButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    


}
