//
//  ViewController.swift
//  CPF_CNPJ_Validators
//
//  Created by Roberto890 on 11/26/2021.
//  Copyright (c) 2021 Roberto890. All rights reserved.
//

import UIKit
import CPF_CNPJ_Validators

class ViewController: UIViewController {
    @IBOutlet weak var editCpfCnpj: UITextField!
    @IBOutlet weak var resultCpfCnpj: UILabel!
    @IBOutlet weak var cpfSwt: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func ValidationButton(_ sender: UIButton) {
        if cpfSwt.isOn == true {
            if CpfCnpjUtils().cpfValidator(cpf: editCpfCnpj.text!) {
                resultCpfCnpj.text = "CPF is valid"
            } else {
                resultCpfCnpj.text = "CPF is not valid"
            }
        } else {
            if CpfCnpjUtils().cnpjValidator(cnpj: editCpfCnpj.text!) {
                resultCpfCnpj.text = "CNPJ is valid"
            } else {
                resultCpfCnpj.text = "CNPJ is not valid"
            }
        }
    }
    
    @IBAction func MaskButton(_ sender: UIButton) {
        if cpfSwt.isOn == true {
            resultCpfCnpj.text = CpfCnpjUtils().cpfMask(cpf: editCpfCnpj.text!)
        } else {
            resultCpfCnpj.text = CpfCnpjUtils().cnpjMask(cnpj: editCpfCnpj.text!)
        }
    }
    
}

