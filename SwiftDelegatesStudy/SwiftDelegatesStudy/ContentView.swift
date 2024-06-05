//
//  ContentView.swift
//  SwiftDelegatesStudy
//
//  Created by Caio Gomes Piteli on 05/06/24.
//

import SwiftUI

struct ContentView: View {
    
    let file = File(fileName: "example.zip", fileSize: 50)
    let downloadManager = DownloadManager()
    
    /**
     Below we have two different delegates.
     
     If you use "DownloadInterface" as the "DownloadManager" delegate, the infos will be shown on the simulator.
     If you use "DownloadConsole" as the "DownloadManager" delegate, the infos will be shown on the console.
     
     This show the versatility of having a delegate --> we can easily change the implementation of what happens when my "model" updates it's state.
     So, if i have multiple people working on the code, we make it easier for people to create their own implementation of what should happen when my model update it's state.
     
     **/
    @StateObject var interfaceDelegate = DownloadInterface() //It's a StateObject since it's going to update informations on the screen
    let consoleDelegate = DownloadConsole() //It is not a StateObject since it will only print informations on console
    
    var body: some View {
        VStack {
            Text("Download started: \(interfaceDelegate.downLoadStarted)")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
        
            Text("Download progress: \(interfaceDelegate.progress)")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            
            Button(action: {
                downloadManager.delegate = interfaceDelegate //Only changing this line (interfaceDelegate or consoleDelegate) I'll change what happens when my model updates it's state
                downloadManager.startDownload(file)
            }){
                Text("Start download!")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .font(.body)
            }.padding()
        }
    }
    
}
