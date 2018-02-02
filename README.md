# PhotoFrame step1

>  시작하기 - Tabbed App 템플릿
자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.


- 코드 작성
<img src="/img/FirstView.png" width="60%" height="40%">
<img src="/img/SecondView.png" width="60%" height="40%">


- 콘솔 화면
<img src="/img/FirstConsole.png" width="30%" height="40%">
<img src="/img/SecondConsole.png" width="30%" height="40%">


- 실행 화면
<img src="/img/FirstViewScreen.png" width="30%" height="40%">
<img src="/img/SecondViewScreen.png" width="30%" height="40%">


- 애플 UIKit View Management 클래스 중에서 UITabBarController 와 UITabBar에 대해 학습한다.

1. UITabBarController
: 탭바를 누를 때 어떤 화면을 보여줄지 결정 하는 Controller

Main.storyboard를 클릭하면 다음과 같은 화면이 뜬다.
![title](/img/TabBarController.png){: width="500" height="500"}
탭바 버튼 선택에 FirstView를 보여줄지, SecondView를 보여줄지를 Controller에서 뻗어나가는 화살표로 이미지화 시켜서 보여주고 있다.
Main.storyboard 오른쪽 마우스클릭 후 Open As > Source Code를 클릭하면 소스코드로도 볼 수 있는데,

```
<tabBarController id="49e-Tb-3d3" sceneMemberID="viewController">
    <tabBar key="tabBar" contentMode="scaleToFill" id="W28-zg-YXA">
        <rect key="frame" x="0.0" y="975" width="768" height="49"/>
        <autoresizingMask key="autoresizingMask" widthSizable="YES" flexibleMinY="YES"/>
        <color key="backgroundColor" red="0.0" green="0.0" blue="0.0" alpha="0.0" colorSpace="custom" customColorSpace="sRGB"/>
    </tabBar>
    <connections>
        <segue destination="9pv-A4-QxB" kind="relationship" relationship="viewControllers" id="u7Y-xg-7CH"/>
        <segue destination="8rJ-Kc-sve" kind="relationship" relationship="viewControllers" id="lzU-1b-eKA"/>
    </connections>
</tabBarController>
```

firstView의 ID는 `9pv-A4-QxB`로, SecondView의 ID는  `8rJ-Kc-sve`로 각각 버튼을 누르면 연결할 수 있도록 설정되었다.


2. UITabBar
: 탭 바에 하나 이상의 버튼을 표시하는 Controller

```
<tabBar key="tabBar" contentMode="scaleToFill" id="W28-zg-YXA">
    <rect key="frame" x="0.0" y="975" width="768" height="49"/>
    <autoresizingMask key="autoresizingMask" widthSizable="YES" flexibleMinY="YES"/>
    <color key="backgroundColor" red="0.0" green="0.0" blue="0.0" alpha="0.0" colorSpace="custom" customColorSpace="sRGB"/>
</tabBar>
```
Background, Shadow, Selection, Image Tint, Style, Bar Tint, Item Positioning를 설정할 수 있다.




# PhotoFrame step2

>  IBOutlet
First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결하고 속성을 바꿔본다.

- 코드 작성
```
@IBOutlet weak var firstLabel: UILabel!
@IBOutlet weak var firstDescription: UILabel!
override func viewDidLoad() {
    super.viewDidLoad()
    self.firstLabel.text = "Elly의 사진액자"
    self.firstDescription.text = "글자색, 배경색, 투명도, 글자 크기를 바꿔본 Description"
    self.firstDescription.textColor = UIColor.white
    self.firstDescription.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
    self.firstDescription.font = UIFont.boldSystemFont(ofSize: 15)

    print(#file, #line, #function, #column)
}
```


- 실행 화면
<img src="/img/IBOutlet.png" width="30%" height="30%">




# PhotoFrame step3

>  IBAction
First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.

- 학습꺼리
* 버튼에 IBAction을 추가할 때 이벤트(Event) 종류에는 어떤 것들이 있는지 학습한다.
:
* 버튼에 액션을 여러개 추가할 수 있을까?
: 여러개 추가할 수는 있으나 제일 마지막 IBAction이 실행된다.
<img src="/img/several_IBAction.png" width="30%" height="30%">

* 버튼이 여러일 때 하나의 액션에 추가할 수 있을까?
: 하나의 액션에 여러개의 버튼을 추가할 수 있다.
만들어둔 하나의 메소드에 여러번 접근할 수 있듯, 하나의 액션도 여러개의 버튼을 추가할 수 있는 것 같다.


- 실행 화면
<img src="/img/IBAction_before.png" width="30%" height="30%">
<img src="/img/IBAction_after.png" width="30%" height="30%">
