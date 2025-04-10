//
//  QuizResultsView.swift
//  quiz-swiftui
//
//  Created by Aya on 10/04/2025.
//

import SwiftUI

struct QuizResultsView: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(QuizViewModel.self) var viewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            VStack(alignment: .leading){
                HStack(alignment: .top) {
                    Text("Your Scored")
                        .font(.footnote)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "x.circle.fill")
                            .foregroundStyle(.white)
                            .frame(width: 36, height: 36)
                    }

                }
                
                Text("\(viewModel.finalScorePercentage)%")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .padding(.horizontal)
            .frame(height: 150)
            .frame(maxWidth: .infinity)
            .background(.blue)
            
            Text("Statistics")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            HStack {
                Text("Correct Answers")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text(
                    "\(viewModel.correctAnswerCount) / \(viewModel.quiz.questions.count)"
                )
                .font(.footnote)
                .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            .frame(height: 50)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.gray)
                    .opacity(0.1)
            }
            .padding(.horizontal)
            
            HStack {
                Text("Incorrect Answers")
                    .font(.title3 )
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text(
                    "\(viewModel.incorrectAnswersCount) / \(viewModel.quiz.questions.count)"
                )
                .font(.footnote)
                .foregroundStyle(.red)
            }
            .padding(.horizontal)
            .frame(height: 50)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.gray)
                    .opacity(0.1)
            }
            .padding(.horizontal)

            Spacer()
        }
        .presentationDetents([.medium])
    }
}

#Preview {
    QuizResultsView()
        .environment(QuizViewModel())
}
