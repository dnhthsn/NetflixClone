//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Đinh Thái Sơn on 20/06/2023.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
