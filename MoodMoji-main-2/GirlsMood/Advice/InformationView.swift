//
//  InformationView.swift
//  moodmoji
//
//  Created by Iryna Nasevich on 28.04.23.
//

import SwiftUI

struct InformationView: View {
    
    var advices: [Advice] = adviceList.topTen
    
    var body: some View{
        NavigationView {
            Form{
                List(advices, id: \.id) { advice in
                    HStack{
                        NavigationLink(
                            destination: AdviceDetailView(advice: advice), label:{
                                Image(advice.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 70)
                                    .cornerRadius(4)
                                    .padding(.vertical, 4)
                                
                                Text(advice.title)
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                                    .minimumScaleFactor(0.5)
                            } )
                    }
                }
                
            }
            .navigationTitle("Советы по здоровью")
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
