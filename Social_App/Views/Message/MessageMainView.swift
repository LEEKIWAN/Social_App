//
//  MessageMainView.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/21.
//

import SwiftUI

struct MessageMainView: View {
    @ObservedObject var viewModel: MessageViewModel = MessageViewModel()
    
    @State private var path = NavigationPath()
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack(alignment: .top) {
                VStack {
                    Spacer()
                        .frame(height: 50)
                                        
                    ScrollView {
                        createSearchTextField()
                        createActiveUsersView()
                        
                        createMyChatListView()
                        
                        createWhatPeopleSayingView()
                    }
                    .background(Color.white)
                }
                .padding(.top, .topInsets)
                .background(Color.white)
                
                createNavigationBar()
            }
            .ignoresSafeArea()
            .task {
                await viewModel.fetchActiveUsers()
                await viewModel.fetchChatRooms()
                await viewModel.fetchWhatPeopleSayings()
            }
        }
        
    }
    
    func createSearchTextField() -> some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding()
                
                TextField("", text: $searchText)
                    .placeholder(when: searchText.isEmpty, placeholder: {
                        Text("Search Messages").foregroundStyle(.gray)
                    })
                    .foregroundColor(.primaryText)
                    .frame(maxWidth: .infinity)
                    
                
                Image(systemName: "list.bullet")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding()
            }
            Rectangle().fill(.black.opacity(0.15)).frame(height: 1)
        }
        
    }
    
    
    func createNavigationBar() -> some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .frame(height: 50)
                .shadow(radius: 3)
            
            HStack {
                ZStack(alignment: .trailing) {
                    Text("Messages")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.primaryText)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Button {
                        
                    } label: {
                        Image("user_profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35)
                            .cornerRadius(17.5)
                            .padding(.horizontal)
                        
                    }
                }
            }
            .frame(height: 50)
            .background(Color.white)
            

        }
        .padding(.top, .topInsets)
    }
    
    func createActiveUsersView() -> some View {
        VStack {
            Text("Active")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.primaryText)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.top)
            
            ScrollView(.horizontal) {
                LazyHStack(alignment: .top) {
                    
                    ForEach(viewModel.activeUsers) { user in
                        RecommendUserCell(user: user, isActive: true) {
                            UserDetailView()
                        }
                        .frame(width: 80, height: 100)
                        
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 110)
            .background(Rectangle().fill(Color.white).shadow(color: .black.opacity(0.15), radius: 2, y: 2))
        }
    }
    
    
    func createMyChatListView() -> some View {
        VStack {
            HStack {
                Text("My Chats")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.primaryText)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(width: 25, height: 25)
                    .padding(.horizontal)
            }
            .padding(.top)
            
            VStack {
                ForEach(viewModel.chatRooms) { chatRoom in
                    ChatRoomCell(chatRoom: chatRoom)
                }
            }
            .padding(.vertical, 10)
            
            
            
            Divider()
        }
    }
    
    func createWhatPeopleSayingView() -> some View {
        VStack {
            HStack {
                Text("What People ar talking about...")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.primaryText)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
            .padding(.top)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 18) {
                    ForEach(viewModel.whatPeopleSaygs) { whatPeopleSaying in
                        WhatPeopleSayingCell(whatPeopleSaying: whatPeopleSaying)
                    }
                }
                .padding()
            }
        }
        .padding(.bottom, 10)
    }
    
    
}

#Preview {
    MessageMainView()
}
