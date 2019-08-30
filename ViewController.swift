//
//  ViewController.swift
//  quizNigth
//
//  Created by Cassia Franco on 14/08/2019.
//  Copyright © 2019 Cassia Franco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quizNightLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quizNightLogo.frame = CGRect(x: view.bounds.width / 2 - quizNightLogo.frame.width / 2, y: 50 , width: quizNightLogo.frame.width, height: quizNightLogo.frame.height)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func voltandoPraCa(segue : UIStoryboardSegue){
        
        
        }
    
    }

