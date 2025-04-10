//
//  CompletedQuizView.swift
//  quiz-swiftui
//
//  Created by Aya on 10/04/2025.
//

import SwiftUI

struct CompletedQuizView: View {
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
                //view results
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
                //stratover
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
    CompletedQuizView()
}
