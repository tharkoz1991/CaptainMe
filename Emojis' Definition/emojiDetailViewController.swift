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
    
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var emojiEnlarged: UILabel!
    
    var emojiDef = "";
    var singleEmoji = "💀"; //MainEmojiList.
    
    
    
    
    override func viewDidLoad() {
        
        var rightSwipe = UISwipeGestureRecognizer(target: self, action: Selector("handleSwipes:"))
        rightSwipe.direction = .Right
        view.addGestureRecognizer(rightSwipe)

        view.backgroundColor = UIColor.clearColor();
        
        emojiEnlarged.text = singleEmoji;
        emojiDefinition.text = emojiDef;
    }
    
    func handleSwipes(sender:UISwipeGestureRecognizer) {
        if (sender.direction == .Right) {
            performSegueWithIdentifier("SwipeBackSegue", sender: self)
        }
    }
}

