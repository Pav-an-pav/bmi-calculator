//
//  GradientView.swift
//  BMI-Calculator
//
//  Created by Anna Pavlova on 07.06.2024.
//

import Foundation
import UIKit

class GradientView: UIView {
    @IBInspectable private var startColor: UIColor? {
        didSet {
            setupGradientColor()
        }
    }
    @IBInspectable private var endColor: UIColor?{
        didSet {
            setupGradientColor()
        }
    }
    
    private let gradient = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }
    
    private func setupGradient () {
        self.layer.addSublayer(gradient)
        setupGradientColor()
        //[UIColor(red: 179/255, green: 79/255, blue: 120/255, alpha: 1).cgColor, UIColor(red: 218/255, green: 67/255, blue: 70/255, alpha: 1).cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
    }
    private func setupGradientColor () {
        if let startColor = startColor, let endColor = endColor {
            gradient.colors = [startColor.cgColor, endColor.cgColor]
        }
    }
}
