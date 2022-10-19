//
//  ContentView.swift
//  TwoCircles
//
//  Created by Monika Piesyk on 11/10/2022.
//

import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        TwoCircles()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TwoCircles: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> TwoCircleVC {
        return TwoCircleVC()
    }
    
    func updateUIViewController(_ uiViewController: TwoCircleVC, context: Context) {
        
    }
}
