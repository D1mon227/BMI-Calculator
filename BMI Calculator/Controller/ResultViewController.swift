//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dmitry Medvedev on 17.04.2023.
//

import UIKit
import SnapKit

class ResultViewController: UIViewController {
    
    private let views = ResultViews.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        addTargetToRecalculateButton()
    }
    
    private func addTargetToRecalculateButton() {
        views.recalculateButton.addTarget(self, action: #selector(recalculateButton), for: .touchUpInside)
    }
    
    @objc private func recalculateButton() {
        dismiss(animated: true)
    }
    
}

extension ResultViewController {
    private func addViews() {
        view.backgroundColor = UIColor(hexString: "337BC5")
        view.addSubview(views.backgroundView)
        view.addSubview(views.verticalStack)
        view.addSubview(views.recalculateButton)
        
        views.verticalStack.addArrangedSubview(views.yourResultLabel)
        views.verticalStack.addArrangedSubview(views.numberOfResultLabel)
        views.verticalStack.addArrangedSubview(views.recomendationLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        views.backgroundView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        views.verticalStack.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        views.recalculateButton.snp.makeConstraints { make in
            make.height.equalTo(51)
            make.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.snp.leadingMargin)
            make.trailing.equalTo(view.snp.trailingMargin)
        }
    }
}

