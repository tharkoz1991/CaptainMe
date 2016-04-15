//
//  Main Emoji List.swift
//  Emojis' Definition
//
//  Created by Tomas Aviles on 6/29/15.
//  Copyright (c) 2015 Tomas Aviles. All rights reserved.
//

import Foundation
import UIKit

class MainEmojiList : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet weak var tableView: UITableView!; //variable: tableView
 
    var emojis = ["😎", "😏", "😦", "😷", "😓", "😪", "💛", "💘", "💝", "👓", "💪🏼", "👹", "👼", "🇨🇱", "🇺🇸", "🐣"];
    
    var emoji = "💀";
    
    override func viewDidLoad()
    {
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.emojis.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var emojiCell = UITableViewCell();
        emojiCell.backgroundColor = UIColor.blackColor(); //cell color
        emojiCell.textLabel?.text = emojis[indexPath.row]; //textLabel! <——
        return emojiCell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        emoji = emojis[indexPath.row];
        
        performSegueWithIdentifier("tableToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        var detailViewController = segue.destinationViewController as! emojiDetailViewController;
        
        detailViewController.emojiDef = "I know you.. 😏";
        detailViewController.singleEmoji = emoji;
        switch emoji
        {
        case "😎":
            detailViewController.emojiDef = "Ma nigga be chillin'."
            
        case "😏":
            detailViewController.emojiDef = "You know what I mean? Hehe."
            

        default:
            detailViewController.emojiDef = "No definition found. We're sorry 😔"
        }
    }
    
}