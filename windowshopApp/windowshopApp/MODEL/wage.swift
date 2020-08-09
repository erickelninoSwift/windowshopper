//
//  wage.swift
//  windowshopApp
//
//  Created by El nino Cholo on 2020/08/10.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import Foundation

class wage
{
    class func gethours( forwage wage:Double,forprice price: Double) -> Int
    {
        return Int(ceil(price / wage))
    }
}
