//
//  StackViewBuilder.swift
//  StackViewResultBuilderExample
//
//  Created by Arsenii Kovalenko on 04.09.2022.
//

import UIKit

@resultBuilder struct StackViewBuilder {
    static func buildBlock(_ views: UIView...) -> [UIView] {
        views
    }
}
