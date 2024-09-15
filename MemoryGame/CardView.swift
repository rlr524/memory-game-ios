//
//  CardView.swift
//  MemoryGame
//
//  Created by Rob Ranf on 9/15/24.
//

import SwiftUI

struct CardView: View {
    var isFaceUp: Bool = false
    /// The body variable is a computed property
    var body: some View {
        //        VStack(content: testViews)
        /// Pass a closure expression to VStack. The "content" parameter of VStack takes a function,
        /// and an example of that is in the commented out code here using the testViews() function,
        /// but more commonly we pass in the function body as a closure (technically a closure
        /// expression) to the struct. The closure no matter what needs to conform to the View
        /// protocol. A closure is, like in JavaScript, simply a chunk of code that can be passed
        /// around and called whenever we want. It is a kind of lambda (anonymous, in that it isn't
        /// a named function) and it takes no parameters and doesn't return a value, it returns
        /// a View, *some View*, and if you want to return multiple views, you use a closure or
        /// a function decorated with the @ViewBuilder attribute.
        ZStack {
            if isFaceUp {
                /// Creating instances of Shape and Text structs
                /// (both of which conform to the View protocol)
                RoundedRectangle(cornerRadius: 12.0)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12.0)
                    .strokeBorder(lineWidth: 2.0)
                Text("👻")
                    .font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12.0)
            }
        }
    }
    
    //    @ViewBuilder func testViews() -> some View {
    //        // Stored properties
    //        var i: Int = 1
    //        var s: String = "Madison"
    //
    //        Text("This is an app, it is app number \(i)...")
    //        Text("Hello, \(s)!")
    //    }
}

#Preview {
    CardView()
}
