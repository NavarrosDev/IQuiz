//
//  Questao.swift
//  IQuiz
//
//  Created by Gabriel Navarro on 01/07/25.
//

import Foundation

struct Questao {
    var titulo: String
    var questoes: [String]
    var questaoCorreta: Int
}

let questoes: [Questao] = [
    Questao(
        titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?",
        questoes: ["Expecto Patronum", "Protego Maxima", "Expelliarmus"],
        questaoCorreta: 2
    ),
    Questao(
        titulo: "Em que ano o filme Vingadores Ultimato foi lançado?",
        questoes: ["2019", "2018", "2017"],
        questaoCorreta: 0
    ),
    Questao(
        titulo: "Em que ano o filme Avatar 2 foi lançado?",
        questoes: ["2014", "2022", "2023"],
        questaoCorreta: 1
    )
]
