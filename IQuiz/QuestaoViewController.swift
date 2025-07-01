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
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else  {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
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
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
