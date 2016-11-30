//
//  Greetings2.swift
//  JapanGuide
//
//  Created by You_liang Koh on 2016/11/30.
//  Copyright © 2016年 SFC. All rights reserved.
//

import UIKit
import AVFoundation

class Greetings2: UIViewController {

    //MARK: Properties

    @IBOutlet weak var soundIcon: UIImageView!
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "playSound:")
        self.soundIcon.addGestureRecognizer(tapGestureRecognizer)
        self.soundIcon.userInteractionEnabled = true


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
   /* @IBAction func playSound(sender: UIImageView) {
        
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound", ofType: "mp3")
        
        if audioFilePath != nil {
            
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()
            
        } else {
            print("audio file is not found")
        }
    }*/
    @IBAction func playSound(sender: UITapGestureRecognizer) {
        let sound_path = NSBundle.mainBundle().pathForResource("hello.mp3", ofType: "mp3")
        let audioPlayer = AVPlayer(URL: NSURL(fileURLWithPath: sound_path!))
        audioPlayer.play()
        
    }

}
