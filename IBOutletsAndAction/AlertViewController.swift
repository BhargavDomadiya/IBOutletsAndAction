//
//  AlertViewController.swift
//  IBOutletsAndAction
//
//  Created by R93 on 02/01/18.
//

import UIKit

class AlertViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Initializeview
    private func setup() {
        [nameTextField, loginButton].forEach {
            setCornerRadious(view: $0, cornerRadious: 10)
        }
    }
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        if nameTextField.text == "" {
          displayValidation(message: "Please enter name")

        } else if nameTextField.text?.count ?? 0 < 2 {
            displayValidation(message: "Please enter name which has more than 2 characters")
        }
        
        
        //displayActionSheet()
        
    }
    
    private func displayValidation(message: String) {
        
        let alert: UIAlertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "Okay", style: .default) { button in
            print("OKay button tapped")
        }
        let ayushButton: UIAlertAction = UIAlertAction(title: "Ayush", style: .default)
        let cancelButton: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(okButton)
        alert.addAction(ayushButton)
        alert.addAction(cancelButton)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    private func displayActionSheet() {
        
        let alert: UIAlertController = UIAlertController(title: "Color e color", message: "Kevo color?", preferredStyle: .actionSheet)
        let yellowButton: UIAlertAction = UIAlertAction(title: "Yellow", style: .default) { button in
            self.loginButton.backgroundColor = .yellow
            self.view.backgroundColor = .gray
        }
        let redButton: UIAlertAction = UIAlertAction(title: "Red", style: .default) { button in
            self.loginButton.backgroundColor = .red
            self.view.backgroundColor = .blue
        }
        let greenButton: UIAlertAction = UIAlertAction(title: "Green", style: .default) { button in
   
        }
        let cancelButton: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(yellowButton)
        alert.addAction(redButton)
        alert.addAction(greenButton)
        alert.addAction(cancelButton)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    
    func setCornerRadious(view: UIView?, cornerRadious: CGFloat) {
        view?.layer.cornerRadius = cornerRadious
        view?.layer.masksToBounds = true
    }
}
