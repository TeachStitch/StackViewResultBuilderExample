//
//  StackViewModifier.swift
//  StackViewResultBuilderExample
//
//  Created by Arsenii Kovalenko on 04.09.2022.
//

import UIKit

protocol StackViewModifier {
    associatedtype StackView: UIStackView
    
    func setAxis(_ axis: NSLayoutConstraint.Axis) -> StackView
    func setAlignment(_ alignment: StackView.Alignment) -> StackView
    func setDistribution(_ distribution: StackView.Distribution) -> StackView
    func setSpacing(_ spacing: CGFloat) -> StackView
    func deactivateAutoresizingMaskIntoConstraintsTranslation() -> StackView
}

extension UIStackView: StackViewModifier {
    func setAxis(_ axis: NSLayoutConstraint.Axis) -> UIStackView {
        self.axis = axis
        return self
    }
    
    func setAlignment(_ alignment: UIStackView.Alignment) -> UIStackView {
        self.alignment = alignment
        return self
    }
    
    func setDistribution(_ distribution: UIStackView.Distribution) -> UIStackView {
        self.distribution = distribution
        return self
    }
    
    func setSpacing(_ spacing: CGFloat) -> UIStackView {
        self.spacing = spacing
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    func deactivateAutoresizingMaskIntoConstraintsTranslation() -> UIStackView {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}
