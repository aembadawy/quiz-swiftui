//
//  CompletedQuizView.swift
//  quiz-swiftui
//
//  Created by Aya on 10/04/2025.
//

import SwiftUI

struct CompletedQuizView: View {
    @Binding var showResultsSheet: Bool
    @Environment(\.dismiss) var dismiss
    @Environment(QuizViewModel.self) var viewModel
    
    var body: some View {
        VStack(spacing: 8){
            Text("Congratulations! you've completed the quiz!")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("Click  below to view your results.")
                .foregroundStyle(.gray)
                .font(.footnote)
            
            Button {
                showResultsSheet.toggle()
            } label: {
                Text("View results")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .frame(width: 320, height: 48)
                    .background(.blue)
                    .cornerRadius(10)
            }
            .padding(.top)
            
            Button {
                viewModel.restartQuiz()
            } label: {
                Text("Start Over")
                    .foregroundStyle(.blue)
                    .fontWeight(.bold)
                    .frame(width: 320, height: 48)
            }
            
            
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    @Previewable @State var showResultsSheet = false
    CompletedQuizView(showResultsSheet: $showResultsSheet)
        .environment(QuizViewModel())
}
