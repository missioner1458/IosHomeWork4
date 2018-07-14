//
//  ViewController.swift
//  TedHomeWorkEx4
//
//  Created by Ted on 2018/7/14.
//  Copyright © 2018 Ted. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiTextField: UITextField!
    @IBOutlet weak var uiLable1: UILabel!
    @IBOutlet weak var uiLable2: UILabel!
    @IBOutlet weak var uiSlider: UISlider!
    var wordCount:Int = 0
    var wordSize:Int = 14
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initValue()
    }

    func initValue (){
        
        uiTextField.font = UIFont(name: uiTextField.font!.fontName, size: CGFloat(wordSize))
        uiLable1.text = "字數:\(wordCount)"
        uiLable2.text = "字體大小:\(wordSize)"
    }

    @IBAction func keyInText(_ sender: Any) {
        wordCount = (uiTextField.text?.count)!
        uiLable1.text = "字數:\(wordCount)"
    }
    
    @IBAction func changeSlider(_ sender: Any) {
        wordSize = Int(uiSlider.value)
       
        uiTextField.font = UIFont(name: uiTextField.font!.fontName, size: CGFloat(wordSize))
        uiLable2.text = "字體大小:\(wordSize)"
    }
}

