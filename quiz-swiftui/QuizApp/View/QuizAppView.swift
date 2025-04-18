//
//  QuizAppView.swift
//  quiz-swiftui
//
//  Created by Aya on 08/04/2025.
//

import SwiftUI

struct QuizAppView: View {
    @Environment(QuizViewModel.self) private var viewModel
    @State private var showResultsSheet = false
    
    var body: some View {
        VStack {
            if viewModel.showCompletedQuizView {
                CompletedQuizView(showResultsSheet: $showResultsSheet)
            } else {
                VStack(alignment: .leading, spacing: 8) {
                    Text(viewModel.currentQuetion.prompt)
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    
                    Text("Select one answer")
                        .foregroundStyle(.gray)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 120)
                .padding()
                
                VStack(alignment: .leading){
                    Text(
                        "Question \(viewModel.currentQuestionIndex + 1) / \(viewModel.quiz.questions.count)")
                    .font(.subheadline)
                    .padding(.horizontal)
                    Divider()
                }
                .padding(.bottom)
                
                VStack(spacing: 12) {
                    ForEach(viewModel.currentQuetion.choices, id: \.self) { choice in
                        Button {
                            viewModel.selectedAnswer = choice
                        } label: {
                            Text(choice)
                                .padding(.horizontal)
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                                .foregroundStyle(.black)
                                .frame(width: 350, height: 48, alignment: .leading)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(
                                            viewModel.selectedAnswer != choice ? .gray : .blue,
                                            lineWidth: viewModel.selectedAnswer != choice ?  1.0 : 3.0
                                        )
                                    
                                }
                            
                        }.padding(.horizontal, 8)
                    }
                    
                }
                
                Spacer()
                
                Button {
                    viewModel.submitAnswer()
                } label: {
                    Text("Submit")
                        .padding(.horizontal)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(width: 350, height: 48, alignment: .center)
                        .background(.blue)
                        .clipShape(.rect(cornerRadius: 10))
                    
                }
                .padding(.all, 8)
                .disabled(viewModel.selectedAnswer == nil)
                .opacity(viewModel.selectedAnswer == nil ? 0.5 : 1.0)
            }
        }
        .sheet(isPresented: $showResultsSheet) {
            QuizResultsView()
        }
        
        
    }
}

#Preview {
    QuizAppView()
        .environment(QuizViewModel())
}
