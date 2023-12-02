# SwiftUI Essentials

Most common UI components used in SwiftUI


## Text

```swift
struct TextView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
            .navigationTitle("Text View")
    }
}
```
## TextField

```swift
struct TextFieldView: View {
    @State private var text = ""

    var body: some View {
        TextField("Enter some text...", text: $text)
            .padding()
            .foregroundColor(.black)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
            .shadow(radius: 2)
            .padding(20)
            .navigationTitle("TextField View")
    }
}
```

## TextEditor

```swift
struct TextEditorView: View {
    @State private var text = ""

    var body: some View {
        TextEditor(text: $text)
            .padding()
            .foregroundColor(.black)
            .cornerRadius(2)
            .shadow(radius: 1)
            .padding(8)
            .navigationTitle("TextEditor View")
    }
}
```

## Button

```swift
struct ButtonView: View {
    var body: some View {
        Button(action: {}) {
            Text("Press here")
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.mint)
                .cornerRadius(20)
        }
        .navigationTitle("Button View")
    }
}
```

## Image

```swift
struct ImageView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .navigationTitle("Image View")
    }
}
```

## List

```swift
struct ListView: View {
    
    var body: some View {
            List(0..<10) { item in
                    HStack {
                        Text("\(item)")
                    }
            }
            .navigationTitle("List View")
            .navigationBarTitleDisplayMode(.inline)
    }
}
```

## Grid

```swift
struct GridView: View {
    
    struct ColorView: View {
        let color: Color
        
        var body: some View {
            color
                .frame(width: 50, height: 50)
        }
    }
    
    enum GridColumns:String,CaseIterable,Identifiable{
        
        var id:String{
            return rawValue
        }
        
        case pink,yellow,mint,red,blue,green,gray,black
        
        var color:Color{
            switch self{
            case .pink: return .pink
            case .yellow: return .yellow
            case .mint: return .mint
            case .red: return .red
            case .blue: return.blue
            case .green: return .green
            case .gray: return .gray
            case .black: return .black
            }
        }
    }
    
    var body: some View {
            Grid {
                ForEach(GridColumns.allCases){ item in
                    GridRow {
                        ForEach(0..<Int.random(in: 2..<7), id: \.self) { _ in
                            ColorView(color: item.color)
                        }
                    }
                }
            }
            .navigationTitle("Grid View")
    }
}
```

## Picker / Segment / Menu 

```swift
struct PickerView<Style:PickerStyle>: View {
    
    enum Color:String, CaseIterable, Identifiable{
        var id:String { rawValue }
        case red,green,blue
    }
    
    
    var style:Style
    
    @State var color:Color = .red
    
    var body: some View {
        VStack {
            Picker("Pick a color?", selection: $color) {
                ForEach(Color.allCases){ item in
                    Text(item.rawValue.uppercased()).tag(item)
                }
            }
            .pickerStyle(style)
            Text("Value: \(color.rawValue)")
        }
        .padding(20)
        .navigationTitle("Picker View")
    }
}

let picker = PickerView(style: .inline)
let segment = PickerView(style: .segmented)
let menu = PickerView(style: .menu)
```
## Date Picker

```swift
struct DatePickerView: View {
    
    @State private var date = Date()
    
    var body: some View {
        DatePicker("", selection: $date)
            .datePickerStyle(.wheel)
        .navigationTitle("Date Picker")
    }
}
```

## Form

```swift
struct FormView: View {
    
    @State public var username:String = ""
    @State public var password:String = ""
   
    
    var body: some View {
        Form {
            Section {
                TextField(
                        "Username",
                        text: $username
                    )
                TextField(
                        "Password",
                        text: $password
                    )
            }

            Section {
                Button("Submit") {
                  
                }
            }
        }.navigationTitle("Form View")
    }
}
```

## Spinner

```swift
struct SpinnerView: View {
    var body: some View {
        ProgressView()
            .navigationTitle("Spinner View")
    }
}
```

## Slider

```swift
struct SliderView: View {
    
    @State private var value = 0.0
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            Slider(value: $value,
                   in: 0...100,
                   onEditingChanged: { editing in
                isEditing = editing
            })
            Text("\(value)")
        }
        .padding(20)
        .navigationTitle("Slider View")
    }
}
```

## Search

```swift
struct SearchView: View {
    
    let names = ["Holly", "Josh", "Rhonda", "Ted","Zen","Apple","Banana","Cup"]
    @State private var searchText = ""
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
    
    var body: some View {
        List {
            ForEach(searchResults, id: \.self) { name in
                Text(name)
            }
        }
        .listStyle(.plain)
        .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always)) {
            ForEach(searchResults, id: \.self) { result in
                Text("\(result)").searchCompletion(result)
            }
        }
        .navigationTitle("Search View")
    }
}
```

## Alert

```swift
struct AlertView: View {
    
    @State public var alert:Bool = false
    
    var body: some View {
        HStack{
            Button("Show Alert") {
               alert = true
            }.alert(isPresented: $alert) {
                Alert(title: Text("Hello World!"))
            }
        }.navigationTitle("Alert View")
    }
}
```

## Sheet

```swift
struct SheetView: View {
    
    @State private var showing = false

    var body: some View {
        Button("Show") {
            showing.toggle()
        }
        .sheet(isPresented: $showing) {
            Text("Hello World!")
                .presentationDetents([.medium, .large])
                .presentationBackground(.mint)
        }
        .navigationTitle("Sheet View")
    }
}
```

## Tabs / Pager 

```swift
struct TabContainerView<Style:TabViewStyle>: View {
    
    var style:Style
    
    var body: some View {
        TabView {
            TabChildView(background: .mint)
                .background(.black)
                .tabItem {
                    Text("First")
                }
            TabChildView(background: .cyan)
                .tabItem {
                    Text("Second")
                }
        }
        .tabViewStyle(style)
        .navigationTitle("Tabs View")
    }
}

struct TabChildView: View {
    
    var background:Color
    
    var body: some View {
        VStack {
            Spacer()
            Rectangle()
                .frame(height: 0)
                .background(.thickMaterial)
        }
        .background(background)
    }
}

let tabs = TabContainerView(style: .automatic)
let pager = TabContainerView(style: .page)
```



