import SwiftUI

struct LayoutsPage: View {
    var body: some View {
        NavigationStack {
            List {
                Section() {
                    NavigationLink {
                        VStackTopAlignedPage()
                    } label: {
                        Text("Top Aligned")
                    }
                    
                    NavigationLink {
                        VStackMiddleAlignedPage()
                    } label: {
                        Text("Middle Aligned")
                    }
                    
                    NavigationLink {
                        VStackBottomAlignedPage()
                    } label: {
                        Text("Bottom Aligned")
                    }
                    
                    NavigationLink{
                        VStackContentLeftAlignedPage()
                    } label: {
                        Text("Content Left Aligned")
                    }
                    
                    NavigationLink{
                        VStackContentCenterAlignedPage()
                    } label: {
                        Text("Content Center Aligned")
                    }
                    
                    NavigationLink{
                        VStackContentRightAlignedPage()
                    } label: {
                        Text("Content Right Aligned")
                    }
                    
                    NavigationLink{
                        VStackContentSpacingPage()
                    } label: {
                        Text("Content Spacing")
                    }
                    
                    NavigationLink {
                        VStackExceedsAvailableSpacePage()
                    } label: {
                        Text("VStack Exceeds available space")
                    }
                    
                    NavigationLink{
                        LazyVStackExceedsAvailableSpacePage()
                    } label: {
                        Text("LazyVStack Exceeds available space")
                    }
                    
                } header: {
                    Text("VStack")
                }
                
                Section() {
                    NavigationLink {
                        HStackLeftAlignedPage()
                    } label: {
                        Text("Left Aligned")
                    }
                    NavigationLink {
                        HStackCenterAlignedPage()
                    } label: {
                        Text("Center Aligned")
                    }
                    
                    NavigationLink {
                        HStackRightAlignedPage()
                    } label: {
                        Text("Right Aligned")
                    }
                    
                    NavigationLink {
                        HStackContentTopAlignedPage()
                    } label: {
                        Text("Content Top Aligned")
                    }
                    
                    NavigationLink {
                        HStackContentCenterAlignedPage()
                    } label: {
                        Text("Content Center Aligned")
                    }
                    
                    NavigationLink {
                        HStackContentBottomAlignedPage()
                    } label: {
                        Text("Content Bottom Aligned")
                    }
                    
                    NavigationLink {
                        HStackContentFirstTextBaselineAlignedPage()
                    } label: {
                        Text("Content First Text Baseline Aligned")
                    }
                    
                    NavigationLink {
                        HStackContentLastTextBaselineAlignedPage()
                    } label: {
                        Text("Content Last Text Baseline Aligned")
                    }
                    
                    NavigationLink {
                        HStackExceedsAvailableSpacePage()
                    } label: {
                        Text("HStack Exceeds available space")
                    }
                    
                    NavigationLink {
                        LazyHStackExceedsAvailableSpacePage()
                    } label: {
                        Text("Lazy HStack Exceeds available space")
                    }
                } header: {
                    Text("HStack")
                }
                
                Section() {
                    NavigationLink {
                        ZStackDemo()
                    } label: {
                        Text("ZStack Demo")
                    }
                    
                    NavigationLink {
                        ZStackTopAlignment()
                    } label: {
                        Text("ZStack Top Alignment")
                    }
                    
                    NavigationLink {
                        ZStackTopLeadingAlignment()
                    } label: {
                        Text("ZStack Top Leading Alignment")
                    }
                    
                    NavigationLink {
                        ZStackTopTrailingAlignment()
                    } label: {
                        Text("ZStack Top Trailing Alignment")
                    }
                    
                    NavigationLink {
                        ZStackCenterAlignment()
                    } label: {
                        Text("ZStack Center Alignment")
                    }
                    
                    
                    NavigationLink {
                        ZStackBottomAlignment()
                    } label: {
                        Text("ZStack Bottom Alignment")
                    }
                    
                    NavigationLink {
                        ZStackBottomLeadingAlignment()
                    } label: {
                        Text("ZStack Bottom Leading Alignment")
                    }
                    
                    NavigationLink {
                        ZStackBottomTrailingAlignment()
                    } label: {
                        Text("ZStack Bottom Trailing Alignment")
                    }
                    
                } header: {
                    Text("ZStack")
                }
                
                Section() {
                    TodoLink(label: "Fits available space")
                    
                    TodoLink(label: "Exceeds available space")
                } header: {
                    Text("Grid")
                }
            }.navigationTitle("Layouts")
        }
    }
}

struct LayoutsPage_Previews: PreviewProvider {
    static var previews: some View {
        LayoutsPage()
    }
}
