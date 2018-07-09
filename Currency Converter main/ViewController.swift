//
//  ViewController.swift
//  Currency Converter
//
//  Created by Pei Qin on 2018/7/5.
//  Copyright © 2018 Pei Qin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dollarAmountTextField: UITextField!
    
    @IBOutlet weak var yuanAmountTextField: UITextField!
    
    var isDollar = true
    
    func showResults() {
        if isDollar {
            if let dollars = Double(self.dollarAmountTextField.text!) {
                let yuans = dollars / 0.15
                self.yuanAmountTextField.text = String(format: "%.2f", yuans)
            } else {
                self.dollarAmountTextField.text = ""
            }
        } else {
            let yuan = Double(self.yuanAmountTextField.text!)
            let dollars = yuan! * 0.15
            self.dollarAmountTextField.text = String(format: "%.2f", dollars)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
//    @IBAction func dollarTextInput(_ sender: UITextField) {
//        isDollar = true
//        let dollars = Double(dollarAmountTextField.text!)
//        let yuans = dollars! / 0.15
//        yuanAmountTextField.text = String(yuans)
//    }
    
//    @IBAction func dollarDidChange(_ sender: UITextField) {
//        isDollar = true
//        if let dollars = Double(self.dollarAmountTextField.text!) {
//            let yuans = dollars / 0.15
//            print(yuans)
//            self.yuanAmountTextField.text = String(yuans)
//        } else {
//            self.dollarAmountTextField.text = ""
//        }
//    }
    
    @IBAction func dollarEnd(_ sender: Any) {
        isDollar = true
//        if let dollars = Double(self.dollarAmountTextField.text!) {
//            let yuans = dollars / 0.15
//            print(yuans)
//            self.yuanAmountTextField.text = String(yuans)
//        } else {
//            self.dollarAmountTextField.text = ""
//        }
    }
    
    @IBAction func yuanTextInput(_ sender: UITextField) { //value changed
        isDollar = false
//        let yuan = Double(self.yuanAmountTextField.text!)
//        let dollars = yuan! * 0.15
//        print(dollars)
//        self.dollarAmountTextField.text = String(dollars)
//
    }
    
    @IBAction func dollarBegin(_ sender: UITextField) {
        isDollar = true
        dollarAmountTextField.text = ""
        yuanAmountTextField.text = ""
    }
    
    @IBAction func yuanBegin(_ sender: UITextField) {
        isDollar = false
        yuanAmountTextField.text = ""
        dollarAmountTextField.text = ""
    }
    
    
    func buttonPressed(input: String) {
        if isDollar {
            dollarAmountTextField.text?.append(input)
        } else {
            yuanAmountTextField.text?.append(input)
        }
        showResults()
    }
    
    @IBAction func but1(_ sender: UIButton) {
        buttonPressed(input: "1")
    }
    @IBAction func but2(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append("2")
        } else {
            yuanAmountTextField.text?.append("2")
        }
        showResults()
    }
    @IBAction func but3(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append("3")
        } else {
            yuanAmountTextField.text?.append("3")
        }
        showResults()
    }
    @IBAction func but4(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append("4")
        } else {
            yuanAmountTextField.text?.append("4")
        }
        showResults()
    }
    @IBAction func but5(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append("5")
        } else {
            yuanAmountTextField.text?.append("5")
        }
        showResults()
    }
    @IBAction func but6(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append("6")
        } else {
            yuanAmountTextField.text?.append("6")
        }
        showResults()
    }
    @IBAction func but7(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append("7")
        } else {
            yuanAmountTextField.text?.append("7")
        }
        showResults()
    }
    @IBAction func but8(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append("8")
        } else {
            yuanAmountTextField.text?.append("8")
        }
        showResults()
    }
    @IBAction func but9(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append("9")
        } else {
            yuanAmountTextField.text?.append("9")
        }
        showResults()
    }
    @IBAction func butDot(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append(".")
        } else {
            yuanAmountTextField.text?.append(".")
        }
        showResults()
    }
    @IBAction func but0(_ sender: UIButton) {
        if isDollar {
            dollarAmountTextField.text?.append("0")
        } else {
            yuanAmountTextField.text?.append("0")
        }
        showResults()
    }
    @IBAction func butC(_ sender: UIButton) {
        dollarAmountTextField.text = ""
        yuanAmountTextField.text = ""
    }
    
    
    
    
    
}

