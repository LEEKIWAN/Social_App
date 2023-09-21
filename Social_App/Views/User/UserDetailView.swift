//
//  UserDetailView.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/19.
//

import SwiftUI

struct UserDetailView: View {
    @State var imageList = ["d1", "d2", "d3", "d4", "d5", "d6", "d7", "d8", "d9", "d10", "d11", "d12"]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack(alignment: .top) {
//            Color.red
            VStack(spacing: 0) {
                Spacer()
                    .frame(height: 50)
                
                ScrollView {
                    VStack(spacing: 0) {
                        ZStack(alignment: .top) {
                            Image(.userProfile)
                                .resizable()
                                .scaledToFit()
                                .overlay {
                                    LinearGradient(colors: [.clear, .clear, .clear, .black.opacity(0.3)], startPoint: .top, endPoint: .bottom)
                                }
                            
                            VStack(spacing: 0) {
                                createActivityViews()
                                
                                Spacer().frame(height: 13)
                                
                                createSelfIntroduceView()
                                
                                createImageGridView()
                            }
                        }
                    }
                }
                
                
            }
            .padding(.top, .topInsets)
            .padding(.bottom, .bottomInsets)
            
            
            NavigationBar()
                .padding(.horizontal)
                .frame(height: 50)
                .padding(.top, .topInsets)
                .background(Rectangle().fill(.white).shadow(radius: 2, y: 4))
            
        }
        .background(Color.white)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        
    }
    
    
    func createActivityViews() -> some View {
        VStack {
            Spacer()
                .frame(height: .screenWidth)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("135")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                    
                    
                    Text("Posts")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.secondaryText)
                }
                
                
                VStack(alignment: .leading) {
                    Text("5,321k")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("followers")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.secondaryText)
                }
                
                VStack(alignment: .leading) {
                    Text("99")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("following")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.secondaryText)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Friend Request")
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Capsule().fill(Color.primaryApp))
                }
            }
        }
        .padding(.horizontal)
    }
    
    
    func createSelfIntroduceView() -> some View {
        VStack {
            Text("Jenna Ferandandez")
                .font(.system(size: 15, weight: .bold))
                .foregroundColor(.primaryText)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HStack {
                Text("Creative Designer")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(.primaryText)
                    
                Text("@ArgoRadius")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(.primaryApp)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Spacer()
                .frame(height: 8)
            
            Text("Obsessed with Fahim MD's YouTube channel, love to go shopping on weekends and loveee food")
                .font(.system(size: 15, weight: .regular))
                .foregroundColor(.primaryText)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("@foodielife")
                .font(.system(size: 15, weight: .regular))
                .foregroundColor(.primaryApp)
                .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .padding(.top, 20)
        .padding(.horizontal, 16)
        .background(Color.white)
        .cornerRadius(30, corners: [.topLeft, .topRight])
    }
    
    func createImageGridView() -> some View {
        LazyVGrid(columns: columns, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/) {
            
            ForEach(imageList, id: \.self) { image in
                Image(image)
                    .resizable()
                    .aspectRatio(116 / 100, contentMode: .fit)
                    .cornerRadius(14)
                    .clipped()
            }
        }
        .padding()
        .padding(.bottom, 10)
        .background(Color.white)
    }
}

#Preview {
    UserDetailView()
}


