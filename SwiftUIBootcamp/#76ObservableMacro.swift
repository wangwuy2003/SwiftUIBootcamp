//
//  #76ObservableMacro.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 18/9/25.
//

import SwiftUI

@Observable class ObservableViewModel {
    var title: String =  "Some title"
}

struct _76ObservableMacro: View {
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "New title!"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        VStack {
            Button(viewModel.title) {
                viewModel.title = "New title1231231231231!"
            }
        }
    }
}

struct SomeThirdView: View {
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        VStack {
            Button(viewModel.title) {
                viewModel.title = "New 23123132321321!"
            }
        }
    }
}

#Preview {
    _76ObservableMacro()
}
