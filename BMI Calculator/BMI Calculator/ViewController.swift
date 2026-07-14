//
//  ViewController.swift
//  BMI Calculator
//
//  Created by APPLE on 13/07/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AgeText: UITextField!
    @IBOutlet weak var HeightText: UITextField!
    @IBOutlet weak var WeightText: UITextField!
    @IBOutlet weak var Resulttext: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func ResultButton(_ sender: UIButton) {

        let Age = Double(AgeText.text!)!
        let Height = Double(HeightText.text!)!
        let HeightInMeters = Height / 100
        let Weight = Double(WeightText.text!)!

        let BMI = Weight / (HeightInMeters * HeightInMeters)

        Resulttext.text = String(format: "Your BMI is %.2f", BMI)
    }

}
