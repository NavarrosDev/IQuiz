//
//  ViewController.swift
//  IQuiz
//
//  Created by Gabriel Navarro on 29/06/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoIniciar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    @IBAction func clicaBotaoIniciar(_ sender: Any) {
        print("Clicou no botao")
    }
    
    func configureLayout() {
        botaoIniciar.layer.cornerRadius = 12.0
    }
}

