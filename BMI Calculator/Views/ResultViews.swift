//
//  ResultViews.swift
//  BMI Calculator
//
//  Created by Dmitry Medvedev on 17.04.2023.
//

import UIKit

final class ResultViews {
    
    static let shared = ResultViews()
    
    lazy var backgroundView: UIImageView = {
        let element = UIImageView()
        element.image = UIImage(named: "result_background")
        return element
    }()
    
    lazy var verticalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.distribution = .fill
        element.spacing = 8
        return element
    }()
    
    lazy var yourResultLabel: UILabel = {
        let element = UILabel()
        element.text = "YOUR RESULT"
        element.textColor = .white
        element.font = UIFont.boldSystemFont(ofSize: 35)
        element.numberOfLines = 0
        element.textAlignment = .center
        return element
    }()
    
    lazy var numberOfResultLabel: UILabel = {
        let element = UILabel()
        element.text = "19.5"
        element.textColor = .white
        element.font = UIFont.boldSystemFont(ofSize: 80)
        element.numberOfLines = 0
        element.textAlignment = .center
        return element
    }()
    
    lazy var recomendationLabel: UILabel = {
        let element = UILabel()
        element.text = "EAT SOME MORE SNACKS!"
        element.textColor = .white
        element.font = UIFont.systemFont(ofSize: 20, weight: .light)
        element.numberOfLines = 0
        element.textAlignment = .center
        return element
    }()
    
    lazy var recalculateButton: UIButton = {
        let element = UIButton(type: .system)
        element.setTitle("RECALCULATE", for: .normal)
        element.setTitleColor(UIColor(hexString: "7472D2"), for: .normal)
        element.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        element.backgroundColor = .white
        return element
    }()
    
    
}
