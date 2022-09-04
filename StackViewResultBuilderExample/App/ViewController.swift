//
//  ViewController.swift
//  StackViewResultBuilderExample
//
//  Created by Arsenii Kovalenko on 04.09.2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var containerStackView = UIStackView {
        blueView
        yellowView
    }
        .setAxis(.vertical)
        .setDistribution(.fillEqually)
        .setSpacing(12)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSubviews()
        setUpAutoLayoutConstraints()
    }
    
    private func setUpSubviews() {
        view.addSubview(containerStackView)
    }
    
    private func setUpAutoLayoutConstraints() {
        NSLayoutConstraint.activate([
            containerStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerStackView.widthAnchor.constraint(equalToConstant: 240),
            containerStackView.heightAnchor.constraint(equalToConstant: 130)
        ])
    }
}

