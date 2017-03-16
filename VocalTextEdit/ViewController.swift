//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Shen Xiaochun on 2017/3/16.
//  Copyright © 2017年 Sigutian. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet var textView: NSTextView!
    
    @IBAction func speakButtonClicked(_ sender: NSButton) {
        print("The speak button was clicked")
    }
    
    @IBAction func stopButtonClicked(_ sender: NSButton) {
        print("The stop button was clicked")
    }

    

}

