//
//  Document.swift
//  VocalTextEdit
//
//  Created by Shen Xiaochun on 2017/3/16.
//  Copyright © 2017年 Sigutian. All rights reserved.
//

import Cocoa

class Document: NSDocument {
    
    enum Error: Swift.Error, LocalizedError {
        case UTF8Encoding
        case UTF8Decoding
        
        var failureReason: String? {
            switch self {
            case .UTF8Encoding: return "File cannot be encoded in UTF-8."
            case .UTF8Decoding: return "File is not valid UTF-8."
            }
        }
    }
    


    var contents: String = ""
    
    override class func autosavesInPlace() -> Bool {
        return true
    }

    override func makeWindowControllers() {
        // Returns the Storyboard that contains your Document window.
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        let windowController = storyboard.instantiateController(withIdentifier: "Document Window Controller") as! NSWindowController
        self.addWindowController(windowController)
    }

    override func data(ofType typeName: String) throws -> Data {

        
        let windowController = windowControllers[0]
        let viewController = windowController.contentViewController as! ViewController
        let contents = viewController.textView.string ?? ""
        
        guard let data = contents.data(using: .utf8) else {
            throw Document.Error.UTF8Encoding
        }
        return data
    
    

    }

    override func read(from data: Data, ofType typeName: String) throws {

        let windowController = windowControllers[0]
        let viewController = windowController.contentViewController as! ViewController
        
           }
    
    


}

