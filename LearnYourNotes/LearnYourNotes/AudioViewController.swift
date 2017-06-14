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
    
    
        //MARK: - Stored Properties

    var sounds = SoundController()
    var playedSoundIndex: Int? // used to compare the played sound with the sound index
    var score: Int = 0
    
        //MARK: - Scoring Functions
    
    func addScoreifCorrectAt(SoundIndex:Int){
        if playedSoundIndex == SoundIndex{
            score += 1
            scoreLabel.text = "\(score)"
            backgroundView.backgroundColor = .green
        } else {
            scoreLabel.text = "\(score)"
            backgroundView.backgroundColor = .red
        }
    }
    
        //MARK: - PlayActions
    
    @IBAction func playSound(_ sender: Any) {
        self.playedSoundIndex = sounds.callEasyRandomSound()
    }
    
        //MARK: - Sound Actions
    
    @IBAction func AbuttonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 0)
        sounds.callRandomSoundBy(noteIndex: 0)
    }
    @IBAction func bButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 1)
        sounds.callRandomSoundBy(noteIndex: 1)
    }
    @IBAction func cButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 2)
        sounds.callRandomSoundBy(noteIndex: 2)
    }
    @IBAction func dButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 3)
        sounds.callRandomSoundBy(noteIndex: 3)
    }
    @IBAction func eButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 4)
        sounds.callRandomSoundBy(noteIndex: 4)
    }
    @IBAction func fButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 5)
        sounds.callRandomSoundBy(noteIndex: 5)
    }
    @IBAction func gButtonTapped(_ sender: Any) {
        addScoreifCorrectAt(SoundIndex: 6)
        sounds.callRandomSoundBy(noteIndex: 6)
    }
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var backgroundView: UIView!
    
}
