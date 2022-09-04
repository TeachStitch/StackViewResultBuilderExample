//
//  UIStackView+Extensions.swift
//  StackViewResultBuilderExample
//
//  Created by Arsenii Kovalenko on 04.09.2022.
//

import UIKit

extension UIStackView {
    
    convenience init(@StackViewBuilder views: () -> [UIView]) {
        self.init()
        views().forEach { addArrangedSubview($0) }
    }
}
