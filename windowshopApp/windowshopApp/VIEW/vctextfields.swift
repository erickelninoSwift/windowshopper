//
//  vctextfields.swift
//  windowshopApp
//
//  Created by El nino Cholo on 2020/08/09.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class vctextfields: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        layer.cornerRadius = 30
        textColor = UIColor.white.withAlphaComponent(0.97)
        backgroundColor = #colorLiteral(red: 0.9959813952, green: 0.9961279035, blue: 0.9959613681, alpha: 0.25)
        textAlignment = .center
        clearButtonMode = .always
//        font = UIFont.boldSystemFont(ofSize: 16)
        attributedPlaceholder = NSAttributedString(string: "Your hourly wage", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.97)])
        
        
        
    }
    
}
