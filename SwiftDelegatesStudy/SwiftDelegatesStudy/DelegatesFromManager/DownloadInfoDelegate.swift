//
//  DownloadInfoDelegate.swift
//  SwiftDelegatesStudy
//
//  Created by Caio Gomes Piteli on 05/06/24.
//

import Foundation

class DownloadInfo: ObservableObject, DownloadDelegate {
    
    @Published var progress: String = ""
    @Published var downLoadStarted: Bool = false

    func startDownload(fileName: String) {
        Task {
            await MainActor.run {
                self.downLoadStarted = true
            }
        }
    }
    
    func downloadProgress(fileName: String, progress: Double) {
        Task {
            await MainActor.run {
                self.progress = "\(progress) %"
            }
        }
    }
    
    func downloadCompleted(fileName: String) {
        Task {
            await MainActor.run {
                self.progress = "Completed!"
            }
        }
    }
}
