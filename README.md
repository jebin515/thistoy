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

 ![기획 및 역할](https://user-images.githubusercontent.com/77195474/130573066-258e62c6-efb9-4472-bc97-91b83b8313e9.PNG)
## 참여 인원
* 6명

## 담당 파트
* 프로젝트 개발환경 구축, 설계 참여
* 일부 디자인 구현
* 상품 판매 등록 구현
* 상품 검색 구현
* 상품 리스트 페이지 구현
* 상품 리뷰, 문의, 찜하기, 장바구니 넣기 기능 구현
* 마이페이지 구현
* 이외에 백엔드 총괄
---
## DB
* USER

  ![3](https://user-images.githubusercontent.com/80955533/130392513-86265a29-5993-4689-bae5-d5a25a0d0f44.jpg)

* ADMIN

  ![4](https://user-images.githubusercontent.com/80955533/130392509-1beac1fe-5a76-436a-ac4d-c947eab2c69d.jpg)

* ERD
 
  ![5](https://user-images.githubusercontent.com/80955533/130388497-d9186f5e-8bbd-4d39-be2c-578e4964c720.jpg)
---

## 담당 기능 및 구현
* 상품 판매 등록

![상품등록](https://user-images.githubusercontent.com/77195474/130574077-a856b49e-73eb-421d-b2f5-279ce1e9e4b2.PNG)

+ 상품 판매 등록(코드)
    - 슬라이드 사진 컬럼과 상품설명 컬럼에 사진 저장.
    - 쉼표(,)단위로 사진이름 끊어서 저장.
    - 최소 1장의 슬라이드 사진과 상품설명 사진 필요.

![판매등록코드1](https://user-images.githubusercontent.com/77195474/130574597-d1437090-8076-43f7-988f-ed2122847e3f.PNG) ![판매등록코드2](https://user-images.githubusercontent.com/77195474/130574658-a5671f0e-6a0d-42e4-ad79-eba003e99c42.PNG)

---

 +  검색
    - 예시) 해달 검색!
            ![검색 1](https://user-images.githubusercontent.com/80955533/130389910-a80c46e1-a3e8-4525-aab2-030a49f8607c.PNG)
            
    - 검색 후 (제목을 기준으로 검색)
            ![검색 2](https://user-images.githubusercontent.com/80955533/130389913-1e6522f4-999e-4b1b-beae-e1f267edbf95.PNG)
            
    - 검색 결과 없을 때
            ![검색결과2](https://user-images.githubusercontent.com/77195474/130575775-15ab0206-2568-4d78-957d-d6ed69298e3c.PNG)

---
* 상품 리스트 페이지

![리스트페이지](https://user-images.githubusercontent.com/77195474/130575999-b5d71bb2-673c-47a7-bfa0-8c3f34c14efe.PNG)

+ 리스트 페이지 코드
    - 상품을 검색했을 때, 카테고리를 통해 페이지에 들어왔을 때, Best나 New를 클릭했을 때에 따라 다른 결과로 리스트 페이지를 출력 시키기위해 xml에 조건문 작성.
    - 조건에 따른 리스트마다 페이징 처리도 다르게 해줘야 하기 때문에 상품의 개수를 구하는 xml또한 조건문 작성.

![리스트xml1](https://user-images.githubusercontent.com/77195474/130576350-65cc5210-cc76-4ff0-ab63-9be6b4f6b342.PNG) ![리스트xml2](https://user-images.githubusercontent.com/77195474/130576368-5ce4284f-633c-44bc-aa40-4710d0498aa0.PNG)
---

+ 상품 상세페이지(상단)
    - 하트 클릭시 찜 목록 DB에 저장이 되고 색변환 
    - 장바구니 클릭시 장바구니 DB에 저장

![상세페이지1](https://user-images.githubusercontent.com/77195474/130577884-4d77eb31-8b09-4424-8126-1ffb58610826.PNG) ![찜](https://user-images.githubusercontent.com/77195474/130577976-ce8efab1-4c09-4723-b1d6-7ef406c8e68b.PNG)
+ 상품 상세페이지(리뷰)
    - 구매자만 작성가능 중복작성 불가

![리뷰1](https://user-images.githubusercontent.com/77195474/130578288-6b5024b5-8093-4f70-b281-4b85c3965826.PNG)
+ 상품 상세페이지(문의)
    - 누구나 작성가능 중복작성 가능 본인의 글만 볼 수 있다.
    - 더보기 클릭할 때마다 10개의 문의글 추가 출력

![문의1](https://user-images.githubusercontent.com/77195474/130578989-70bce2c6-f949-440d-a68b-23108ac87ac7.PNG)
* 상품 상세페이지 코드
    - 리뷰작성 및 페이징(AJAX)

    ![리뷰코드1](https://user-images.githubusercontent.com/77195474/130580115-eef592a9-1e6a-4815-b3a8-2313fd14747c.PNG) 
    ![리뷰코드2](https://user-images.githubusercontent.com/77195474/130580160-af89b590-35b3-4d39-8f91-5ea98e6eb54c.PNG)
    ![리뷰코드3](https://user-images.githubusercontent.com/77195474/130580208-723e1704-9f79-4eff-8627-108b3632a871.PNG)
    ![리뷰코드4](https://user-images.githubusercontent.com/77195474/130580244-3ef885d4-62a8-4573-9e66-15b8a6303279.PNG)

    - 문의글 작성, 문의 답글 삭제, 더보기(AJAX)
 
    ![문의코드1](https://user-images.githubusercontent.com/77195474/130580452-263caf5c-88b1-4da1-8718-6bbccddcbbab.PNG)
    ![문의코드2](https://user-images.githubusercontent.com/77195474/130580504-e5fceb7a-3992-47db-b90f-09cf6606eff2.PNG)
    ![문의코드3](https://user-images.githubusercontent.com/77195474/130580524-5b4ba0f7-fca8-4bf3-97cc-fc07692d4c57.PNG)
    ![문의코드4](https://user-images.githubusercontent.com/77195474/130580544-bd1b4eca-123f-4e4c-9acc-2a164a6ed3e9.PNG)
---

+ 마이페이지

    - 찜목록
 
![마이페이지1](https://user-images.githubusercontent.com/77195474/130581483-ebb7ce3d-c4ef-416b-8820-d82728a79a38.PNG)

    - 등록한 판매글
 
![마이페이지2](https://user-images.githubusercontent.com/77195474/130581632-baa9d2d0-5672-4bad-a56e-dbae69d746a2.PNG)

    - 장바구니
    
![마에페이지3](https://user-images.githubusercontent.com/77195474/130581662-c74e9f4a-547f-4b2e-adfd-edb99a897668.PNG)
![마이페이지4](https://user-images.githubusercontent.com/77195474/130581680-e0e1d89f-2dfe-4c9c-a760-d05f3c424d83.PNG)
![마이페이지5](https://user-images.githubusercontent.com/77195474/130581851-4ee4f841-21b0-4eb5-b7ed-568dd04431f5.PNG)

    - 장바구니 코드
    삭제 또는 전체상품삭제 클릭시 장바구니에서 해당하는 상품 삭제(AJAX)
    
  ![삭제1](https://user-images.githubusercontent.com/77195474/130582821-8fea63a2-bbdc-4fca-98a2-98c100667f21.PNG)
  ![삭제2](https://user-images.githubusercontent.com/77195474/130582889-406a751f-02ab-40a4-b205-dea4fa6d3785.PNG)
  ![삭제3](https://user-images.githubusercontent.com/77195474/130582925-8649aa20-2f96-48b1-ac0a-267204cfb805.PNG)
    
    - 주문목록
  
![주문목록1](https://user-images.githubusercontent.com/77195474/130581867-3538ec9a-b23f-4788-960b-6418aaf7987d.PNG)

    - 주문상세정보(배송전)
    
![주문목록2](https://user-images.githubusercontent.com/77195474/130581881-3e520afb-e7d4-4d52-bf49-6f5f5ec2f5ce.PNG)

    - 주문상세정보(배송완료)
    
![주문목록3](https://user-images.githubusercontent.com/77195474/130581903-41f587af-d8df-4861-8141-e3d892182393.PNG)

    - 리뷰/QnA
    
![리뷰문의](https://user-images.githubusercontent.com/77195474/130581930-f4b75692-fbfb-4576-b18d-83543ee5369a.PNG)
