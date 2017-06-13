//
//  AudioViewController.swift
//  LearnYourNotes
//
//  Created by ALIA M NEELY on 4/4/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

import UIKit
import AVFoundation

class AudioViewController: UIViewController {
    
    var sounds = SoundController()
    
    var playedSoundIndex: Int?
    var score: Int = 0
    
    
    
    func addScoreifCorrectAt(SoundIndex:Int){
        if playedSoundIndex == SoundIndex{
            score += 1
            scoreLabel.text = "\(score)"
        } else { scoreLabel.text = "\(score)" }
    }
    
    //MARK: - Actions
    
    
    @IBAction func playSound(_ sender: Any) {
        self.playedSoundIndex = sounds.callEasyRandomSound()
    }
    
    
    @IBAction func AbuttonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 0)
    }
    @IBAction func bButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 1)
    }
    @IBAction func cButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 2)
    }
    @IBAction func dButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 3)
    }
    @IBAction func eButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 4)
    }
    @IBAction func fButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 5)
    }
    @IBAction func gButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 6)
    }
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
}
