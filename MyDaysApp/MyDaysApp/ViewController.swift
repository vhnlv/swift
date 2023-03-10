//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Arsen on 19.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    //@IBOutlet weak var resultButton: UIButton!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
    
}

