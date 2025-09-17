//
//  #54AsyncImage.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 17/9/25.
//

import SwiftUI

/*
 case empty -> no image is loaded
 case success -> an image successfully loaded.
 caes failure -> an image failed to load with an error.
 */

struct _54AsyncImage: View {
    let url = URL(string: "https://picsum.photos/300")
    
    var body: some View {
        //        AsyncImage(url: url)
        //            .frame(width: 100, height: 100)
        
        //        AsyncImage(url: url) { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 100, height: 100)
        //                .clipShape(.rect(cornerRadius: 20))
        //        } placeholder: {
        //            ProgressView()
        //        }
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            @unknown default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
    }
}

#Preview {
    _54AsyncImage()
}
