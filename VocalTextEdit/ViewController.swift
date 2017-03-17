//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Shen Xiaochun on 2017/3/16.
//  Copyright © 2017年 Sigutian. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()
    
    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
//        print("The speak button was clicked")
//        print("I should speak \(textView.string)")
        if let contents = textView.string, !contents.isEmpty {
            speechSynthesizer.startSpeaking(contents)
        } else {
            speechSynthesizer.startSpeaking("The document is empty.")
        }

    
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
//        print("The stop button was clicked")
        speechSynthesizer.stopSpeaking()
    }

    

}

