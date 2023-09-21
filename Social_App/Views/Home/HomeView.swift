//
//  HomeView.swift
//  Social_App
//
//  Created by 이기완 on 2023/09/18.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel = HomeViewModel()
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            ZStack(alignment: .top) {
                VStack {
                    Spacer()
                        .frame(height: 50)
                    
                    
                    ScrollView {
                        createRecommendUsersView()
                        Spacer()
                            .frame(height: 15)
                        createUserFeedsView()
                        Spacer()
                            .frame(height: 25)
                    }
                    .background(Color.white)
                }
                .padding(.top, .topInsets)
                .background(Color.white)
                
                createNavigationBar()
            }
            .ignoresSafeArea()
            .task {
                print("ff")
                await viewModel.fetchRecommendUsers()
                await viewModel.fetchUserFeeds()
            }
        }
        .navigationDestination(for: Int.self) { val in
            let _ = print(val)
            UserDetailView()
        }        
    }
    
    
    func createNavigationBar() -> some View {
        ZStack(alignment: .bottom) {
            Rectangle()
                .frame(height: 50)
                .shadow(radius: 3)
            
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis.bubble")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal)
                        .foregroundColor(.primaryText)
                }
                                    
                Text("Logo")
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
            .frame(height: 50)
            .background(Color.white)
            

        }
        .padding(.top, .topInsets)
    }
    
    func createRecommendUsersView() -> some View {
        VStack {
            Text("Recomendations")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.primaryText)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.top)
            
            ScrollView(.horizontal) {
                LazyHStack(alignment: .top) {
                    
                    ForEach(viewModel.recommendUsers) { user in
                        RecommendUserCell(user: user) {
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
    
    func createUserFeedsView() -> some View {
        ForEach(viewModel.userFeeds) { userFeed in
            VStack {
                HStack(spacing: 0) {
                    Button {
                        path.append(1)
//                        path.append(userFeed)
                    } label: {
                        Image(userFeed.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            
                            .clipShape(Circle())
                            .padding(.horizontal)
                            .padding(.vertical, 4)
                    }

                    
                    
                    VStack(alignment: .leading) {
                        Text(userFeed.name)
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.primaryText)
                        
                        Spacer()
                            .frame(height: 3)
                        
                        Text(userFeed.status)
                            .font(.system(size: 14, weight: .regular))
                            .foregroundColor(.secondaryText)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button {
                        
                    } label: {
                        Image("more")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .padding()
                    }
                }
            
                
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(userFeed.images, id: \.self) { image in
                            Button {
                                
                            } label: {
                                Image(image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 140, height: 110)
                                    .cornerRadius(12)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .scrollIndicators(.hidden)
                .padding(.bottom, 10)
                
            }
        }

        
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
