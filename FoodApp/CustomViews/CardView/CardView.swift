//
//  CardView.swift
//  FoodApp
//
//  Created by Macbook Pro on 01/09/2022.
//

import Foundation
import UIKit

class CardView: UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetUp()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetUp()
    }
    private func initialSetUp(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        cornerRadius = 10
    }
}
