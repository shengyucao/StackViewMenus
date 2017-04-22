//
//  ViewController.swift
//  StackViewMenus
//
//  Created by Shengyu Cao on 4/22/17.
//  Copyright © 2017 Shengyu Cao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelShown: UILabel!
    @IBOutlet var emojiView: [UIView]! {
        didSet {
            emojiView.forEach {
                $0.isHidden = true
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSettingButtonPressed(_ sender: UIButton) {
    
        UIView.animate(withDuration: 0.3) { 
            
            self.emojiView.forEach {
                $0.isHidden = !$0.isHidden
                
                
                
            }
        }
        //change setting button tag to 1 and leave all other buttons tag at 0
        if sender.tag == 1{
            self.labelShown.text = ""
        } else {
            
            if let emojiIcon = sender.titleLabel?.text?.characters.first {
            
                self.labelShown.text = "\(emojiIcon)"
            }
        }
    }
    
    
    
    
    

}

