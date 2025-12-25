//
//  ContentView.swift
//  TuJo
//
//  Created by christian on 12/24/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var matches: [Match]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(matches) { match in
                    NavigationLink {
                        Text("Match deets")
                    } label: {
                        HStack {
                            Text("Match ID:")
                            Spacer()
                            Text(match.id.uuidString.prefix(10))
                        }
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newMatch = Match()
            modelContext.insert(newMatch)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(matches[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Match.self, inMemory: true)
}
