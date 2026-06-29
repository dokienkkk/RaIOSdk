//
//  ContentView.swift
//  SampleApp
//
//  Created by Do Cong Kien on 2/6/26.
//

import SwiftUI
import RaIOSdk

struct ContentView: View {
    private let appKey = "68115842db634e3d9a2c51cebfc32998"
    private let appSecret = "8f8a97e7377266523c034958762a82b88ca33bf5f0a8"
    private let isProduction = false
    
    @State private var isConfig: Bool = false
    
    var body: some View {
        VStack {
            Text("RaIO Core")
            
            Button("Config SDK") {
                RaIOCore.shared.config(appKey: appKey, appSecret: appSecret, isProduction: isProduction) {  result in
                    switch result {
                    case .success:
                        isConfig = true
                    case .failure(_):
                        isConfig = false
                    }
                }
            }
            
            Text(isConfig.description)
                .foregroundStyle(isConfig ? .green : .red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
