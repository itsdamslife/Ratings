//
//  Player.swift
//  Ratings
//
//  Created by Damodar on 26/02/15.
//  Copyright (c) 2015 itsdamslife. All rights reserved.
//

import UIKit

class Player: NSObject {
    var name: String
    var game: String
    var rating: Int
    
    init(name: String, game: String, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
        super.init()
    }
}
