//
//  PuppygramViewController.swift
//  Puppygram
//
//  Created by Alumne on 27/11/2020.
//

import UIKit

class PuppygramViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var like: UIButton!
    var likes = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleButtonLike(_ sender: Any) {
        like.isSelected = !like.isSelected
        if like.isSelected {
            likes = 1
        }
        else {
            likes = 0
        }
    }
    
  
    @IBAction func doubleTapHandler(_ sender: Any) {
        
        like.isSelected = !like.isSelected
        if like.isSelected {
            likes = 1
        }
        else {
            likes = 0
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
