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
    @IBOutlet weak var whatsthis: UIImageView!
    @IBOutlet weak var givemethis: UIImageView!
    
    @IBOutlet weak var allergy: UIImageView!
    @IBOutlet weak var ingredients: UIImageView!
    @IBOutlet weak var halal: UIImageView!
    @IBOutlet weak var vegetarian: UIImageView!
    @IBOutlet weak var vegan: UIImageView!
    
    
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
        
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: "whatsthisSound:")
        self.whatsthis.addGestureRecognizer(tapGestureRecognizer3)
        self.whatsthis.userInteractionEnabled = true
        
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: "givemethisSound:")
        self.givemethis.addGestureRecognizer(tapGestureRecognizer4)
        self.givemethis.userInteractionEnabled = true
        
        let tapGestureRecognizer5 = UITapGestureRecognizer(target: self, action: "allergySound:")
        self.allergy.addGestureRecognizer(tapGestureRecognizer5)
        self.allergy.userInteractionEnabled = true
        
        let tapGestureRecognizer6 = UITapGestureRecognizer(target: self, action: "ingredientsSound:")
        self.ingredients.addGestureRecognizer(tapGestureRecognizer6)
        self.ingredients.userInteractionEnabled = true
        
        let tapGestureRecognizer7 = UITapGestureRecognizer(target: self, action: "halalSound:")
        self.halal.addGestureRecognizer(tapGestureRecognizer7)
        self.halal.userInteractionEnabled = true
        
        let tapGestureRecognizer8 = UITapGestureRecognizer(target: self, action: "vegetarianSound:")
        self.vegetarian.addGestureRecognizer(tapGestureRecognizer8)
        self.vegetarian.userInteractionEnabled = true
        
        let tapGestureRecognizer9 = UITapGestureRecognizer(target: self, action: "veganSound:")
        self.vegan.addGestureRecognizer(tapGestureRecognizer9)
        self.vegan.userInteractionEnabled = true
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
            audioPlayer.play()}
        else {print("audio file is not found")}
    }
    
    @IBAction func whatsthisSound(sender: UILabel) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound/what is this",ofType: "m4a")
        if audioFilePath != nil {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()}
        else {print("audio file is not found")}
    }
    
    @IBAction func givemethisSound(sender: UILabel) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound/may i have this",ofType: "m4a")
        if audioFilePath != nil {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()}
        else {print("audio file is not found")}
    }
    
    @IBAction func allergySound(sender: UILabel) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound/i have an allergy",ofType: "m4a")
        if audioFilePath != nil {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()}
        else {print("audio file is not found")}
    }
    
    @IBAction func ingredientsSound(sender: UILabel) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound/what ingredients does this contain",ofType: "m4a")
        if audioFilePath != nil {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()}
        else {print("audio file is not found")}
    }
    
    @IBAction func halalSound(sender: UILabel) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound/is the food halal",ofType: "m4a")
        if audioFilePath != nil {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()}
        else {print("audio file is not found")}
    }
    
    @IBAction func vegetarianSound(sender: UILabel) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound/is there a vegetarian menu",ofType: "m4a")
        if audioFilePath != nil {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()}
        else {print("audio file is not found")}
    }
    
    @IBAction func veganSound(sender: UILabel) {
        let audioFilePath = NSBundle.mainBundle().pathForResource("sound/do you have a vegan selection",ofType: "m4a")
        if audioFilePath != nil {
            let audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
            audioPlayer = try! AVAudioPlayer(contentsOfURL: audioFileUrl)
            audioPlayer.play()}
        else {print("audio file is not found")}
    }

}
