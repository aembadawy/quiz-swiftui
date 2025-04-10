//
//  QuizViewModel.swift
//  quiz-swiftui
//
//  Created by Aya on 08/04/2025.
//

import Foundation

@Observable
class QuizViewModel {
    
    let quiz: QuizModel
    var currentQuestionIndex = 0
    var correctAnswerCount = 0
    var selectedAnswer: String?

    var showCompletedQuizView = false
    
    var incorrectAnswersCount: Int {
        return quiz.questions.count - correctAnswerCount
    }
    
    var currentQuetion: Question {
        return quiz.questions[currentQuestionIndex]
    }
    
    init() {
        self.quiz = QuizModel.mock
    }
    
    func submitAnswer() {
        guard let selectedAnswer else { return }
        //determin if answer is correct
        if currentQuetion.answer == selectedAnswer {
            correctAnswerCount += 1
        }
        
        if currentQuestionIndex + 1 < quiz.questions.count {
            currentQuestionIndex += 1 //go to next question
        } else {
            showCompletedQuizView = true
        }
        
        self.selectedAnswer = nil
    }
    
    func getFinalScorePercentage() -> Int {
        return correctAnswerCount / quiz.questions.count * 100
    }
    
    func restartQuiz() {
        
    }
    
    func currentQuestionIndex(_ currentQuestion: Question) -> Int {
        return quiz.questions.firstIndex(of: currentQuestion) ?? 0
    }
}
