//
//  FirstVC.swift
//  EF25HealthPlanApp
//
//  Created by iKame Elite Fresher 2025 on 3/7/25.
//

import UIKit

class FirstVC: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var continueBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupButton()
    }
    
    @IBAction func continueBtnTapped(_ sender: UIButton) {
        let vc = IntroVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func setupLabel() {
        titleLabel.text = "Health Plan Pro"
        descLabel.text = "Providing workout routines and health information to support well-being."
        descLabel.numberOfLines = 0
    }
    
    func setupButton() {
        continueBtn.setTitle("Continue", for: .normal)
        continueBtn.backgroundColor = .primary1
        continueBtn.tintColor = .neutral5
        continueBtn.layer.cornerRadius = 16
        continueBtn.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        continueBtn.layer.shadowColor = UIColor.blue.cgColor
        continueBtn.layer.shadowOpacity = 0.32
        continueBtn.layer.shadowOffset = CGSize(width: 0, height: 4)
        continueBtn.layer.shadowRadius = 12
    }
}
