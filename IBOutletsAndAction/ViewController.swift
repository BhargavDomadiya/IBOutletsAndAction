//
//  ViewController.swift
//  IBOutletsAndAction
//
//  Created by R93 on 01/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        nameLabel.text = " Firstname: Meet"
        surNameLabel.text = " Surname: Desai"
        
        
        nameLabel.textColor = .gray
        nameLabel.backgroundColor = .yellow
        nameLabel.textAlignment = .left
        //nameLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
//        nameLabel.layer.cornerRadius = 10
//        nameLabel.layer.masksToBounds = true
//        nameLabel.layer.borderColor = UIColor.red.cgColor
//        nameLabel.layer.borderWidth = 1
        
        
        surNameLabel.textColor = .gray
        surNameLabel.backgroundColor = .yellow
        surNameLabel.textAlignment = .left
        
        
//        surNameLabel.layer.cornerRadius = 10
//        surNameLabel.layer.masksToBounds = true
//        surNameLabel.layer.borderColor = UIColor.red.cgColor
//        surNameLabel.layer.borderWidth = 1
        
        
        
//        setCornerRadious(view: nameLabel, cornerRadious: 10)
//        setCornerRadious(view: surNameLabel, cornerRadious: 20)
//        setBorder(view: nameLabel, color: .red, width: 1)
//        setBorder(view: surNameLabel, color: .green, width: 2)
        
        
        [nameLabel, surNameLabel, loginButton].forEach {
            setBorder(view: $0, color: .red, width: 1)
            setCornerRadious(view: $0, cornerRadious: 10)
        }
    }
    
    func setCornerRadious(view: UIView?, cornerRadious: CGFloat) {
        view?.layer.cornerRadius = cornerRadious
        view?.layer.masksToBounds = true
    }

    func setBorder(view: UIView?, color: UIColor, width: CGFloat) {
        view?.layer.borderColor = color.cgColor
        view?.layer.borderWidth = width
    }
    
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        loginButton.setTitle("Login LOgin", for: .normal)
        [nameLabel, surNameLabel, loginButton].forEach {
            $0?.backgroundColor = .blue
        }
    }
    
}

