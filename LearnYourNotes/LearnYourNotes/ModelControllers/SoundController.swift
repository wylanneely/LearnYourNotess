//
//  SoundController.swift
//  LearnYourNotes
//
//  Created by ALIA M NEELY on 6/12/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

import Foundation
import AVFoundation

struct SoundController {
    
    let sound = SoundFilePaths()
    var soundPlayer:AVAudioPlayer = AVAudioPlayer()
    
    mutating func callEasyRandomSound() -> Int? {
        
        guard let gSoundPath = sound.gSoundPath,
            let fSoundPath = sound.fSoundPath,
            let eSoundPath = sound.eSoundPath,
            let dSoundPath = sound.dSoundPath,
            let cSoundPath = sound.cSoundPath,
            let bSoundPath = sound.bSoundPath,
            let ASoundPath = sound.ASoundPath else { print("error getting soundsFilePath"); return(nil) }
        
        let soundsArray = [ASoundPath,bSoundPath,cSoundPath,dSoundPath,eSoundPath,fSoundPath,gSoundPath]
        
        let randomIndex = Int(arc4random_uniform(6))
        let randomSoundPath = soundsArray[randomIndex]
        
        do {
            try soundPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: randomSoundPath) as URL, fileTypeHint: "wav")
            soundPlayer.play()
        } catch {}
        
        return randomIndex
    }


    mutating func callRandomSoundBy(noteIndex: Int) {
        
        guard let gSoundPath = sound.gSoundPath,
            let fSoundPath = sound.fSoundPath,
            let eSoundPath = sound.eSoundPath,
            let dSoundPath = sound.dSoundPath,
            let cSoundPath = sound.cSoundPath,
            let bSoundPath = sound.bSoundPath,
            let ASoundPath = sound.ASoundPath else { print("error getting soundsFilePath"); return }
        
        let soundsArray = [ASoundPath,bSoundPath,cSoundPath,dSoundPath,eSoundPath,fSoundPath,gSoundPath]
        
        let soundPath = soundsArray[noteIndex]
        
        do {
            try soundPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: soundPath) as URL, fileTypeHint: "wav")
            soundPlayer.play()
        } catch {}
        
    }
    
        //MARK: - Random Sounds
    
    mutating func callHardRandomSound(){
        
        guard let gSoundPath = sound.gSoundPath,
            let gSharpPath = sound.gSharpPath,
            let fSharpPath = sound.fSharpPath,
            let fSoundPath = sound.fSoundPath,
            let eFlatSoundPath = sound.eFlatSoundPath,
            let eSoundPath = sound.eSoundPath,
            let dSoundPath = sound.dSoundPath,
            let cSoundPath = sound.cSoundPath,
            let cSharpPath = sound.cSharpPath,
            let bFlatPath = sound.bFlatPath,
            let bSoundPath = sound.bSoundPath,
            let ASoundPath = sound.ASoundPath else { print("error getting soundsFilePath"); return }
        
        let soundsArray = [gSoundPath,gSharpPath,fSharpPath,fSoundPath,eFlatSoundPath,eSoundPath,dSoundPath,cSoundPath,cSharpPath,bFlatPath,bSoundPath,ASoundPath]
        
        let randomIndex = Int(arc4random_uniform(11))
        
        let randomSoundPath = soundsArray[randomIndex]
        
        do {
            try soundPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: randomSoundPath) as URL)
            soundPlayer.play()
        } catch {}
    }
    
    
    
}

