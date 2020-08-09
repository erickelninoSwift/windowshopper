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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculatebutton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 70))
       
        calculatebutton.setTitle("Claculate", for: .normal)
        calculatebutton.setTitleColor(.init(white: 1.0, alpha: 0.87), for: .normal)
        calculatebutton.backgroundColor = UIColor.systemOrange.withAlphaComponent(2.0)
        calculatebutton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
   
        wagetextfield.inputAccessoryView = calculatebutton
        itemprice.inputAccessoryView = calculatebutton
    }

    @objc func calculate()
    {
        print("hello wolrd")
    }

}

