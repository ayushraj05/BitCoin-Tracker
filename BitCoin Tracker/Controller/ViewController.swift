//
//  ViewController.swift
//  BitCoin Tracker
//
//  Created by Ayush Rajpal on 01/06/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    

    //lable
    @IBOutlet weak var btcLable: UILabel!
    @IBOutlet weak var currencyLable: UILabel!
    
    //picker
    @IBOutlet weak var currencyPicker: UIPickerView!
    
    //objects
    var coinManager = CoinManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currencyPicker.dataSource = self
        currencyPicker.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return coinManager.currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return coinManager.currencyArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currencyLable.text = coinManager.currencyArray[row]
    }
}

