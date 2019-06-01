//
//  MovieDetailController.swift
//  watch Extension
//
//  Created by Miguel Angel Arenas Correa on 6/1/19.
//  Copyright © 2019 Usuario. All rights reserved.
//

import WatchKit

class MovieDetailController: WKInterfaceController {

    @IBOutlet weak var movieNameLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        let movieName = context as! String
        movieNameLabel.setText(movieName)
    }
}
