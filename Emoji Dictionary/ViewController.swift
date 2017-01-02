//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by poppydoodle on 12/31/16.
//  Copyright © 2016 poppydoodle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var emojitableview: UITableView!
    
    var emojisarray : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojitableview.dataSource = self
        emojitableview.delegate = self
        
        emojisarray = makeEmojiArray()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojisarray.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //  print(indexPath.row)
        let cell = UITableViewCell()
        
        let emoji = emojisarray[indexPath.row]
        
        cell.textLabel?.text = emoji.stringEmoji
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let emoji = emojisarray[indexPath.row]
        performSegueWithIdentifier("moveSegue", sender: emoji)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //print(sender)
        let defVC = segue.destinationViewController as! DefinitionViewController
        defVC.emoji  = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with sunglasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😈"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "A devil face, up to no good"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😏"
        emoji3.birthYear = 2012
        emoji3.category = "Smiley"
        emoji3.definition = "A smiley face with a smirk"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😹"
        emoji4.birthYear = 2013
        emoji4.category = "Smiley"
        emoji4.definition = "A cat smiley - laughing til he's crying"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👍"
        emoji5.birthYear = 2014
        emoji5.category = "Gestures"
        emoji5.definition = "Thumbs up"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🎁"
        emoji6.birthYear = 2015
        emoji6.category = "Objects"
        emoji6.definition = "A gift box with a bow"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🐼"
        emoji7.birthYear = 2005
        emoji7.category = "Animals"
        emoji7.definition = "I love pandas!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }
}

