//
//  InterfaceController.swift
//  watch Extension
//
//  Created by Guillermo Costa on 5/18/19.
//  Copyright © 2019 Usuario. All rights reserved.
//

import WatchKit
import Foundation


public extension WKInterfaceImage {
    
    @discardableResult public func setImageWithUrl(url:String, scale: CGFloat = 1.0) -> WKInterfaceImage? {
        
        URLSession.shared.dataTask(with: NSURL(string: url)! as URL) { data, response, error in
            if (data != nil && error == nil) {
                let image = UIImage(data: data!, scale: scale)
                
                DispatchQueue.main.async {
                    self.setImage(image)
                }
            }
            }.resume()
        
        return self
    }
}


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var movieNameLabel: WKInterfaceLabel!
    
    @IBOutlet weak var imageMovie: WKInterfaceImage!
    @IBOutlet weak var swipeGestureRecognizer: WKSwipeGestureRecognizer!
    var swipePosition = 0;
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        let movieName = "Movie \(swipePosition)"
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    override func didAppear() {
        super.didAppear()
        swipeGestureRecognizer.direction = [.left, .right]
    }
    
    
    @IBAction func handleSwipe(_ sender: Any) {
        if (swipeGestureRecognizer.direction == .left) {
            swipePosition-=1
        }else{
            swipePosition+=1
        }
        
        let movieName = "Movie \(swipePosition)"
        movieNameLabel.setText(movieName)
        imageMovie.setImageWithUrl(url : "https://picsum.photos/200/300", scale: 1.0)
    }
    
}
