//
//  ContentView.swift
//  Hacker
//
//  Created by Suokhwan Yun on 2020-12-07.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                            
                        
                        }
                    }
                
                )}
            
            .navigationTitle("Hacker")
        }
        
        .onAppear(perform: {
            networkManager.fetchData()
        })
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id: "1", title: "Hi"),
//    Post(id: "2", title: "Hl"),
//    Post(id: "3", title: "He")
//
//
//
//
//]
