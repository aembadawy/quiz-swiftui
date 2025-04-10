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
    
    var finalScorePercentage: Int {
        return Int((Double(correctAnswerCount) / Double(quiz.questions.count)) * 100)
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
        
        self.selectedAnswer = nil

        if currentQuestionIndex + 1 < quiz.questions.count {
            currentQuestionIndex += 1 //go to next question
        } else {
            showCompletedQuizView = true
        }
    }
    
    func restartQuiz() {
        currentQuestionIndex = 0
        correctAnswerCount = 0
        selectedAnswer = nil
        showCompletedQuizView = false
    }
    
    func currentQuestionIndex(_ currentQuestion: Question) -> Int {
        return quiz.questions.firstIndex(of: currentQuestion) ?? 0
    }
}
