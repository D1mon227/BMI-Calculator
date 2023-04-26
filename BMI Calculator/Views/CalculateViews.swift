//
//  Views.swift
//  BMI Calculator
//
//  Created by Dmitry Medvedev on 17.04.2023.
//

import UIKit

final class CalculateViews {
    
    static let shared = CalculateViews()
    
    lazy var backgroundView: UIImageView = {
        let element = UIImageView()
        element.image = UIImage(named: "calculate_background")
        return element
    }()
    
    lazy var verticalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.distribution = .fillProportionally
        element.spacing = 10
        return element
    }()
    
    lazy var centralLabel: UILabel = {
        let element = UILabel()
        element.text = "CALCULATE YOUR BMI"
        element.textColor = .darkGray
        element.font = UIFont.boldSystemFont(ofSize: 40)
        element.numberOfLines = 0
        return element
    }()
    
    lazy var firstHorizontalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.distribution = .equalSpacing
        return element
    }()
    
    lazy var firstHeightLabel: UILabel = {
        let element = UILabel()
        element.text = "Height"
        element.textColor = .darkGray
        element.font = UIFont.systemFont(ofSize: 17, weight: .light)
        return element
    }()
    
    lazy var secondHeightLabel: UILabel = {
        let element = UILabel()
        element.text = "1.5m"
        element.textColor = .darkGray
        element.font = UIFont.systemFont(ofSize: 17, weight: .light)
        return element
    }()
    
    lazy var firstSlider: UISlider = {
        let element = UISlider()
        element.minimumTrackTintColor = UIColor(hexString: "7472D2")
        element.minimumValue = 0
        element.maximumValue = 3
        element.value = 1.5
        element.thumbTintColor = UIColor(hexString: "7472D2")
        return element
    }()
    
    lazy var secondHorizontalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .horizontal
        element.distribution = .equalSpacing
        return element
    }()
    
    lazy var firstWeightLabel: UILabel = {
        let element = UILabel()
        element.text = "Weight"
        element.textColor = .darkGray
        element.font = UIFont.systemFont(ofSize: 17, weight: .light)
        return element
    }()
    
    lazy var secondWeightLabel: UILabel = {
        let element = UILabel()
        element.text = "100Kg"
        element.textColor = .darkGray
        element.font = UIFont.systemFont(ofSize: 17, weight: .light)
        return element
    }()
    
    lazy var secondSlider: UISlider = {
        let element = UISlider()
        element.minimumTrackTintColor = UIColor(hexString: "7472D2")
        element.minimumValue = 0
        element.maximumValue = 200
        element.value = 100
        element.thumbTintColor = UIColor(hexString: "7472D2")
        return element
    }()
    
    lazy var calculateButton: UIButton = {
        let element = UIButton(type: .system)
        element.setTitle("CALCULATE", for: .normal)
        element.setTitleColor(.white, for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        element.backgroundColor = UIColor(hexString: "62609D")
        return element
    }()
}
