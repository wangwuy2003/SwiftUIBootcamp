//
//  #51EnvironmentObject.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 14/9/25.
//

import SwiftUI

//observedobject
//stateobject
//environmentobject

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac"])
    }
}

struct _51EnvironmentObject: View {
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { data in
                    NavigationLink {
                        DetailView(selectedItem: data)
                    } label: {
                        Text(data)
                    }
                }
            }
            .navigationTitle("iOS Device")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .clipShape(.rect(cornerRadius: 30))
            }
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .blue]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
            
            
        }
    }
}

#Preview {
    _51EnvironmentObject()
}
