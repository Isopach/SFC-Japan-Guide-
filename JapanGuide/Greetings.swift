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
    
    @IBOutlet weak var pleasehelpme: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(Greetings.playSound(_:)))
        self.hello.addGestureRecognizer(tapGestureRecognizer)
        self.hello.isUserInteractionEnabled = true
        
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(Greetings.playSound1(_:)))
        self.helpme.addGestureRecognizer(tapGestureRecognizer1)
        self.helpme.isUserInteractionEnabled = true
        
        pleasehelpme.text = "Please help me"

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
    //let audioName:String!

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
