//
//  ViewController.swift
//  Caoculadora
//
//  Created by Alessandra Pereira on 25/10/20.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var informationView: UIView!
    @IBOutlet var yearsTextField: UITextField!
    @IBOutlet var monthsTextField: UITextField!
    @IBOutlet var breedsPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        breedsPickerView.delegate = self
        breedsPickerView.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Size.allCases.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Size.allCases[row].description
    }
    
    
    @IBAction func calculateButton(_ sender: Any) {
        let years = Int(yearsTextField.text ?? "") ?? 0
        let months = Int(monthsTextField.text ?? "") ?? 0
        
        let dog = Dog(years: years,
                      months: months,
                      size: Size.allCases[breedsPickerView.selectedRow(inComponent: 0)])
        
        let alert = UIAlertController(title: "🐶 \(dog.humanAge()) anos!", message: "Essa seria a idade do seu cachorro em anos humanos!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
