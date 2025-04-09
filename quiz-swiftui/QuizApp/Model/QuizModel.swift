//
//  QuizModel.swift
//  quiz-swiftui
//
//  Created by Aya on 07/04/2025.
//

import Foundation

struct QuizModel {
    let questions: [Question]
}

struct Question: Identifiable {
    let id: String = UUID().uuidString
    let prompt: String
    let choices: [String]
    let answer: String
}

extension QuizModel {
    static let mock: QuizModel = QuizModel(
        questions: [
            Question(
                prompt: "What is the purpose of the @State property wrapper in SwiftUI?",
                choices: [
                    "To observe data from a shared data source",
                    "To manage local mutable state in a view",
                    "To pass data between views",
                    "To create global constants"
                ],
                answer: "To manage local mutable state in a view"
            ),
            Question(
                prompt: "Which tool in Xcode helps you visually build SwiftUI interfaces?",
                choices: [
                    "Storyboard",
                    "Canvas",
                    "Simulator",
                    "Inspector"
                ],
                answer: "Canvas"
            ),
            Question(
                prompt: "What keyword is used to define a constant in Swift?",
                choices: [
                    "let",
                    "const",
                    "static",
                    "val"
                ],
                answer: "let"
            ),
            Question(
                prompt: "What is the main benefit of using @ObservedObject in SwiftUI?",
                choices: [
                    "It creates immutable data",
                    "It observes and reacts to changes in external objects",
                    "It shares state across apps",
                    "It resets state when a view appears"
                ],
                answer: "It observes and reacts to changes in external objects"
            ),
            Question(
                prompt: "Which lifecycle method is used in SwiftUI to perform an action when a view appears?",
                choices: [
                    ".onAppear()",
                    ".didLoad()",
                    ".viewDidLoad()",
                    ".appearView()"
                ],
                answer: ".onAppear()"
            ),
            Question(
                prompt: "Which Xcode feature allows you to preview changes in your SwiftUI layout instantly?",
                choices: [
                    "Live Preview",
                    "Interface Builder",
                    "Playgrounds",
                    "Blueprint Mode"
                ],
                answer: "Live Preview"
            ),
            Question(
                prompt: "In Swift, what does 'optional binding' allow you to do?",
                choices: [
                    "Bind a variable to a class",
                    "Unwrap an optional safely",
                    "Declare a constant as optional",
                    "Initialize a view model"
                ],
                answer: "Unwrap an optional safely"
            )
        ]
    )
}
