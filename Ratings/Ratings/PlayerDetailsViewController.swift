//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by Damodar on 26/02/15.
//  Copyright (c) 2015 itsdamslife. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {

    var player:Player!
    var game:String = "Chess"
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = game
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Unwind segue from game picker view
    @IBAction func selectedGame(segue:UIStoryboardSegue) {
        let gamePickerViewController = segue.sourceViewController as GamePickerViewController
        if let selectedGame = gamePickerViewController.selectedGame {
            detailLabel.text = selectedGame
            game = selectedGame
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "SavePlayerDetail" {
            player = Player(name: nameTextField.text, game:game, rating: 1)
        }
        if segue.identifier == "PickGame" {
            let gamePickerViewController = segue.destinationViewController as GamePickerViewController
            gamePickerViewController.selectedGame = game
        }
    }

    // MARK: - Table view delegates
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }

}
