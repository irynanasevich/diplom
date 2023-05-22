//
//  AdviceDetailView.swift
//  moodmoji
//
//  Created by Iryna Nasevich on 28.04.23.
//

import SwiftUI

struct AdviceDetailView: View {
    var advice: Advice
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            Image(advice.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            Text(advice.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
            
            Text(advice.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: advice.url, label: {
                Text("читать больше")
                    .bold()
                    .font(.headline)
                    .frame(width: 280, height: 50)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(EdgeInsets(top: 20, leading: 60, bottom: 100, trailing: 60))
                
            })
        }
    }
}

struct AdviceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceDetailView(advice: adviceList.topTen.first!)
    }
}
