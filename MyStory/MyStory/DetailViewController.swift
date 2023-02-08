//
//  DetailViewController.swift
//  MyStory
//
//  Created by Jose Castro on 2/7/23.
//

import UIKit

class DetailViewController: UIViewController {

    var bttnInfo : bttnInfo?
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var infoText: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let bttnInfo = bttnInfo {
            image.image = bttnInfo.image
            infoText.text = bttnInfo.name
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
