//
//  String+Extension.swift
//  FoodApp
//
//  Created by Macbook Pro on 01/09/2022.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
