//
//  #45Documentation.swift
//  SwiftUIBootcamp
//
//  Created by Apple on 14/9/25.
//

import SwiftUI

struct _45Documentation: View {
    @State var data: [String] = [
        "Apple", "Orange", "Banana"
    ]
    
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationStack {
            
            foregroundLayer
            .navigationTitle("Documentation")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Alert") {
                        showAlert.toggle()
                    }
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the alert!")
            }
        }
    }
    
    private var foregroundLayer: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    /// Get an alert with specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a little based on the text parameter but it will NOT have a message
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    /// - Parameter text: this is the text for the alert.
    /// - Returns: returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

#Preview {
    _45Documentation()
}
