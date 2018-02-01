# PhotoFrame step1

>  시작하기 - Tabbed App 템플릿
- 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.


- 코드 작성
![title](/img/FirstView.png){: width="300" height="300"}
![title](/img/SecondView.png){: width="300" height="300"}


- 콘솔 화면
![title](/img/FirstConsole.png){: width="100" height="500"}
![title](/img/SecondConsole.png){: width="100" height="500"}


- 실행 화면
![title](/img/FirstViewScreen.png){: width="300" height="500"}
![title](/img/SecondViewScreen.png){: width="300" height="500"}


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

firstView의 ID는 `9pv-A4-QxB`로, SecondView의 ID는  `8rJ-Kc-sve`로 설정해서 각각 연결해 둔 것을 볼 수 있다.

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
