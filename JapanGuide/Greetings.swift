//
//  Greetings.swift
//  JapanGuide
//
//  Created by You_liang Koh on 2016/11/23.
//  Copyright © 2016年 SFC. All rights reserved.
//

import UIKit
import AVFoundation

class Greetings: UIView {
// MARK: Properties
    
    @IBOutlet weak var Hello: UIImageView!
    var audioPlayer:AVAudioPlayer!
    
// MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
// MARK: Button Action
    @IBAction func playSound(sender: UIImageView) {
        
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound", ofType: "mp3")
        
        if audioFilePath != nil {
            
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()
            
        } else {
            print("audio file is not found")
        }
    }
}
