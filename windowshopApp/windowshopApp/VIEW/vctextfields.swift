//
//  vctextfields.swift
//  windowshopApp
//
//  Created by El nino Cholo on 2020/08/09.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

@IBDesignable class vctextfields: UITextField {
    
    override func draw(_ rect: CGRect) {
        let currencylabel = UILabel(frame: CGRect(x: CGFloat(5), y: CGFloat(frame.size.width / 2 - 10), width: 20, height: 20))
        
        // MARK: Create label
        currencylabel.backgroundColor = UIColor.white.withAlphaComponent(0.97)
        currencylabel.textColor = UIColor.black
        currencylabel.textAlignment = .center
        currencylabel.layer.cornerRadius = 7.5
        currencylabel.clipsToBounds = true
        
        // MARK: get the currency format of the country
      
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencylabel.text = formatter.internationalCurrencySymbol
        
          self.addSubview(currencylabel)
    }
    override func prepareForInterfaceBuilder() {
       customizedView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
    }
    
    func customizedView()
    {
        
        textColor = UIColor.white.withAlphaComponent(0.97)
        backgroundColor = #colorLiteral(red: 0.9959813952, green: 0.9961279035, blue: 0.9959613681, alpha: 0.25)
        textAlignment = .center
        clearButtonMode = .always
        //        font = UIFont.boldSystemFont(ofSize: 16)
        attributedPlaceholder = NSAttributedString(string: "Your hourly wage", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.97)])
        layer.cornerRadius = 15.0
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 0.5
        layer.masksToBounds = true
        
        keyboardAppearance = .dark
        keyboardType = .decimalPad
    }
    
}
