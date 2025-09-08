//
//  #32AlertsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 8/9/25.
//

import SwiftUI

struct _32AlertsBootcamp: View {
    @State var showAlert: Bool = false
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("Button1") {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "The video could not be uploaded😭"
                    showAlert.toggle()
                }
                .padding()
                
                Button("Button2") {
                    alertType = .success
//                    alertTitle = "Success"
//                    alertMessage = "Successfully uploaded video.❤️"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                //            Alert(title: Text("There was an error."))
                getAlert()
            }
        }
        
    }
    
    func getAlert() -> Alert {
//        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
//        return Alert(title: Text("This is the title"),
//              message: Text("Here we will describe the error."),
//              primaryButton: .destructive(Text("Delete"), action: {
//                    backgroundColor = .red
//                }),
//              secondaryButton: .cancel())
        
        switch alertType {
        case .success:
            return Alert(title: Text("Title"),
                         message: Text("Uploaded successfully"),
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("Title"),
                         message: Text("There was an error!"),
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .red
            }))
        default:
            return Alert(title: Text("Ok"))
        }
    }
}

#Preview {
    _32AlertsBootcamp()
}
