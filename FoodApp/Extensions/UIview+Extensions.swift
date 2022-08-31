//
//  UIview+Extensions.swift
//  FoodApp
//
//  Created by Macbook Pro on 31/08/2022.
//

import UIKit

extension UIView{
   @IBInspectable var cornerRadius: CGFloat{
       get{ return self.cornerRadius}
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
