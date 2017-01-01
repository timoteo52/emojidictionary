//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by poppydoodle on 1/1/17.
//  Copyright © 2017 poppydoodle. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefLabel: UILabel!
    
    var emoji = "no emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //print(emoji)
        emojiLabel.text = emoji
        
        
        if emoji == "😎" {
        emojiDefLabel.text = "A happy cool dude"
        }
        if emoji == "👿" {
            emojiDefLabel.text = "Im a mad devil"
        }
        if emoji == "🐼" {
            emojiDefLabel.text = "I love pandas!"
        }
        if emoji == "😏" {
            emojiDefLabel.text = "Im up to something no good!"
        }
        if emoji == "😹" {
            emojiDefLabel.text = "Hysterical!"
        }
        if emoji == "👍" {
            emojiDefLabel.text = "Thumbs up, WAY up!"
        }
        if emoji == "🎁" {
            emojiDefLabel.text = "A gift for you!"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
