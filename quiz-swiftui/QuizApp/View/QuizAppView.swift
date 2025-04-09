//
//  QuizAppView.swift
//  quiz-swiftui
//
//  Created by Aya on 08/04/2025.
//

import SwiftUI

struct QuizAppView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("What is the function of view model in MVVM architecture?")
                .font(.headline)
                .fontWeight(.semibold)
            
            
            Text("Select one answer")
                .foregroundStyle(.gray)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 120)
        .padding()
        
        VStack(alignment: .leading){
            Text("Question 1 / 6")
                .font(.subheadline)
                .padding(.horizontal)
            Divider()
        }
        .padding(.bottom)
        
        VStack(spacing: 12) {
            ForEach(0 ..< 4, id: \.self) { choice in
                
                Button {
                    //select answer
                } label: {
                    Text("Display answer here for now")
                        .padding(.horizontal)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.black)
                        .frame(width: 350, height: 48, alignment: .leading)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1.0)

                        }
                }.padding(.horizontal, 8)
            }
        }
        
        Spacer()
        
        Button {
            //submit answer
        } label: {
            Text("Submit")
                .padding(.horizontal)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .frame(width: 350, height: 48, alignment: .center)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 10))
                
        }.padding(.all, 8)
        
    }
}

#Preview {
    QuizAppView()
}
