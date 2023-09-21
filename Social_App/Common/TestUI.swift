//
//  TestUI.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/21.
//

import SwiftUI

struct TestUI: View {
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(.black.opacity(0.2), lineWidth: 1)
                .background(Circle().foregroundColor(Color.white))
                .frame(width: 30, height: 30)
                
            
            Circle()
                .strokeBorder(.black.opacity(0.2), lineWidth: 1)
                .background(Circle().foregroundColor(Color.primaryApp))
                .frame(width: 23, height: 23)
        }
    }
}

#Preview {
    TestUI()
}
