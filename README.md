---
하프톤: 2017-05-27 
참여자: 건국대 정다혜, 이현경, 경희대 한동근, 덕성여대 권민지
---

# 제주도 게스트하우스 안내 페이지

![Ruby on Rails](https://img.shields.io/badge/rails-v4.2.5-green)
![bootstrap](https://img.shields.io/badge/bootstrap-4.0.0.alpha6-green.svg)
![sqlLite3](https://img.shields.io/badge/sqlLite3-black.svg)

제주도에서는 게스트하우스 이용률이 높아지고 있다.
게스트하우스에 대한 정보를 얻는데 어려움을 느껴 게스트하우스를 모아서 보여주는 사이트를 제공

<!-- 이미지 추가 & 다시 heroku 등록후 링크 등록-->

## 사용할 것(gem은 되도록이면 최신 버전으로 해주세요.)

- `gem searchkick`
- `gem devise`
- `gem paperclip`
- 다음 map api
- heroku deploy
- github 협업

## 모델링

1. 숙소(post)

| name | type |
|------|------|
|name| string|
|address|string|
|content|text|
|category|string|
|rating|string|
|image|paperclip|

2. 후기(review)

| name | type |
|------|------|
| title | string |
| content | text |
| user | references |
| image | paperclip |
| rating | integer |

3. 회원

devise gem으로 생성(default값그대로)

### 역할

1. 현경 
	- geha, review 모델 생성 (1:N)
    - AddGehaIdToReviews
    - AddUserIdToReviews

2. 다혜
	- CRUD 변경
	- searchkick
	- daum map api
	- modal
	- heroku deploy