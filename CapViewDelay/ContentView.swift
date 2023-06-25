//
//  ContentView.swift
//  CapViewDelay
//
//  Created by Marc Tuinier on 6/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var duration: String = "5"
    @State private var currentDuration: String = "Unknown"
    
    var body: some View {
        VStack {
            Text("Set Screenshot Preview Duration")
            TextField("Enter duration in seconds", text: $duration)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                self.setScreenshotPreviewDuration()
                self.getCurrentDuration()
            }) {
                Text("Set Duration")
            }
            Text("Current duration: \(currentDuration) seconds")
                .padding()
        }
        .onAppear() {
            self.getCurrentDuration()
        }
    }
    
    private func setScreenshotPreviewDuration() {
        guard let durationInt = Int(duration) else {
            print("Invalid duration: \(duration)")
            return
        }
        
        let command = """
        defaults write com.apple.screencaptureui "thumbnailExpiration" -float \(durationInt) &&
        killall SystemUIServer
        """
        
        let process = Process()
        process.launchPath = "/bin/sh"
        process.arguments = ["-c", command]
        
        do {
            try process.run()
            print("Executed the command successfully.")
        } catch {
            print("An error occurred: \(error)")
        }
    }
    
    private func getCurrentDuration() {
        let process = Process()
        process.launchPath = "/usr/bin/defaults"
        process.arguments = ["read", "com.apple.screencaptureui", "thumbnailExpiration"]
        
        let pipe = Pipe()
        process.standardOutput = pipe
        
        do {
            try process.run()
            process.waitUntilExit()
            
            let data = pipe.fileHandleForReading.readDataToEndOfFile()
            let output = String(data: data, encoding: .utf8)?.trimmingCharacters(in: .whitespacesAndNewlines)
            
            print("Task output: \(String(describing: output))")
            
            currentDuration = output ?? "Unknown"
        } catch {
            print("An error occurred: \(error)")
        }
    }
}
