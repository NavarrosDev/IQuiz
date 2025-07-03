//
//  DesempenhoViewController.swift
//  IQuiz
//
//  Created by Gabriel Navarro on 02/07/25.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var porcentualLabel: UILabel!
    @IBOutlet weak var botaoReiniciar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurarLayout()
        configurarTitulos()
    }
    
    func configurarLayout() {
        botaoReiniciar.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }
    
    func configurarTitulos() {
        guard let pontuacao = pontuacao else { return }
        let titulo: String = "Você acertou \(pontuacao) de \(questoes.count)"
        let porcentagem: Int = (pontuacao * 100) / questoes.count
        
        resultadoLabel.text = titulo
        porcentualLabel.text = "Porcentagem final: \(porcentagem)%"
    }

}
