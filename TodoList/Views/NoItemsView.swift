//
//  NoItemsView.swift
//  TodoList
//
//  Created by Akbarjon Juramirzaev on 10/08/23.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and add a bunch of items to your todo list!")
                    .padding(.bottom, 20)
                NavigationLink {
                    AddView()
                } label: {
                    Text("Add something")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : .accentColor)
                        .cornerRadius(10)
                }
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? secondaryAccentColor.opacity(0.7) : .accentColor.opacity(0.7),
                    radius: animate ? 30 : 10,
                    x: 0,
                    y: animate ? 30 : 10
                )
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)

            } // end of VStack
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        } // end of ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    } // end of body
    
    // Function to animate
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}