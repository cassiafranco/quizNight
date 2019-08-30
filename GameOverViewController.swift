//
//  GameOverViewController.swift
//  quizNigth
//
//  Created by Cassia Franco on 17/08/2019.
//  Copyright © 2019 Cassia Franco. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBOutlet weak var pontuacaoLabel: UILabel!
    
    var pontuacao: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pontuacaoLabel.text = "\(pontuacao)"
        
        // Do any additional setup after loading the view.
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
