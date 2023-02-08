//
//  ViewController.swift
//  MyStory
//
//  Created by Jose Castro on 2/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let aboutSteve = bttnInfo(name: "Steve Jobs, in full Steven Paul Jobs, (born February 24, 1955, San Francisco, California, U.S.—died October 5, 2011, Palo Alto, California), cofounder of Apple Computer, Inc. (now Apple Inc.), and a charismatic pioneer of the personal computer era.", image: UIImage(named:"Image 1")!)
    
    
    let aboutApple = bttnInfo(name: "Apple Computers, Inc. was founded on April 1, 1976, by college dropouts Steve Jobs and Steve Wozniak, who brought to the new company a vision of changing the way people viewed computers. Jobs and Wozniak wanted to make computers small enough for people to have them in their homes or offices.", image: UIImage(named:"Image 2")!)
    
    let famousQuote = bttnInfo(name: "You can’t connect the dots looking forward; you can only connect them looking backwards. So you have to trust that the dots will somehow connect in your future.", image: UIImage(named:"Image 3")!)
    
    
    
    var buttons: [bttnInfo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buttons = [aboutSteve, aboutApple, famousQuote]
        
    }

    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.bttnInfo = buttons[0]
            } else if tappedView.tag == 1 {
                detailViewController.bttnInfo = buttons[1]
            } else if tappedView.tag == 2 {
                detailViewController.bttnInfo = buttons[2]
            } else {
                print("no button was tapped, please check your selection.")
            }
        }
    }
    
}

