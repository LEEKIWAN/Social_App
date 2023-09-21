//
//  MainTabView.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/15.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedTabIndex = 0
    
    @State var path = NavigationPath()
    var body: some View {
        NavigationStack(path: $path) {
            ZStack(alignment: .bottom) {
                
                VStack(spacing: 0) {
                    
                    TabView(selection: $selectedTabIndex) {
                        
                        HomeView()
                            .tag(0)
                        
                        MessageMainView()
                            .tag(1) 
                        
                        VStack {
                            Color.red
                        }
                        .tag(2)
                        
                        VStack {
                            Text("Search Tab")
                        }
                        .tag(3)
                    }
                    .onAppear {
                        UITabBar.appearance().isHidden = true
                    }
                    
                    createTabBar()
                }
                
                createCameraButton()
            }
            .navigationBarBackButtonHidden()
            .ignoresSafeArea()
        }
    }
    
    
    func createTabBar() -> some View {
        HStack {
            TabButton(icon: "house", title: "HOME", isSelected: selectedTabIndex == 0) {
                selectedTabIndex = 0
            }
            
            TabButton(icon: "ellipsis.message", title: "MESSAGES", isSelected: selectedTabIndex == 1) {
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
        .frame(maxWidth: .infinity, maxHeight: 49)
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
            .frame(width: 60, height: 60)
            .foregroundColor(.white)
            .background(Circle().stroke(Color.gray.opacity(0.6), lineWidth: 1))
            .padding(.bottom, .bottomInsets + 16)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationStack {
            MainTabView()
//        }
    }
}
