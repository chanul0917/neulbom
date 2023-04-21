# 요약

팀프로젝트_Version 1 ( 2023.2.15 ~ 2023.4.21 )

프로젝트명 : 늘 봄 (늘 보다, 늘 돌보다, 언제나 봄이다 언어유희적 표현) 

테마 : 산업화 & 사회화로 인한 개인주의적 트렌드에 따라서, 인간관계에 어려움을 느끼는 이들은 반려동물들과 함께 생활하며, 돌보며, 돌봄 받는다.
       5가구중 반려동물 없는 가구가 없을 정도로 밀접한 관계를 유지하고있는 반려견에게 반려인으로써 할 수 있는 일들은..
       아기들이 태어나자마자 뛰어 다닐 수 없듯, 이들 또한 습득하고 터득하지 않는다면 의사 소통에 큰 어려움을 느낄것이다.
       물론 반려견 뿐만 아니라 반려인과 함께 한다면, 더욱 더 멋진 하루하루가 만들어 질것이다.
       그들을 위해서 많은 노력을 하는 분들에게 영향을 받아, "반려견 교육을 위해 쓰임을 다하는 홈페이지를 만들자!"

* Leader : Kim(https://github.com/ha2ee)
* Member : Lim(https://github.com/alice-limyj)
* Member : Lee(https://github.com/leeseohoon)
* Member : Park(https://github.com/seeeop2)
* Member : Kim(https://github.com/hee29)
* Member : Kim(https://github.com/chanul0917)

* 사용 기술 :
  * Tool : eclipse , editplus++ , github(egit)
  * Tech : JAVA / JavaScript / CSS / JQUERY / JSP / Web Servlet MVC / HTML 
  * DB : ORACLE 11g SQL Developer
  * Server : Tomcat 9.0

## **📌프로젝트 소개**

---

- 기간 : 2023.02.15 ~ 2023.04.15
- 주제 : 반려동물 교육 플랫폼
- 담당 파트 : 답글형 게시판(훈련사 상담) 및 관리자 페이지 구현
- 사용 기술
    - Tool : eclipse, github
    - Tech : JAVA / JavaScript / CSS / jQuery / JSP / Servlet MVC / HTML
    - DB : ORACLE 11XE SQL Developer
    - Server : Tomcat 9.0

## **🛠기능 요약**

---

1. 반려동물을 기르는 반려인들이 전문 트레이너들에게 상담을 받고, 교육을 신청하여 수강 할 수 있는 기능을 가집니다.
2. 자유게시판, 수강 후기 게시판을 통해 커뮤니티의 기능을 가집니다.

## **주요기능**

---

- 담당 파트
    - 회원가입 및 로그인
        - 아이디 중복 체크 및 정규표현식을 이용하여 회원 가입 양식 지정
        - 아이디 비밀번호 찾기 기능 제공
        - 일반 회원과 트레이너 회원을 구분, 트레이너 회원의 경우 가입신청 -> 관리자 승인 방식
        - 마이페이지에서 펫 정보 및 개인정보 수정가능
- 메인화면
    - 1920 * 1080을 기준으로 제작 되었으며, 우측 상단엔 날씨 API를 이용하여 날씨에 따라 다른 문구들을 출력하게 함.
    - 퀵메뉴의 1:1 채팅문의는 카카오 챗봇연동으로 고객센터를 운영
    - 카카오 맵 API를 활용하여 지도 검색 기능을 제공
    - jsp Include 방식을 적용하여 Header, Section, Footer으로 페이지 구성
- 회원가입 및 로그인
    - 아이디 중복 체크 및 정규표현식을 이용하여 회원 가입 양식 지정
    - 아이디 비밀번호 찾기 기능 제공
    - 일반 회원과 트레이너 회원을 구분, 트레이너 회원의 경우 가입신청 -> 관리자 승인 방식
    - 마이페이지에서 펫 정보 및 개인정보 수정가능
- 게시판
    - 자유게시판
        - 커뮤니티 기능을 가진 게시판, 좋아요 및 댓글 기능이 구현 되어 있음.
    - 훈련사 상담 게시판
        - 고객과 관리자가 소통하는 게시판, 댓글이 없는 답변형 게시판으로 트레이너가 글을 작성하는 경우 작성자명에 🍎이모지 및 아이디 볼드 처리
        - CKEDITOR로 이미지를 업로드 후 글을 작성하면 자동으로 이미지 다운로드 링크 생성(HTML5 download 적용)
    - 수강 후기 게시판
        - 이미지를 업로드 하면 게시글 리스트에서 썸네일처럼 나타나는 썸네일 형 게시판
- 수강신청
    - 원하는 트레이너를 선택해 교육 수강을 신청 할 수 있음, 오늘 기준 일주일 뒤 부터 한달뒤까지 총7회 예약 가능
    - 해당 트레이너의 해당 일자에 수강 신청을 한 인원이 있는 경우 수강 신청 불가능하게 구현
    - 결제간 카카오페이 API 적용
- 관리자 페이지
    - 회원 리스트 조회, 회원 정보 수정 및 삭제, 트레이너 관리 등 회원관리 기능 및 게시판 관리 기능(글 조회 및 삭제)
    - 관리자 메인 페이지에서 최근 등록된 회원, 트레이너, 글 확인 가능

## **이미지 자료**
![Untitled (4)](https://user-images.githubusercontent.com/125801596/233522987-04e4083f-0f90-4243-8473-2cb292d7f556.png)
![Untitled (5)](https://user-images.githubusercontent.com/125801596/233522990-e04ea2ab-4e4f-4be7-a621-5d18d725e60c.png)
![Untitled (6)](https://user-images.githubusercontent.com/125801596/233522996-39dec42d-30aa-4af4-b599-ff2329a2f57e.png)
![Untitled](https://user-images.githubusercontent.com/125801596/233522586-bf8329a8-7f1e-490a-b4ff-aa0f3a087f66.png)
![Untitled (1)](https://user-images.githubusercontent.com/125801596/233522602-362e5dce-96b7-4ddd-8c04-85b268a2caf5.png)
![Untitled (2)](https://user-images.githubusercontent.com/125801596/233522611-44716ed0-4f96-4ff3-b983-744c355b0824.png)



## **🔖DB 구성**

![Untitled (3)](https://user-images.githubusercontent.com/125801596/233522618-4b14cb80-490d-4746-af73-73f3d67ee969.png)




## 업데이트 내역
* 0.1 
  * 기본파일 업로드
* 0.2
  * 2023-02-28 
  * 수강 신청, 자유게시판, 훈련사 상담, 회원 가입 구현중
* 0.3
  * 2023-03-03
  * DB구성 변경(MemberVo, TrainerVo, PetVo)
* 0.4
  * 2023-03-08
  * 자유게시판, 훈련사 상담, 회원 가입, 수강 신청 병합 완료
* 0.5
  * 2023-03-16
  * 자유게시판, 훈련사 상담, 회원 가입, 수강 신청, 구현 완료
* 0.6
  * 2023-03-22
  * 소스코드 정리, 파일 나누기, 수강 후기, 기타 기능 구현중
* 0.7
  * 2023-03-29
  * 파일 취합 완료
* 0.8
  * 2023-04-05
  * 최종 파일 구현 점검, ppt 발표 준비
