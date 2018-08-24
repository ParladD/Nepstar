//
//  UIColor+extensions.swift
//  Nepstar
//
//  Created by Parlad Dhungana on 2018-08-23.
//  Copyright © 2018 Parlad Dhungana. All rights reserved.
//

import UIKit

extension UIColor{
    
    static func redGreenBlue(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
