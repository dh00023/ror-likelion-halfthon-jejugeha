2017-05-27 건국대 정다혜, 이현경, 덕성여대 권민지, 경희대 한동훈

# 제주도 게스트하우스

제주도에서는 게스트하우스 이용률이 높아지고 있다.
하지만 정보를 얻는데 어려움을 느껴 만들어 게스트하우스를 모아서 보여주는 사이트를 만들기로 했습니다.

### 사용할 것(gem은 되도록이면 최신 버전으로 해주세요.)

- `gem searchkick`
- `gem device`
- `gem paperclip`
- 다음 map api
- heroku deploy
- github 협업

### 모델링

1. 숙소(post)

| name | type |
|------|------|
|title| string|
|address|string|
|category|string|
|x|string|
|y|string|
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

### 
1. 현경 : geha, review 모델 생성 (1:N)
          AddGehaIdToReviews
          AddUserIdToReviews








