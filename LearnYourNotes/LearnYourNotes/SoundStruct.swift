//
//  SoundStruct.swift
//  LearnYourNotes
//
//  Created by ALIA M NEELY on 6/12/17.
//  Copyright © 2017 Wylan. All rights reserved.
//

import Foundation
import AVFoundation

struct SoundsFileStruct {
    
    var soundPlayer:AVAudioPlayer = AVAudioPlayer()
    
    let gSoundPath = Bundle.main.path(forResource: "g", ofType: "wav")
    let gSharpPath = Bundle.main.path(forResource: "gsharp", ofType: "wav")
    let fSharpPath = Bundle.main.path(forResource: "fsharp", ofType: "wav")
    let fSoundPath = Bundle.main.path(forResource: "f", ofType: "wav")
    let eFlatSoundPath = Bundle.main.path(forResource: "eflat", ofType: "wav")
    let eSoundPath = Bundle.main.path(forResource: "e", ofType: "wav")
    let dSoundPath = Bundle.main.path(forResource: "d", ofType: "wav")
    let cSoundPath = Bundle.main.path(forResource: "c", ofType: "wav")
    let cSharpPath = Bundle.main.path(forResource: "csharp", ofType: "wav")
    let bFlatPath = Bundle.main.path(forResource: "bflat", ofType: "wav")
    let bSoundPath = Bundle.main.path(forResource: "b", ofType: "wav")
    let ASoundPath = Bundle.main.path(forResource: "gsharp", ofType: "wav") 

    mutating func callHardRandomSound(){
        
        guard let gSoundPath = gSoundPath,
            let gSharpPath = gSharpPath,
            let fSharpPath = fSharpPath,
            let fSoundPath = fSoundPath,
            let eFlatSoundPath = eFlatSoundPath,
            let eSoundPath = eSoundPath,
            let dSoundPath = dSoundPath,
            let cSoundPath = cSoundPath,
            let cSharpPath = cSharpPath,
            let bFlatPath = bFlatPath,
            let bSoundPath = bSoundPath,
            let ASoundPath = ASoundPath else { print("error getting soundsFilePath"); return }
        
        let soundsArray = [gSoundPath,gSharpPath,fSharpPath,fSoundPath,eFlatSoundPath,eSoundPath,dSoundPath,cSoundPath,cSharpPath,bFlatPath,bSoundPath,ASoundPath]
        
        let randomIndex = Int(arc4random_uniform(11))
        
        let randomSoundPath = soundsArray[randomIndex]
        
        do {
            try self.soundPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: randomSoundPath) as URL)
            soundPlayer.play()
        } catch {}
        
    }
    
    mutating func callEasyRandomSound() -> Int?{
        
        guard let gSoundPath = gSoundPath,
            let fSoundPath = fSoundPath,
            let eSoundPath = eSoundPath,
            let dSoundPath = dSoundPath,
            let cSoundPath = cSoundPath,
            let bSoundPath = bSoundPath,
            let ASoundPath = ASoundPath else { print("error getting soundsFilePath"); return(nil) }
        
        let soundsArray = [ASoundPath,bSoundPath,cSoundPath,dSoundPath,eSoundPath,fSoundPath,gSoundPath]
        
        let randomIndex = Int(arc4random_uniform(6))
        
        let randomSoundPath = soundsArray[randomIndex]
        
        do {
            try self.soundPlayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: randomSoundPath) as URL)
            soundPlayer.play()
        } catch {}
        
        return randomIndex
        
    }
    
    
    
    
    
}

