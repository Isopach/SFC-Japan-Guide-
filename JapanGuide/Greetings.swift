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
    //var soundArray : [NSURL] = [sound1, sound2, sound3]
   // var imageArray = [UIImage(named: "hello"),UIImage(named: "birds"),UIImage(named: "nature"),UIImage(named: "wave")]
   // var nameArray = ["hello","evening","thanks","welldone"]
    
    var audioPlayer:AVAudioPlayer!
    //var audioName:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "playSound:")
        self.hello.addGestureRecognizer(tapGestureRecognizer)
        self.hello.userInteractionEnabled = true


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
}
