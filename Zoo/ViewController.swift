//
//  ViewController.swift
//  Zoo
//
//  Created by Edgar Arakelyan on 10.05.22.
//

import UIKit

class ViewController: UIViewController {
    var titleLabel: UILabel!
    var pickerView: UIPickerView!
    var getStartedBtn: UIButton!
    var languageData = ["Armenian", "Russian", "English"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initTitleLable()
        initLanguagePicker()
        initGetStartedBtn()
        addViews()
        activateConstraints()
    }

}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    
    func pickerView(
        _ pickerView: UIPickerView,
        titleForRow row: Int,
        forComponent component: Int)
    -> String? {
        return languageData[row]
    }
}

extension ViewController {
    func initTitleLable() {
        titleLabel = UILabel()
        titleLabel.text = "Welcome ZOO"
        titleLabel.textColor = .black
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func initLanguagePicker() {
        pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func initGetStartedBtn() {
        getStartedBtn = UIButton()
        getStartedBtn.backgroundColor = .black
        getStartedBtn.layer.cornerRadius = 10
        getStartedBtn.setTitle("Get Started", for: .normal)
        getStartedBtn.setTitleColor(.white, for: .normal)
        getStartedBtn.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addViews() {
        view.addSubview(titleLabel)
        view.addSubview(pickerView)
        view.addSubview(getStartedBtn)
    }
    
    func activateConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            
            pickerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pickerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            getStartedBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getStartedBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            getStartedBtn.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}
