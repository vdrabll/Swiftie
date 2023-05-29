//
//   LessionView.swift
//  testUIApp
//
//  Created by Виктория Федосова on 29.05.2023.
//

import SwiftUI

struct LessionView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                    VStack{
                            Text("""
         **Hi i am markdown**
                                
         """)
                            .frame(width: 400,
                                   height: 800,
                                   alignment: .center)
                        
                        Button("Далее ") {
                            print("Далее")
                        }
                        
                    }
                }
            .navigationTitle("Введение")
        }
        
    }
        
    }


struct _LessionView_Previews: PreviewProvider {
    static var previews: some View {
        LessionView()
    }
}
