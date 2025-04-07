//
//  QuizModel.swift
//  quiz-swiftui
//
//  Created by Aya on 07/04/2025.
//

import Foundation

struct QuizModel {
    
}

struct Question: Identifiable {
    let id: String = UUID().uuidString
    let prompt: String
    let choices: [String]
    let answer: String
}
