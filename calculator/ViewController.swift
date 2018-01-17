//
//  ViewController.swift
//  calculator
//
//  Created by mohamed-maya on 7/10/17.
//  Copyright © 2017 alhayah-technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelshow: UILabel!
    var lastvalue:String!
    var operatorvalue:String!
    var endvalue:Double!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func configbutton(_ sender: UIButton)
    {
        if (labelshow.text != "")
        {
            if labelshow.text != "+" || labelshow.text != "-" || labelshow.text != "x" || labelshow.text != "/" || labelshow.text != "%" || labelshow.text != "+/-"
            {
                if sender.tag == 21
                {
                    labelshow.text = ""
                    lastvalue = nil
                    operatorvalue = nil
                }
                else if sender.tag == 22
                {
                    if lastvalue == nil
                    {
                        lastvalue = labelshow.text
                        labelshow.text = ""
                        endvalue = Double (lastvalue!)!  * -1
                        labelshow.text = String(endvalue)
                        lastvalue = nil
                    }else
                    {
                        lastvalue = labelshow.text
                        labelshow.text = ""
                        endvalue = Double (lastvalue!)!  * -1
                        labelshow.text = String(endvalue)
                        lastvalue = nil
                    }
                }
                else if sender.tag == 23
                {
                    if lastvalue == nil
                    {
                        lastvalue = labelshow.text
                        labelshow.text = ""
                        endvalue = Double (lastvalue!)!  / 100
                        labelshow.text = String(endvalue)
                        lastvalue = nil
                    }else
                    {
                        lastvalue = labelshow.text
                        labelshow.text = ""
                        endvalue = Double (lastvalue!)!  / 100
                        labelshow.text = String(endvalue)
                        lastvalue = nil
                    }
                }
                else if sender.tag == 24
                {
                    if lastvalue == nil
                    {
                        lastvalue = labelshow.text
                        labelshow.text = ""
                        labelshow.text = "/"
                    }
                }
                else if sender.tag == 25
                {
                    if lastvalue == nil
                    {
                        lastvalue = labelshow.text
                        labelshow.text = ""
                        labelshow.text = "x"
                    }
                }else if sender.tag == 26
                {
                    if lastvalue == nil
                    {
                        lastvalue = labelshow.text
                        labelshow.text = ""
                        labelshow.text = "-"
                    }
                }
                else if sender.tag == 27
                {
                     if lastvalue == nil
                    {
                        lastvalue = labelshow.text
                        labelshow.text = ""
                        labelshow.text = "+"
                    }
                }
                else if sender.tag == 28
                {
                    if lastvalue != nil && operatorvalue != nil
                    {
                        let screenvalue:Double = Double(labelshow.text!)!
                        //if operatorvalue == "+/-"
                        //{
                            
                        //}
                        //else if operatorvalue == "%"
                        //{
                            
                        //}
                       //else if operatorvalue == "/"
                        if operatorvalue == "/"
                        {
                            if endvalue != nil
                            {
                                let end = endvalue
                                endvalue = screenvalue / Double(end!)
                                labelshow.text = ""
                                labelshow.text = String(endvalue)
                            }else
                            {
                                endvalue = screenvalue / Double(lastvalue)!
                                labelshow.text = ""
                                labelshow.text = String(endvalue)
                            }
                        }
                        else if operatorvalue == "x"
                        {
                            if endvalue != nil
                            {
                                let end = endvalue
                                endvalue = screenvalue * Double(end!)
                                labelshow.text = ""
                                labelshow.text = String(endvalue)
                            }else
                            {
                                endvalue = screenvalue * Double(lastvalue)!
                                labelshow.text = ""
                                labelshow.text = String(endvalue)
                            }
                        }
                        else if operatorvalue == "-"
                        {
                            if endvalue != nil
                            {
                                let end = endvalue
                                endvalue = Double(end!) - screenvalue
                                labelshow.text = ""
                                labelshow.text = String(endvalue)
                            }else
                            {
                                endvalue = Double(lastvalue)! - screenvalue
                                labelshow.text = ""
                                labelshow.text = String(endvalue)
                            }
                        }
                        else if operatorvalue == "+"
                        {
                            if endvalue != nil
                            {
                                let end = endvalue
                                endvalue = screenvalue + Double(end!)
                                labelshow.text = ""
                                labelshow.text = String(endvalue)
                            }else
                            {
                                endvalue = screenvalue + Double(lastvalue)!
                                labelshow.text = ""
                                labelshow.text = String(endvalue)
                            }
                        }
                        lastvalue = nil
                        operatorvalue = nil
                    }
                }
            }
        }
        
    }
    
    @IBAction func numberbutton(_ sender: UIButton)
    {
        if (sender.tag==20)
        {
            if labelshow.text == "+" || labelshow.text == "-" || labelshow.text == "x" || labelshow.text == "/" || labelshow.text == "%" || labelshow.text == "+/-"
            {
                operatorvalue = labelshow.text
                labelshow.text = ""
                labelshow.text = labelshow.text! + String(".")
            }else
            {
                labelshow.text = labelshow.text! + String(".")
            }
        }else
        {
            if labelshow.text == "+" || labelshow.text == "-" || labelshow.text == "x" || labelshow.text == "/" || labelshow.text == "%" || labelshow.text == "+/-"
            {
                operatorvalue = labelshow.text
                labelshow.text = ""
                labelshow.text = labelshow.text! + String(sender.tag-1)
            }else
            {
                labelshow.text = labelshow.text! + String(sender.tag-1)
            }
        }
        
        
    }
    
}

