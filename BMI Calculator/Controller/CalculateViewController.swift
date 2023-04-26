//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Dmitry Medvedev on 17.04.2023.
//

import UIKit
import SnapKit

class CalculateViewController: UIViewController {
    
    private let views = CalculateViews.shared
    private let resultViews = ResultViews.shared
    private var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        targetForCalculateButton()
        targetsForSliders()
    }
    
    private func targetForCalculateButton() {
        views.calculateButton.addTarget(self, action: #selector(moveToResult), for: .touchUpInside)
    }
    
    private func targetsForSliders() {
        views.firstSlider.addTarget(self, action: #selector(setupYourHeight), for: .allTouchEvents)
        views.secondSlider.addTarget(self, action: #selector(setupYourWeight), for: .allTouchEvents)
    }
    
    @objc private func moveToResult() {
        let resultVC = ResultViewController()
        resultViews.numberOfResultLabel.text = calculatorBrain.getBMIValue()
        resultViews.recomendationLabel.text = calculatorBrain.getAdvice()
        resultVC.view.backgroundColor = calculatorBrain.getColor()
        present(resultVC, animated: true)
    }
    
    @objc private func setupYourHeight(sender: UISlider) {
        views.secondHeightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    @objc private func setupYourWeight(sender: UISlider) {
        views.secondWeightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }

}

extension CalculateViewController {
    private func addViews() {
        view.addSubview(views.backgroundView)
        view.addSubview(views.verticalStack)
        views.verticalStack.addArrangedSubview(views.centralLabel)
        views.verticalStack.addArrangedSubview(views.firstHorizontalStack)
        views.verticalStack.addArrangedSubview(views.firstSlider)
        views.verticalStack.addArrangedSubview(views.secondHorizontalStack)
        views.verticalStack.addArrangedSubview(views.secondSlider)
        views.verticalStack.addArrangedSubview(views.calculateButton)
        
        views.firstHorizontalStack.addArrangedSubview(views.firstHeightLabel)
        views.firstHorizontalStack.addArrangedSubview(views.secondHeightLabel)
        
        views.secondHorizontalStack.addArrangedSubview(views.firstWeightLabel)
        views.secondHorizontalStack.addArrangedSubview(views.secondWeightLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        views.backgroundView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        views.verticalStack.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.snp.leadingMargin)
            make.trailing.equalTo(view.snp.trailingMargin)
        }
        
        views.firstHorizontalStack.snp.makeConstraints { make in
            make.height.equalTo(21)
        }
        
        views.firstSlider.snp.makeConstraints { make in
            make.height.equalTo(60)
        }
        
        views.secondHorizontalStack.snp.makeConstraints { make in
            make.height.equalTo(21)
        }
        
        views.secondSlider.snp.makeConstraints { make in
            make.height.equalTo(60)
        }
        
        views.calculateButton.snp.makeConstraints { make in
            make.height.equalTo(51)
        }
    }
}
