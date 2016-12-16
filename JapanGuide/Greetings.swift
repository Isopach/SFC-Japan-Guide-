//
//  Greetings2.swift
//  JapanGuide
//
//  Created by You_liang Koh on 2016/11/30.
//  Copyright © 2016年 SFC. All rights reserved.
//

import UIKit
import AVFoundation

class Greetings: UIViewController, AVAudioPlayerDelegate {

    //MARK: Properties

    @IBOutlet weak var hello: UIImageView!
g","thanks","welldone"]
    
    @IBOutlet weak var helpme: UIImageView!
    var audioPlayer:AVAudioPlayer!
    //var audioName:String!
    
    //let directory0 = "sound/"
    //let filename0 = UILabel.String
   // let path = directory0 + filename0
    
    //@IBOutlet weak var pleasehelpme: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "playSound:")
        self.hello.addGestureRecognizer(tapGestureRecognizer)
        self.hello.userInteractionEnabled = true
        
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: "playSound1:")
        self.helpme.addGestureRecognizer(tapGestureRecognizer1)
        self.helpme.userInteractionEnabled = true
        
        pleasehelpme.text = "Please help me"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        //audioName = nameArray[indexPath.row]
    }
    //let audioName:String!

   @IBAction func playSound(sender: UIImageView) {
    
    let audioFilePath = NSBundle.mainBundle().pathForResource("sound/hello", ofType: "wav")

    if audioFilePath != nil {

        let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)

        audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
        audioPlayer.play()

                            }
    else {
        
        print("audio file is not found")
        
        }
    }
    
    @IBAction func playSound1(sender: UIImageView) {
        
     
        
        
        let audioFilePath = NSBundle.mainBundle().pathForResource(, ofType: "m4a")
        
        if audioFilePath != nil {
            
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()
            
        }
        else {
            
            print("audio file is not found")
            
        }
    }
    
    /*
    Works in Swift 3
    class soundFile: NSObject {
        dynamic var soundName: String = ""
        
        init(soundName: String)
        
        {
            self.soundName = soundName
        }
    }
    
    let pleasehelpme = soundFile(soundName:"pleasehelpme")
    
    #keyPath(soundFile.soundName)
    pleasehelpme.valueForKey(#keyPath(soundFile.soundName))*/
    
}
