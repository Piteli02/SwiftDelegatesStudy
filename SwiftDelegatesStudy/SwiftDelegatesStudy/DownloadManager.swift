//
//  DownloadManager.swift
//  SwiftDelegatesStudy
//
//  Created by Caio Gomes Piteli on 05/06/24.
//

import Foundation

// Create a DownloadManager class
class DownloadManager {
    var delegate: DownloadDelegate?
    
    func startDownload(_ downloadable: Downloadable) {
        var download = downloadable
        download.delegate = self
        download.download()
        
        delegate?.startDownload(fileName: downloadable.fileName)
    }
    
    func updateProgress(for fileName: String, progress: Double) {
        delegate?.downloadProgress(fileName: fileName, progress: progress)
    }
    
    func completeDownload(for fileName: String) {
        delegate?.downloadCompleted(fileName: fileName)
    }
}
