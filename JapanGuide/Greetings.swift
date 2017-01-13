//
//  Greetings.swift
//  JapanGuide
//
//  Created by You_liang Koh on 2016/11/30.
//  Copyright © 2016年 SFC. All rights reserved.
//

import UIKit
import AVFoundation

class Greetings: UIViewController, AVAudioPlayerDelegate {

    //MARK: Properties

    @IBOutlet weak var englishstaff: UIImageView!
    @IBOutlet weak var englishmenu: UIImageView!
    
    @IBOutlet weak var helpme: UIImageView!
    var audioPlayer:AVAudioPlayer!
    //var audioName:String!
    
    //let directory0 = "sound/"
    //let filename0 = UILabel.String
   // let path = directory0 + filename0
    
    @IBOutlet weak var pleasehelpme: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "englishstaffSound:")
        self.englishstaff.addGestureRecognizer(tapGestureRecognizer)
        self.englishstaff.userInteractionEnabled = true
        
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: "englishmenuSound:")
        self.englishmenu.addGestureRecognizer(tapGestureRecognizer1)
        self.englishmenu.userInteractionEnabled = true
        
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: "helpmeSound:")
        self.helpme.addGestureRecognizer(tapGestureRecognizer2)
        self.helpme.userInteractionEnabled = true
        
        
        
        //pleasehelpme.text = "Please help me"

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

   @IBAction func englishstaffSound(sender: UIImageView) {
    let audioFilePath = NSBundle.mainBundle().pathForResource("sound/is there anyone who speaks english", ofType: "m4a")
    if audioFilePath != nil {
        let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
        audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
        audioPlayer.play()}
    else {print("audio file is not found")}
    }
    
    @IBAction func englishmenuSound(sender: UIImageView) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound/can i have an english menu", ofType: "m4a")
        if audioFilePath != nil {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()}
        else {print("audio file is not found")}
    }
    
    @IBAction func helpmeSound(sender: UILabel) {
        
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound/please help me",ofType: "m4a")
        
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
