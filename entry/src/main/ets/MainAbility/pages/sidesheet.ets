//@Component
//export struct CustomDesign {
//  @Builder
//  customDesign(): any {
//    Text("Custom builder design")
//  }
//  show : boolean = true
//  build() {
//    Column() {
//
//      LibraryDesign({
//        ui: this.customDesign()
//      })
//
//    }
//  }
//}

@Component
export struct MaterialSheet {
  @BuilderParam
  private ui: () => any
  widthPercent: string = "70%"
  @Link visible : boolean
  build() {
    if(this.visible) {
      Row() {
        Column() {
          Text("Library with custom builder").fontSize(30)
        }
        .width('30%')
        .backgroundColor('#5e6b6b6b')
        .onClick(()=>{
          this.visible = false
        })
        Column() {
          Text("Library with custom builder").fontSize(30)
          this.ui()
        }
        .width(this.widthPercent)
        .backgroundColor("#ffd70000")
      }
      .transition({ type: TransitionType.Insert, scale: { x: 0.0, centerX: 0.0 } })
      .transition({ type: TransitionType.Delete, scale: { x: 0.0, centerX: 0.0 } })
      .height("100%")
    }
  }
}