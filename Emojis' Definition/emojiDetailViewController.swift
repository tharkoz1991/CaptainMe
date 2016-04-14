//
//  emojiDetailViewController.swift
//  Emojis' Definition
//
//  Created by Tomas Aviles on 7/3/15.
//  Copyright (c) 2015 Tomas Aviles. All rights reserved.
//

import Foundation
import UIKit

class emojiDetailViewController : UIViewController {
//    @IBOutlet var View: UIView!
    
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var emojiEnlarged: UILabel!
    
    var emojiDef = "";
    var singleEmoji = "💀"; //MainEmojiList.
    
    
    
    
    override func viewDidLoad() {
        
        view.backgroundColor = UIColor.clearColor();
        
        emojiEnlarged.text = singleEmoji;
        emojiDefinition.text = emojiDef;
    }
}