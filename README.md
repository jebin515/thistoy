# This Toy
 키덜트 오픈마켓 형식의 쇼핑몰 입니다.

## 사용 기술
* <img src="https://img.shields.io/badge/Spring-5.x-6DB33F?style=flat-square&logo=Spring&logoColor=6DB33F"/>
* <img src="https://img.shields.io/badge/Oracle-11g-F80000?style=flat-square&logo=Oracle&logoColor=F80000"/>
* <img src="https://img.shields.io/badge/Visual Studio Code-007ACC?style=flat-square&logo=Visual Studio Code&logoColor=white"/>
  <img src="https://img.shields.io/badge/Eclipse IDE-2C2255?style=flat-square&logo=Eclipse IDE&logoColor=white"/>
  <img src="https://img.shields.io/badge/Insomnia-5849BE?style=flat-square&logo=Insomnia&logoColor=white"/>
* <img src="https://img.shields.io/badge/JAVA-007396?style=flat-square&logo=Java&logoColor=white"/>  
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=JavaScript&logoColor=white"/>
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=HTML5&logoColor=white"/>
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=CSS3&logoColor=white"/>
  <img src="https://img.shields.io/badge/jQuery-0769AD?style=flat-square&logo=jQuery&logoColor=white"/>
* <img src="https://img.shields.io/badge/Apache Tomcat-9.0-FF9E0F?style=flat-square&logo=Apache Tomcat&logoColor=FF9E0F"/>
* <img src="https://img.shields.io/badge/Git-F05032?style=flat-square&logo=Git&logoColor=white"/>
  

## 개발 기간
* 2021-06-22 ~ 2021-08-03(약 6주)

  ![2](https://user-images.githubusercontent.com/80955533/130388132-2191f395-6922-4b31-90fe-2bc0d62dcd5a.png)
## 참여 인원
* 6명

## 담당 파트
* 프로젝트 개발환경 구축, 설계 참여
* 전체적인 디자인 구현
* 메인 페이지 구현
* 헤더 푸터 기능 구현
* 로그인 구현(api)
* 장바구니 기능구현(선택삭제, 선택결제)
* 결제 페이지 구현(우편 번호api, 구매목록 추가, 장바구니에서 삭제, 판매량 증가, 재고 감소)
* git 구축 및 담당

## 담당 기능 및 구현
* **Header**
![헤더](https://user-images.githubusercontent.com/80955533/130389056-bad7937f-780f-4231-a5cb-45f032631bcb.PNG)

    + 메인 검색 
        - 예시) 해달 검색!
        
            ![검색 1](https://user-images.githubusercontent.com/80955533/130389910-a80c46e1-a3e8-4525-aab2-030a49f8607c.PNG)
            
        - 검색 후 (제목을 기준으로 검색)
            
            ![검색 2](https://user-images.githubusercontent.com/80955533/130389913-1e6522f4-999e-4b1b-beae-e1f267edbf95.PNG)
            
* **Footer**
![푸터](https://user-images.githubusercontent.com/80955533/130389071-af1565d5-30c0-45f2-a3b5-57c1fdf170ec.PNG)

---

* **Main**

  전체적인 슬라이드 작동
![메인최종](https://user-images.githubusercontent.com/80955533/130390237-8b6e694e-6fbe-4a67-98db-d795326a4276.PNG)
    신상품 : 물품등록일자를 기준으로 가장 최신의 물품을 반영<br/><br/>
    인기제품 : 등록된 물품중 열람횟수가 가장 많은 물품을 반영
    
    + 해당 물품 호버시 제목/가격 및 사이트 이동 버튼
     
      ![메인3](https://user-images.githubusercontent.com/80955533/130390350-38edd97c-c242-4e20-a7ea-c5c4f996d9e4.PNG)
      

---

* **Login**

    소셜 로그인 및 로그인
    
    ![로그인](https://user-images.githubusercontent.com/80955533/130390754-6a9324ce-42a1-4bb7-a75f-0e14c3276e7f.PNG)
    
    카카오 , 구글 , 네이버 api 사용
---

* **OrderPage**
  
  주문페이지
  
  ![주문페이지](https://user-images.githubusercontent.com/80955533/130403838-925d192a-4121-4e95-83ef-d956d4b00a53.PNG)
  
  - db에서 해당하는 유저의 정보를 가져와 기본배송지 및 이름 및 전화번호 전달
  - 장바구니 및 바로구매를 통해 넘어온 데이터로 물품을 출력
  - 결제api(아임포트)를 통해 금액검증 후 결재완료 시 ajax통신으로 데이터를 db에 저장 
  
  주문페이지(신규배송지)
  
  ![오더페이지3](https://user-images.githubusercontent.com/80955533/130404904-22a626c8-c9ac-4f83-b3c1-e39517ea91de.PNG)
  
  - 신규배송지에 작성한 이름,전화번호,주소 db에 저장
  - 실시간으로 작성한 이름,전화번호를 출력
  - 결재완료시 주문목록에 신규배송지로 작성되어있는 값으로 출력
  
  ![오더페이지 코드](https://user-images.githubusercontent.com/80955533/130406193-a01346f0-1948-4379-bfa2-29d85efbea8c.PNG)
  
---

## DB
* USER

  ![3](https://user-images.githubusercontent.com/80955533/130392513-86265a29-5993-4689-bae5-d5a25a0d0f44.jpg)

* ADMIN

  ![4](https://user-images.githubusercontent.com/80955533/130392509-1beac1fe-5a76-436a-ac4d-c947eab2c69d.jpg)

* ERD
 
  ![5](https://user-images.githubusercontent.com/80955533/130388497-d9186f5e-8bbd-4d39-be2c-578e4964c720.jpg)

