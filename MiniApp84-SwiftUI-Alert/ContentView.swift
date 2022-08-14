//
//  ContentView.swift
//  MiniApp84-SwiftUI-Alert
//

import SwiftUI

struct ContentView: View {
    @State var text = "　"
    @State var isShowAlert = false
    @State var isShowDialog = false

    var body: some View {
        VStack {
            Text(text)

            Button("アラート表示") {
                isShowAlert = true
            }
            .alert("タイトル", isPresented: $isShowAlert){
                Button("キャンセル"){
                    text = "アラートでキャンセルが押された"
                }
                Button("OK"){
                    text = "アラートでOKが押された"
                }
            }
            .padding()

            Button("ダイアログ表示"){
                isShowDialog = true
            }
            .confirmationDialog("タイトル", isPresented: $isShowDialog, titleVisibility: .visible) {
                Button("１つ目") {
                    text = "ダイアログで１つ目が押された"
                }
                Button("２つ目") {
                    text = "ダイアログで２つ目が押された"
                }
            } message: {
                Text("サブタイトル")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
