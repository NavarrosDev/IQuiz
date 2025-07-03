//
//  QuestaoViewController.swift
//  IQuiz
//
//  Created by Gabriel Navarro on 29/06/25.
//

import UIKit

class QuestaoViewController: UIViewController {

    var pontuacao: Int = 0
    var numeroQuestao: Int = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertou = questoes[numeroQuestao].questaoCorreta == sender.tag
        if usuarioAcertou {
            pontuacao += 1
            sender.backgroundColor = UIColor.corDeFundoVerde
        } else {
            sender.backgroundColor = UIColor.corDeFundoVermelho
        }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(
                timeInterval: 0.7,
                target: self,
                selector: #selector(configureQuestoes),
                userInfo: nil,
                repeats: false
            )
        } else {
            navegeParaTelaDesempenho()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureLayout()
        configureQuestoes()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        botoesRespostas.forEach { $0.layer.cornerRadius = 12.0 }
    }
    
    @objc func configureQuestoes() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        botoesRespostas.forEach { botao in
            botao.setTitle(questoes[numeroQuestao].questoes[botao.tag], for: .normal)
            botao.backgroundColor = UIColor.corDeFundoPadrao
        }
    }
    
    func navegeParaTelaDesempenho() {
        performSegue(
            withIdentifier: "irParaTelaDesempenho",
            sender: nil
        )
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
    }
}
