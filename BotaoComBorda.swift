//
//  BotaoComBorda.swift
//  quizNigth
//
//  Created by Cassia Franco on 14/08/2019.
//  Copyright © 2019 Cassia Franco. All rights reserved.
//

import UIKit

class BotaoComBorda: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = 5
    }

}
