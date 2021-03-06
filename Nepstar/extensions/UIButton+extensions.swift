//
//  UIButton+extensions.swift
//  Nepstar
//
//  Created by Parlad Dhungana on 2018-08-21.
//  Copyright © 2018 Parlad Dhungana. All rights reserved.
//

import UIKit

extension UIButton{
    
    func designUIButton(){
        self.layer.cornerRadius = 5
    }
    
    
    func designButttonText(_ firstText: String, _ secondText: String){
        
        let attributedText = NSMutableAttributedString(string: firstText, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15), NSAttributedStringKey.foregroundColor: UIColor.white])
        
        attributedText.append(NSAttributedString(string: secondText, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 15), NSAttributedStringKey.foregroundColor: UIColor.rgb(red: 2, green: 229, blue: 243)]))
        
        self.setAttributedTitle(attributedText, for: .normal)
        
    }
    
    
}
