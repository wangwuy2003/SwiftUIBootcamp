//
//  #50ViewModel.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 14/9/25.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
    
}

class FruitViewModel: ObservableObject {
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 3)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [self] in
            fruitArray.append(fruit1)
            fruitArray.append(fruit2)
            fruitArray.append(fruit3)
            isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct _50ViewModel: View {
    //@State var fruitArray: [FruitModel] = []
    //
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel
                                                            )) {
                        Image(systemName: "arrow.right")
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                }
            }
            .listStyle(GroupedListStyle())
        }
    }
}

struct RandomScreen: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
        }
        
    }
}

#Preview {
    _50ViewModel()
}
