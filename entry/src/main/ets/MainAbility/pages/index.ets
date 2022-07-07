import {LibraryDesign} from "./sidesheet"

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State showSideSheet : boolean = false
  @Builder
  design(): any {
    Text(this.message)
      .fontSize(50)
      .fontWeight(FontWeight.Bold)
      .fontColor(Color.Pink)
  }

  build() {
        Stack() {
          Column() {
            Button("Click").onClick(()=>{
              this.showSideSheet = true
            })
          }
          LibraryDesign({
            ui: this.design(),
            show : $showSideSheet
          })
        }
  }
}