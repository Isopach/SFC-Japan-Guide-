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

    @IBOutlet weak var hello: UIImageView!

    
    @IBOutlet weak var helpme: UIImageView!
    var audioPlayer:AVAudioPlayer!
    //var audioName:String!
    
    //let directory0 = "sound/"
    //let filename0 = UILabel.String
   // let path = directory0 + filename0
    
    //@IBOutlet weak var pleasehelpme: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Greetings.playSound(_:)))
        self.hello.addGestureRecognizer(tapGestureRecognizer)
        self.hello.isUserInteractionEnabled = true
        
       /* let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(Greetings.playSound1(_:)))
        self.helpme.addGestureRecognizer(tapGestureRecognizer1)
        self.helpme.isUserInteractionEnabled = true*/
        
        //pleasehelpme.text = "Please help me"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    func collectionView(_ collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: IndexPath)
    {
        //audioName = nameArray[indexPath.row]
    }
    @IBAction func playSound(_ sender: UIImageView) {
        
            guard let sound = NSDataAsset(name: "soundName") else {
                print("asset not found")
                return 
            }
            
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                
                audioPlayer = try AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeMPEGLayer3)
                
                audioPlayer!.play()
            } catch let error as NSError {
                print("error: \(error.localizedDescription)")
            }
        }
    //let audioName:String!
/*For Swift 2
   @IBAction func playSound(_ sender: UIImageView) {
    
    let audioFilePath = Bundle.main.path(forResource: "sound/hello", ofType: "wav")

    if audioFilePath != nil {

        let audioFileUrl = URL(fileURLWithPath: audioFilePath!)

        audioPlayer = try! AVAudioPlayer(contentsOf: audioFileUrl)
        audioPlayer.play()

                            }
    else {
        
        print("audio file is not found")
        
        }
    }
    
    @IBAction func playSound1(_ sender: UILabel) {
        
        let audioFilePath = Bundle.main.path(forResource: "sound/please help me",ofType: "m4a")
        
        if audioFilePath != nil {
            
            let audioFileUrl = URL(fileURLWithPath: audioFilePath!)
            
            audioPlayer = try! AVAudioPlayer(contentsOf: audioFileUrl)
            audioPlayer.play()
            
        }
        else {
            
            print("audio file is not found")
            
        }
    }*/
    
    /*Sample Code for Swift 3
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
    
    class SoundFile: NSObject {
        dynamic var soundName: String = ""
        dynamic var friends: [SoundFile] = []
        dynamic var bestFriend: SoundFile?
        
        init(soundName: String) {
            self.soundName = soundName
        }
    }
    
    let pleasehelpme = SoundFile(soundName: "pleasehelpme")
 // let hello = SoundFile(soundName: "hello")
    
    
    }
