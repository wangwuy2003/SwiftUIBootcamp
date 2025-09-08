//
//  #33ActionSheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 8/9/25.
//

import SwiftUI

struct _33ActionSheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var backgroundColor: Color = .yellow
    
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("@username")
                    
                    Spacer()
                    Button {
                        actionSheetOption = .isMyPost
                        showActionSheet.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                            .tint(.primary)
                    }

                }
                .padding(.horizontal)
                
                Rectangle()
                    .aspectRatio(1.0, contentMode: .fit)
            }
//            .confirmationDialog("This is the title", isPresented: $showActionSheet) {
//                Button("Red") {
//                    backgroundColor = .red
//                }
//                Button("Green") {
//                    backgroundColor = .green
//                }
//                Button("Purple") {
//                    backgroundColor = .purple
//                }
//            } message: {
//                Text("This is the message.")
//            }
            .confirmationDialog("This is the title!", isPresented: $showActionSheet, titleVisibility: .visible, actions: { colorActions() }) {
                Text("this is the message.")
            }
        }
    }
    
    
}

extension _33ActionSheetBootcamp {
    @ViewBuilder
    func colorActions() -> some View {
        switch actionSheetOption {
        case .isOtherPost:
            Button("Share") {
                // add code to share
                backgroundColor = .red
            }
            Button("Report", role: .destructive) {
                backgroundColor = .green
            }
            Button("Cancel", role: .cancel) {}
            
        case .isMyPost:
            Button("Edit") {
                backgroundColor = .yellow
            }
            Button("Delete", role: .destructive) {
                backgroundColor = .purple
            }
            Button("Cancel", role: .cancel) {}
        }
    }
}

#Preview {
    _33ActionSheetBootcamp()
}
