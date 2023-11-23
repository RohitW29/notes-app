import SwiftUI
 class NOTESVIEWER: ObservableObject {
    @Published var notes: [Notes] = [
        Notes(name: "All iCloud", text: "folder"),
        Notes(name: "Rohit Document", text: "folder"),
        Notes(name: "Arch Drawings", text: "folder"),
        

        
    ]
}

                    
struct ContentView: View {
    @StateObject private var notesViewer = NOTESVIEWER()
    @State private var searchText = ""
    //    @State private var file = newfile ()
    
    var body: some View {
        VStack {
            
    
            NavigationView {
                List {
                    ForEach(notesViewer.notes, id: \.id) { note in
                        NavigationLink(destination: TextEditor(text: .constant("Enter text"))) {
                            HStack {
                                Image(systemName: note.text)
                                    .foregroundColor(.yellow)
                                Text(note.name)
                                
                                
                                
                            }
                            
                        }
                    }
                }
                
                .searchable(text: $searchText)
                .navigationTitle("Folders")
                .toolbar { //edit on top
                    EditButton()
                        .foregroundColor(.yellow)
                    Spacer()
                    
                    
                    
                }
                .toolbar { //icons on the bottom
                    
                    ToolbarItem(placement: .bottomBar) {
                        ForEach(NOTESVIEWER().notes) { note in
                            NavigationLink(destination: TextEditor(text: .constant("Placeholder"))){
                                
                                
                                Button {
                                    print("Edit button was tapped")
                                } label: {
                                    
                                        Image(systemName: "folder.badge.plus")
                                }
                                
                                .foregroundColor(.yellow)
                            }
                        }
                    }
                        
                        ToolbarItem(placement: .bottomBar){
                            Button {
                                print("Edit button was tapped")
                            } label: {
                               
                                    
                                    
                                    Image(systemName: "square.and.pencil")
                            }.foregroundColor(.yellow)
                            
                        }
                    
                        
                                        
                }
            }
            //
            //
            //            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
