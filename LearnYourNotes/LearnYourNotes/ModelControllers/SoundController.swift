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
    
    let soundPath = SoundsFileStruct()
    
    var soundPlayer:AVAudioPlayer = AVAudioPlayer()
    
    
    
    mutating func callEasyRandomSound() -> Int?{
        
        
        
        guard let gSoundPath = soundPath.gSoundPath,
            let fSoundPath = soundPath.fSoundPath,
            let eSoundPath = soundPath.eSoundPath,
            let dSoundPath = soundPath.dSoundPath,
            let cSoundPath = soundPath.cSoundPath,
            let bSoundPath = soundPath.bSoundPath,
            let ASoundPath = soundPath.ASoundPath else { print("error getting soundsFilePath"); return(nil) }
        
        let soundsArray = [ASoundPath,bSoundPath,cSoundPath,dSoundPath,eSoundPath,fSoundPath,gSoundPath]
        
        let randomIndex = Int(arc4random_uniform(6))
        
        let randomSoundPath = soundsArray[randomIndex]
        
        do {
            try soundPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: randomSoundPath) as URL)
            soundPlayer.play()
        } catch {}
        
        return randomIndex
        
    }
    
    
    
    mutating func callHardRandomSound(){
        
        guard let gSoundPath = soundPath.gSoundPath,
            let gSharpPath = soundPath.gSharpPath,
            let fSharpPath = soundPath.fSharpPath,
            let fSoundPath = soundPath.fSoundPath,
            let eFlatSoundPath = soundPath.eFlatSoundPath,
            let eSoundPath = soundPath.eSoundPath,
            let dSoundPath = soundPath.dSoundPath,
            let cSoundPath = soundPath.cSoundPath,
            let cSharpPath = soundPath.cSharpPath,
            let bFlatPath = soundPath.bFlatPath,
            let bSoundPath = soundPath.bSoundPath,
            let ASoundPath = soundPath.ASoundPath else { print("error getting soundsFilePath"); return }
        
        let soundsArray = [gSoundPath,gSharpPath,fSharpPath,fSoundPath,eFlatSoundPath,eSoundPath,dSoundPath,cSoundPath,cSharpPath,bFlatPath,bSoundPath,ASoundPath]
        
        let randomIndex = Int(arc4random_uniform(11))
        
        let randomSoundPath = soundsArray[randomIndex]
        
        do {
            try soundPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: randomSoundPath) as URL)
            soundPlayer.play()
        } catch {}
        
        
    }
    
    
    
}
