//
//  #74ContentUnavailableView.swift
//  SwiftUIBootcamp
//
//  Created by MacMini A6 on 18/9/25.
//

import SwiftUI

struct _74ContentUnavailableView: View {
    var body: some View {
        ContentUnavailableView(
            "No Internet Connection",
            systemImage: "wifi.slash",
            description: Text("Please connect to the internet and try again."))
    }
}

#Preview {
    _74ContentUnavailableView()
}
