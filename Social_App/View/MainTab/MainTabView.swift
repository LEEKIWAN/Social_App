//
//  MainTabView.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/15.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedTabIndex = 0
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            VStack {
//                Spacer()
                
                TabView(selection: $selectedTabIndex) {
                    VStack {
                        Text("Home Tab")
                    }
                    .tag(0)
                    
                    VStack {
                        Text("Stories Tab")
                    }
                    .tag(1)
                    
                    VStack {
                        Text("Notifications Tab")
                    }
                    .tag(2)
                    
                    VStack {
                        Text("Search Tab")
                    }
                    .tag(3)
                    
                }
                
                
                
                createTabBar()
            }
            
            createCameraButton()
        }
        .ignoresSafeArea()
    }
    
    
    func createTabBar() -> some View {
        HStack {
            TabButton(icon: "house", title: "HOME", isSelected: selectedTabIndex == 0) {
                selectedTabIndex = 0
            }
            
            TabButton(icon: "book.closed", title: "STORIES", isSelected: selectedTabIndex == 1) {
                selectedTabIndex = 1
            }
            
            Spacer()
                .frame(width: 70)
            
            TabButton(icon: "bell", title: "NOTIFICATIONS", isSelected: selectedTabIndex == 2) {
                selectedTabIndex = 2
            }
            
            TabButton(icon: "magnifyingglass", title: "SEARCH", isSelected: selectedTabIndex == 3) {
                selectedTabIndex = 3
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 5)
        .padding(.bottom, .bottomInsets)
        .background(Rectangle().fill(.white)
            .shadow(color: .black.opacity(0.15), radius: 5, y: -3))
        
    }
    
    func createCameraButton() -> some View {
        Button {

        } label: {
            ZStack {
                Circle().fill()

                Circle().fill(LinearGradient(colors: [.primaryApp, .primaryEnd], startPoint: .top, endPoint: .bottom))
                    .padding(4)
                
                Image(systemName: "camera.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            .frame(width: 70, height: 70)
            .foregroundColor(.white)
            .background(Circle().stroke(Color.gray.opacity(0.6), lineWidth: 1))
            .padding(.bottom, .bottomInsets + 24)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
