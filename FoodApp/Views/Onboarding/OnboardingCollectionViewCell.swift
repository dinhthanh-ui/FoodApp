//
//  OnboardingCollectionViewCell.swift
//  FoodApp
//
//  Created by Macbook Pro on 31/08/2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)

    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideTittleLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    func setup(_ slide: OnboardingSile){
        slideImageView.image = slide.image
        slideTittleLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
    
}
