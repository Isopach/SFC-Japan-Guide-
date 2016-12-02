//
//  GreetingsCollectionViewController.swift
//  JapanGuide
//
//  Created by You_liang Koh on 2016/12/02.
//  Copyright © 2016年 SFC. All rights reserved.
//

import UIKit
import AVFoundation

private let reuseIdentifier = "Cell"

class GreetingsCollectionViewController: UICollectionViewController {

    //MARK: Properties
    
    @IBOutlet weak var hello: UIImageView!
    var audioPlayer:AVAudioPlayer!
    var nameArray = ["hello","evening","thanks","welldone"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "playSound:")
        self.hello.addGestureRecognizer(tapGestureRecognizer)
        self.hello.userInteractionEnabled = true    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }
*/
    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    
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
