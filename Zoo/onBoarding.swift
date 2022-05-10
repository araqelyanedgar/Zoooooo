////
////  onBoarding.swift
////  Zoo
////
////  Created by Edgar Arakelyan on 10.05.22.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    var titleLabel: UILabel!
//    var languagePicker: UIPickerView!
//    var getStartedBtn: UIButton!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    func numberOfComponents(in languagePicker: UIPickerView) -> Int {
//        3
//    }
//
//    func pickerView(_ languagePicker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        1
//    }
//
//}
//
//extension ViewController {
//    func initTitleLable() {
//        titleLabel = UILabel()
//        titleLabel.text = "Welcome ZOO"
//        titleLabel.textColor = .systemPink
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//    }
//
//    func initTanguagePicker() {
//        languagePicker = UIPickerView()
//        languagePicker.delegate = self
//        languagePicker.dataSource = self
//    }
//
//    func initGetStartedBtn() {
//        getStartedBtn = UIButton()
//        getStartedBtn.backgroundColor = .black
//        getStartedBtn.layer.cornerRadius = 10
//        getStartedBtn.setTitle("Get Started", for: .normal)
//        getStartedBtn.setTitleColor(.black, for: .normal)
//        getStartedBtn.translatesAutoresizingMaskIntoConstraints = false
//    }
//
//    func activateConstraints() {
//        NSLayoutConstraint.activate([
//            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
//            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
//
//            languagePicker.centerXAnchor.constraint(equalTo: centerXAnchor),
//            languagePicker.centerYAnchor.constraint(equalTo: centerYAnchor),
//
//            getStartedBtn.centerXAnchor.constraint(equalTo: centerXAnchor),
//            getStartedBtn.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 100)
//        ])
//    }
//}
