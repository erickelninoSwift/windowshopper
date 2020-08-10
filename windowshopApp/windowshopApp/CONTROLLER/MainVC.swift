//
//  ViewController.swift
//  windowshopApp
//
//  Created by El nino Cholo on 2020/08/09.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var wagetextfield: vctextfields!
    @IBOutlet weak var itemprice: itemsfield!
    
    @IBOutlet weak var resultlabel: UILabel!
    
    @IBOutlet weak var hourslabel: UILabel!
    @IBOutlet weak var clearbutton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        restFunc()
        
        let calculatebutton = UIButton(frame: CGRect(x: 0, y: 70, width: view.frame.size.width, height: 70))
        
        calculatebutton.setTitle("Claculate", for: .normal)
        calculatebutton.setTitleColor(.init(white: 1.0, alpha: 0.87), for: .normal)
        calculatebutton.backgroundColor = UIColor.systemOrange.withAlphaComponent(2.0)
        calculatebutton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        
        wagetextfield.inputAccessoryView = calculatebutton
        itemprice.inputAccessoryView = calculatebutton
    }
    
    @objc func calculate()
    {
        if let wagina = wagetextfield.text , let item = itemprice.text
        {
            if let wagedouble = Double(wagina) , let price = Double(item)
            {
                view.endEditing(true)

                resultlabel.isHidden = false
                hourslabel.isHidden = false
                
                resultlabel.text = "\(wage.gethours(forwage: wagedouble , forprice: price))"
            }
        }
        
    }
    
    @IBAction func clearbutton(_ sender: Any)
    {
        restFunc()
    }
    
    
    //MARK: reset function
    
    
    func restFunc()
    {
        resultlabel.isHidden = true
        hourslabel.isHidden = true
        wagetextfield.text = ""
        itemprice.text = ""
    }
    
    
}

