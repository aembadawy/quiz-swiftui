//
//  ContentView.swift
//  quiz-swiftui
//
//  Created by Aya on 06/04/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var viewModel = QuizViewModel()
    var body: some View {
        QuizAppView()
            .environment(viewModel)
    }
}

#Preview {
    ContentView()
}
