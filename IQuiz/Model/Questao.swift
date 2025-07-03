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
    ),
    Questao(
        titulo: "Qual o nome verdadeiro do Homem de Ferro?",
        questoes: ["Steve Rogers", "Tony Stark", "Bruce Wayne"],
        questaoCorreta: 1
    ),
    Questao(
        titulo: "Qual é o nome da escola de magia em Harry Potter?",
        questoes: ["Durmstrang", "Ilvermorny", "Hogwarts"],
        questaoCorreta: 2
    ),
    Questao(
        titulo: "Qual personagem em Star Wars disse a frase 'Eu sou seu pai'?",
        questoes: ["Obi-Wan Kenobi", "Darth Vader", "Yoda"],
        questaoCorreta: 1
    ),
    Questao(
        titulo: "Quem é o vilão principal em Vingadores: Guerra Infinita?",
        questoes: ["Thanos", "Ultron", "Loki"],
        questaoCorreta: 0
    ),
    Questao(
        titulo: "Qual o nome do planeta natal do Superman?",
        questoes: ["Krypton", "Asgard", "Terra"],
        questaoCorreta: 0
    )
]
