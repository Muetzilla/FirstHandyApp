//
//  ContentView.swift
//  MeineErsteApp
//
//

import SwiftUI

struct ContentView: View {
    @State var bildname = "Bild1"
    var body: some View {
        
    VStack{
        Spacer()
        Text("Meine schönsten Bilder:")
            .foregroundColor(.red)
            .bold()
            .padding()
        Spacer()
            Image(bildname)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
        Spacer()
        Button("Nächstes Bild", action : {
            let zufallsnummer = Int.random(in: 1...5)
            bildname = "Bild" + String(zufallsnummer)
        })
        Spacer()
}
.background(Color.gray).ignoresSafeArea()
    }
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
