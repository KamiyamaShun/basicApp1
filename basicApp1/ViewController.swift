//
//  ViewController.swift
//  basicApp1
//
//  Created by 神山駿 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    @IBOutlet weak var countLable: UILabel!
    
    @IBOutlet weak var tapLable: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func tap(_ sender: Any) {
        count += 1
        countLable.text = "\(count)"
        
        if count > 5 {
            image.image = UIImage(named: "back2")
        }
        if count > 10 {
            image.image = UIImage(named: "back3")
        }
        
        switch count {
        case 6:
            tapLable.text = "6です"
            break
        
        case 10:
            tapLable.text = "10です"
            break
            
        default:
            tapLable.text = "6でも10でもありません"
            break
        }
    }
    
}

