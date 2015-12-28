select * from product;
desc product;

alter table product modify(p_size varchar2(10));
alter table product modify(p_color varchar2(30));
 
insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '아만다아일렛T',
27800, to_date('2015/11/24','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|아이보리|베이지',
13, 'products-images/12151_shop1_195986.jpg', '마이바니',
'코르셋 같은 느낌! 검은 리본으로 포인트!');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '텐가디건세트',
29900, to_date('2015/11/25','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|와인|카라멜',
'13', 'products-images/12019_shop1_750218.jpg', '마이바니',
'가디건으로 더욱더 슬림고 우아하게');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '이사벨BL',
42000, to_date('2015/11/25','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|아이보리',
'13', 'products-images/12100_shop1_668697.jpg', '마이바니',
'화이트 블라우스와 검은 리본');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '빈티진BL',
53500, to_date('2015/11/25','YYYY/MM/DD'),
0, 0, 0, 'FREE', '아이보리|베이지|그레이',
'13', 'products-images/12076_shop1_796303.jpg', '마이바니',
'어깨패스와 셔링 디테일로 사랑스럽게');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '티모리뒷리본BL',
49500, to_date('2015/11/25','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|와인',
'13', 'products-images/12071_shop1_642738.jpg', '마이바니',
'백부분, 리본 디테일이 포인트!');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '타이틴BL',
36000, to_date('2015/11/25','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|아이보리|와인|베이지',
'13', 'products-images/12098_shop1_913945.jpg', '마이바니',
'넥라인 쉬폰 타이와 블라우스가 세트!');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '라이브캡BL',
37700, to_date('2015/11/25','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|아이보리',
'13', 'products-images/2966_shop1_587613.gif', '마이바니',
'만족도99.9%');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '단테 오브 숄더 블라우스',
54400, to_date('2015/11/26','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|화이트|퍼플',
'13', 'products-images/6509_shop1_978892.jpg', '비비드앤코',
'러플이 돋보이는 오프 숄더 블라우스');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '레오닌 체크 블라우스',
61200, to_date('2015/11/27','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|화이트|퍼플',
'13', 'products-images/6459_shop1_809973.jpg', '비비드앤코',
'페미닌한 무드와 섹슈얼한 무드를 동시에 풍기닌 레오닌 체크 블라우스');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '쥬르 루즈핏 셔츠',
34200, to_date('2015/11/28','YYYY/MM/DD'),
0, 0, 0, 'FREE', '차콜|아이보리|핑크',
'13', 'products-images/6440_shop1_696339.jpg', '비비드앤코',
'베이직한 디자인으로 시즌에 구애받지 않으며 다양한 아이템과 잘 어울려 많은 활용도를 선사');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '오프 카라 블라우스',
36000, to_date('2015/11/29','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|아이보리',
'13', 'products-images/6424_shop1_660752.jpg', '비비드앤코',
'여성스러운 라인이 돋보이며 오프 숄더로 섹시한 어깨라인을 살리는 스타일');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '트윈 홀 니트 티',
24000, to_date('2015/11/30','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|와인|블루',
'13', 'products-images/6398_shop1_646798.jpg', '비비드앤코',
'짱짱한 소재의 니트티에 디자인도 유니크해 좀더 스타일리시한 티를 찾으시는 분들에게 좋아요');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '아방리본 블라우스',
43200, to_date('2015/12/01','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|화이트|와인',
'13', 'products-images/6392_shop1_182795.jpg', '비비드앤코',
'전체적인 벌룬핏이 매력이며 넥라인에 리본타이가 붙어 있어 스카프 스타일로 연출 가능');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '엔비아 롱 타이 니트',
36000, to_date('2015/12/02','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|아이보리|핑크',
'13', 'products-images/6381_shop1_121657.jpg', '비비드앤코',
'여성스러운 느낌의 로맨틱한 블라우스 타이 포인트 하나만으로도 러블리한 느낌이 가득한 제품');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '티아 골드버튼 블라우스',
68000, to_date('2015/12/03','YYYY/MM/DD'),
0, 0, 0, 'S|M', '블랙|아이보리',
'13', 'products-images/6370_shop1_298754.jpg', '비비드앤코',
'깔끔하면서도 골드 버튼이 돋보이는 블라우스 바디를 슬림하게 잡아주는 실루엣으로 여성스러운 라인을 연출해드리며, 신축성이 좋은 원단으로 제작되어진 제품');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '베투아 타이 블라우스',
54400, to_date('2015/12/04','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|화이트',
'13', 'products-images/6350_shop1_543912.jpg', '비비드앤코',
'여성미가 돋보이는 세련된 실루엣을 자아내 블라우스 후면에 부착되어 있느 타이 디테일이 고급스러운 무드를 풍기며 전면에서 타이로 연출이 가능한 동ㅅ에 후면에서 리본으로 묵어 주어 백라인에 포인트를 줄 수 있는 다양한 연출이 가능');


insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '셀루트 립 블라우스',
51000, to_date('2015/12/05','YYYY/MM/DD'),
0, 0, 0, 'S|M', '블랙|아이보리',
'13', 'products-images/6340_shop1_589686.gif', '비비드앤코',
'블라우스 하나만으로도 포인트가 되는셀루트 립 블라우스. 코튼 혼방 소재로 제작되었으며 화이트와 블랙의 모던한 배색이 고급스러운 분위기를 연출해 드립니다.');


insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '큐티 야옹 기모 롱맨투맨 티',
20500, to_date('2015/12/06','YYYY/MM/DD'),
0, 0, 0, 'FREE', '챠콜|와인',
'13', 'products-images/0070020007743.jpg', '클릭앤퍼니',
'블라우스 하나만으로도 포인트가 되는셀루트 립 블라우스. 코튼 혼방 소재로 제작되었으며 화이트와 블랙의 모던한 배색이 고급스러운 분위기를 연출해 드립니다.');

update product set p_detail = '귀여운 고양이 프린팅으로 어려보이는 효과!! 도톰 기모안감으로 따뜻해요♡ 양옆으로 주머니가 있어 실용성 up!!' where p_name='큐티 야옹 기모 롱맨투맨 티';

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '말랑 터틀넥 롱티셔츠',
20600, to_date('2015/12/07','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|핑크|브라운',
'13', 'products-images/0070050014853.jpg', '클릭앤퍼니',
'심플한 디자인으로 깔끔한 실루엣을 완성!! 부드럽게 감싸주는 터틀넥으로 소프트한 착용감도 모두 만족♡');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '마음으로 러브 기모 티셔츠',
14800, to_date('2015/12/08','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|아이보리',
'13', 'products-images/0070060003323.jpg', '클릭앤퍼니',
'기본으로 받쳐입기 좋아요♡ 부드러운 촉감이 good!! 도톰한 겉기모 소재로 따뜻해요~');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '레이디룸 리본 기모맨투맨티',
13800, to_date('2015/12/01','YYYY/MM/DD'),
0, 0, 0, 'FREE', '아이보리|핑크',
'13', 'products-images/0070020007723.jpg', '클릭앤퍼니',
'어깨부터 이어진 끈으로 예쁘게 리본을 묶어 청순하게! 사랑스럽게~>_< 보들도톰 기모안감으로 겨울까지 함께해요~♡');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '바닐라콩 무지롤업 남방',
18000, to_date('2015/12/02','YYYY/MM/DD'),
0, 0, 0, 'FREE', '아이보리',
'13', 'products-images/0090020006773.jpg', '클릭앤퍼니',
'하나쯤 갖고 있으면 여기저기 다양하게 활용할 수 있는 화이트 남방이예요 별다른 디테일 없이 기본에 충실한 디자인으로 부담없이 즐기실 수 있구요 단품은 물론 레이어링 하기에 좋은 아이템이랍니다');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '코디룩 롤업 체크남방',
28000, to_date('2015/11/03','YYYY/MM/DD'),
0, 0, 0, 'FREE', '아이보리|레드|그린',
'13', 'products-images/0090020006793.jpg', '클릭앤퍼니',
'매시즌 꾸준하게 사랑받는 아이템중에 하나!! 체크남방을 빼놓을 수 없져^^ 베이직한 기본라인으로 유행에 상관없이 자주 손이 가게 될 아이템이구요 힙선을 덮는 길이감으로 부담없이 입기 좋아요!!');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '위드런 체크 벌룬 나방',
18000, to_date('2015/11/04','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|아이보리|네이비',
'13', 'products-images/0090020005803.jpg', '클릭앤퍼니',
'지금부터 초가을까지 입을 수 있는 남방^^ 밑단의 셔링! 벌룬느낌으로 멋스러운거 아시죠?~ 활용하기 정말 좋은 잇 아이템이에요');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '리본공주 모티브 나염 블라우스',
19800, to_date('2015/11/05','YYYY/MM/DD'),
0, 0, 0, 'FREE', '아이보리',
'13', 'products-images/0090010001123.gif', '클릭앤퍼니',
'리본 무늬가 매려적인 블라우스');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '프리넥 라인 플레어 배색 블라우스',
35800, to_date('2015/11/08','YYYY/MM/DD'),
0, 0, 0, 'FREE', '핑크|그레이',
'13', 'products-images/0600020018893.jpg', '스타일베리',
'러블리한 감성의 프릴넥 블라우스');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '은하수 여유핏 기모 기본 셔츠',
29800, to_date('2015/11/08','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|아이보리',
'13', 'products-images/0600010008633.jpg', '스타일베리',
'크고 작은별 프린팅이 더해져 유니크하면서도 내추럴한 감성이 물씬 느껴져요~따뜻한 터치감의 기모 코튼 원단으로 따뜻하게 활용하기 좋아요^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '멋스러운 핏의 핀턱 줄지 여유핏 셔츠',
32800, to_date('2015/11/08','YYYY/MM/DD'),
0, 0, 0, 'FREE', '아이보리|와인|베이지',
'13', 'products-images/0600010008503.jpg', '스타일베리',
'트임 차이나넥으로 세련미는 물론! 언발란스한 밑단을 따라 핀턱을 잡아주어 더욱 멋스러운 핏을 연출해줘요^^소매 롤업 기능이 더해져 다양하게 입기 좋아요~');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '베이직 박시 소매롤업 셔츠',
19800, to_date('2015/11/09','YYYY/MM/DD'),
0, 0, 0, 'FREE', '화이트|핑크|네이비',
'13', 'products-images/0600010007943.jpg', '스타일베리',
'베이직한 디자인의 박시핏의 셔츠예요~ 면100%의 소매롤업이 가능해서 4계절내내 입기좋은 머스트해브 아이템인 셔츠예요~');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '핀스트라이프 배색 자수 슬림셔츠',
34800, to_date('2015/11/09','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '화이트|네이비',
'13', 'products-images/0600010008433.jpg', '스타일베리',
'고객요청으로 힘들게 재입고되었어요~포켓부분 자수와 네크라인 안쪽과 소매 끝단 안쪽에 핀스트라이프 패턴으로 더욱 멋스럽답니다^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '도톰 기본 스커트',
29800, to_date('2015/10/21','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '블랙|그레이|레드',
14, 'products-images/3020010005543.jpg', '스타일베리',
'고객만족도가 높았던 핏의 아이템으로 겨울까지 입을 수 있는 도톰한 wool원단으로 제작한 스커트예요^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '모던체크 슬림 스커트',
29800, to_date('2015/10/22','YYYY/MM/DD'),
0, 0, 0, 'S|M', '그레이|네이비',
14, 'products-images/3020010005503.jpg', '스타일베리',
'겨울까지 입기좋은 소재에 모던한 체크패턴이 고급스러운 컬러배색을 이루어 포인트있게 입기좋은 슬림핏 스커트예요~');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '지퍼 포인트 핸드메이드 스커트',
58000, to_date('2015/10/23','YYYY/MM/DD'),
0, 0, 0, 'S|M', '블랙|베이지',
14, 'products-images/3020010005633.jpg', '스타일베리',
'바디라인을 따라 절개선을 넣어 핏되는 듯~살짝 A라인으로 퍼지는 실루엣이 정말 예뻐요~앞쪽 지퍼 여밈과 밑단 트임으로 세련된 느낌을 연출해줘요^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '지그재그 파스텔컬러 미니스커트',
34800, to_date('2015/10/24','YYYY/MM/DD'),
0, 0, 0, 'S|M', '핑크|민트',
14, 'products-images/3020010005623.jpg', '스타일베리',
'사랑스러운 파스텔컬러가 지그재그로 배색을 이루어 더 예쁜 스커트예요~ 블라우스는 물론 니트랑 코디하기에도 좋아요~');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '세련된 랩느낌 핀턱 도톰 H 스커트',
35800, to_date('2015/10/25','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '블랙|그레이',
14, 'products-images/3020010005613.jpg', '스타일베리',
'보카시 원단에 사선 절개라인이 더해져 더욱 날씬해 보이는 효과와 함께 세련미까지 물씬 느껴져요~바디라인을 따라 깔끔하게 핏되는 실루엣이 정말 예뻐요^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '사선 핀턱 속기모 H라인 스커트',
35800, to_date('2015/10/26','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '블랙|차콜|카멜',
14, 'products-images/3020010005603.jpg', '스타일베리',
'일자로 잘빠진 H라인의 핏이 예쁘며,속기모 가공을하여 따뜻한 착용감을 느끼실 수 있어요~사선으로 핀턱을 잡아 힙과 허벅지 부분이 슬림해 보이는 효과가 있어 더욱 만족스러워요^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '포근한 알파카소재 기본 H라인 스커트',
29800, to_date('2015/10/27','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '블랙|아이보리|핑크',
14, 'products-images/3020010005593.jpg', '스타일베리',
'겨울에 입기좋은 포근한 소재의 기본 H라인 스커트예요~ 골반부분에 입술포켓이 사선으로 들어가있어서 더 슬림하고 포인트있게 입기좋아요~');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '스티치 트임 스커트',
35800, to_date('2015/10/28','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '블랙|와인',
14, 'products-images/3020010005533.jpg', '스타일베리',
'허리와 얖옆 절개라인을 따라 스티치를 더해주고,한쪽 밑단 트임 포인트로 세련미가 물씬 느껴져요~힙라인을 따라 예쁘게 핏되는 실루엣으로 더욱 만족스러워요^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '컬러별로 구매하는 세미하이 스커트',
27800, to_date('2015/10/29','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '블랙|베이지|오렌지',
14, 'products-images/3020010005523.jpg', '스타일베리',
'고객님들의 만족도가 높았던 핏이 예쁜 아이템이구요^^ 도톰하여 따뜻하고, 신축성이 좋아 착용감까지 편하답니다^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '날씬한 핏의 주름 A라인 울 스커트',
34800, to_date('2015/10/30','YYYY/MM/DD'),
0, 0, 0, 'S|M', '브라운|차콜',
14, 'products-images/3020020003543.jpg', '스타일베리',
'힙중간까지는 핏되고 밑단에 맞주름을 잡아주어 퍼지는 핏이 정말 날씬해보이는 은은한 체크패턴의 스커트예요~(');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '단아한 뒷밴딩 모직 플레어 스커트',
39800, to_date('2015/10/31','YYYY/MM/DD'),
0, 0, 0, 'FREE', '네이비|차콜',
14, 'products-images/3020020003533.jpg', '스타일베리',
'360도 회전 패턴으로 볼륨감을 물론!플레어 라인으로 여성스러움이 물씬 느껴져요~허리는 신축성이 좋은 뒷밴딩에다 옆지퍼 여밈으로 편안하게 착용하실 수 있어요^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '스웨이드 미디 풀스커트',
37800, to_date('2015/11/01','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|베이지',
14, 'products-images/3020020003513.jpg', '스타일베리',
'부드러운 텍스쳐의 스웨이드 원단으로 챠르르 떨어지는 실루엣의 스커트에요~미디 기장에 와이드 벨트가 세트로 구성되어 더욱 멋스러운 스타일을 완성해줘요~');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '3단 절개 밑단 플레어 스커트',
34000, to_date('2015/11/02','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '블랙|와인|네이비',
14, 'products-images/3020020002883.jpg', '스타일베리',
'힙부분은 핏되면서 슬림한 플레어 라인으로 깔끔하면서도 여성스런 룩을 연출해줘요~핏이나 퀄리티 면에서 손색없는 스커트랍니다^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '밑단 포인트 플레어 스커트',
29800, to_date('2015/11/03','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '블랙|블루',
14, 'products-images/3020020003143.jpg', '스타일베리',
'입었을 때 예쁜 아이템으로, 구김없이 살랑살랑~ 흐르는 플레어 라인이 여성스러워요^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '사계절입는 저지 플레어 스커트',
14800, to_date('2015/11/04','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙|차콜',
14, 'products-images/3020020003093.jpg', '스타일베리',
'신축성 좋은 허리밴딩으로 착용감이 정말 편해요~부해보임 없이 챠르르 떨어지는 플레어 라인으로 군살을 완벽하게 커버해준답니다^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '치즈스틱 미디 랩 스커트',
47500, to_date('2015/11/05','YYYY/MM/DD'),
0, 0, 0, 'S|M', '네이비|머스타드',
14, 'products-images/D684196_m.jpg', '다홍',
'예쁜 형태감의 랩 스커트 :)');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '포츈쿠키 모직 스커트',
35500, to_date('2015/11/06','YYYY/MM/DD'),
0, 0, 0, 'S|M', '블랙|그레이',
14, 'products-images/D684168_m.jpg', '다홍',
'잘록~날씬~ 여성스런 핏의 모직 스커트^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '마들렌 베이직 스커트',
17800, to_date('2015/11/07','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '네이비|블루|레드',
14, 'products-images/D683149_m.jpg', '다홍',
'어디에나 깔끔한 매치~ 따뜻한 베이직 스커트!');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '바닐라라떼 데님 스커트',
22800, to_date('2015/11/08','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '진청',
14, 'products-images/D682651_m.jpg', '다홍',
'무릎 위 기장으로 편안한 데님 스커트~!');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '버터칩 코듀로이 스커트',
21500, to_date('2015/11/09','YYYY/MM/DD'),
0, 0, 0, 'S|M', '그레이',
14, 'products-images/D682256_m.jpg', '다홍',
'허벅지라인 날~씬해보여요 ♥♥♥');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '어웨이 더블버튼 스커트',
15000, to_date('2015/11/10','YYYY/MM/DD'),
0, 0, 0, 'S', '블랙',
14, 'products-images/D682197_m.jpg', '다홍',
'도톰, 포근한 소재감의 스커트!!!');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '켄트로 코튼 펜슬 스커트',
33800, to_date('2015/11/11','YYYY/MM/DD'),
0, 0, 0, 'S|M', '블랙|청록|머스타드',
14, 'products-images/D681818_m.jpg', '다홍',
'군살을 타이트하게 잡아주는 리얼 날씬핏!');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '카푸치노 H라인 스커트',
15000, to_date('2015/11/12','YYYY/MM/DD'),
0, 0, 0, 'S|M', '블랙|베이지|그레이',
14, 'products-images/D681515_m.jpg', '다홍',
'가을을 닮은 컬러 ↑ 기본 스커트');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '브런치 A라인 데님 스커트',
19700, to_date('2015/11/13','YYYY/MM/DD'),
0, 0, 0, 'S|M', '진청',
14, 'products-images/D680368_m.jpg', '다홍',
'세미 A라인 핏, 날씬해지는 데님 스커트 :D');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, 'knit flare skirt',
34500, to_date('2015/11/14','YYYY/MM/DD'),
0, 0, 0, 'FREE', '네이비|블랙|그레이',
14, 'products-images/shop_1234r45g.JPG', '밀크코코아',
'사르르 흐르는듯한 화이트 컬러의 레이스 블라우스');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '아보카도 스커트',
29400, to_date('2015/11/15','YYYY/MM/DD'),
0, 0, 0, 'S|M', '네이비|블랙|그레이',
14, 'products-images/91228_shop1_525872.jpg', '바가지머리',
'심심하지않아 더 예쁜 컬러와 패턴 포인트 겨울까지도 따듯하게 입기좋은 소재에요');


insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '케뮤 스커트',
29400, to_date('2015/11/16','YYYY/MM/DD'),
0, 0, 0, 'S|M', '블랙',
14, 'products-images/91181_shop1_848492.jpg', '바가지머리',
'고급스러운 패턴과 머메이드의 환상적인조화! 말이 필요없는 여성 여성한 아이템^^');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '시나몬 스커트',
29400, to_date('2015/11/17','YYYY/MM/DD'),
0, 0, 0, 'FREE', '블랙',
14, 'products-images/85472_shop1_758368.jpg', '바가지머리',
'과하지 않게 볼륨있는 실루엣이 예쁜!! 폭신한 소재로 한겨울까지 따뜻하게 입기 굿~');


insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '이브 핸드메이드스커트',
49000, to_date('2015/11/18','YYYY/MM/DD'),
0, 0, 0, 'S|M', '블랙|아이보리|그레이',
14, 'products-images/80081_shop1_560249.jpg', '바가지머리',
'핸드메이드라 고급스럽게 예쁜 컬러! 울90% 고급소재로 매년 입어주세요!');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '티오 스커트',
24000, to_date('2015/11/19','YYYY/MM/DD'),
0, 0, 0, 'S|M|L', '블랙|베이지|핑크',
14, 'products-images/90909_shop1_916780.jpg', '바가지머리',
'은은한 컬러로 감성적인 무드가 느껴지는 스커트! 짧지 않은 기장으로 안정감이 느껴져요^^');



insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '오론 니트 스커트',
19400, to_date('2015/11/20','YYYY/MM/DD'),
0, 0, 0, 'FREE', '아이보리|그레이',
14, 'products-images/90825_shop1_617906.jpg', '바가지머리',
'따뜻한 컬러와 보들보들 도톰하면서 착용감도 굿! 따로 판매되는 제품으로 코디하기도 좋아요');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '델라 메리제인 펌프스힐',
32900, to_date('2015/12/09','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '그레이|브라운|와인',
15, 'products-images/0040030000383.gif', '즈려밟고',
'라인에 반할 수 밖에 없는 메리제인 펌프스를 소개할게요 :) 둥근 앞코가 큐트한 느낌을 주면서 메리제인 스트랩으로 사랑스러운 매력이 돋보이는 슈즈인데요.');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '아디오 메리제인 스틸레토힐',
23900, to_date('2015/12/09','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|실버|베이지',
15, 'products-images/0040030000503.gif', '즈려밟고',
'화사한 컬러감으로 스타일리에 활력을 더해줄 메리제인 스트랩 펌프스를 소개해요.');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '골디 스웨이드 스틸레토힐',
34900, to_date('2015/12/08','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|핑크',
15, 'products-images/0040030001133.jpg', '즈려밟고',
'깔끔하고 베이직한 라인감과 컬러감이 돋보이는 스틸레토 미들힐을 소개합니다.');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '베이가 스웨이드 스틸레토힐',
29900, to_date('2015/12/07','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|와인|블루|브라운',
15, 'products-images/0040030001333.gif', '즈려밟고',
'깔끔하고 베이직한 라인감과 컬러감이 돋보이는 스틸레토 하이힐을 소개합니다.');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '로니엘 가보시 펌프스힐',
29900, to_date('2015/12/06','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|베이지|핑크',
15, 'products-images/0040030000293.jpg', '즈려밟고',
'심플하고 군더더기 없는 디자인으로 데일리로 매치하시기 좋은 펌프스를 소개합니다.');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '크리스틴 메리제인 통굽 펌프스',
26900, to_date('2015/12/05','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|아이보리|그린',
15, 'products-images/0040020000153.jpg', '즈려밟고',
'큐트한 스타일과 편안한 착화감의 통굽 메리제인 펌프스');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '인트리 에나멜 스틸레토힐',
35900, to_date('2015/12/04','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|아이보리|네이비',
15, 'products-images/0040020000303.gif', '즈려밟고',
'전체적으로 심플한 디자인의 에나멜 힐');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '안젤라 메리제인 통굽 펌프스힐',
29900, to_date('2015/12/03','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙',
15, 'products-images/0040020000143.jpg', '즈려밟고',
'여성스러운 통굽 메리제인 펌프스');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '케일리 메리제인 통굽힐',
35900, to_date('2015/12/02','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|베이지|와인',
15, 'products-images/0040020000583.jpg', '사뿐',
'깔끔하고 고급스러운 느낌의 메리제인 통굽힐');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '조안나 메리제인 펌프스힐',
27900, to_date('2015/12/01','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '레드|엘러우|블루|블랙',
15, 'products-images/0040020000643.gif', '사뿐',
'여성스러운 느낌의 펌프스');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '셀리나 스틸레토 미들힐',
54900, to_date('2015/11/30','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|베이지|네이비',
15, 'products-images/0040020000613.gif', '사뿐',
'베이직한 컬러감이 돋보이는 스틸레토 미들힐');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '로즐리 스웨이드 스틸레토 미들힐',
35900, to_date('2015/11/30','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|베이지|와인',
15, 'products-images/0040020000673.gif', '사뿐',
'부드러운 느낌의 스웨이드 소재로 제작된 스틸레토 미틀힐');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '도넬리 스웨이드 통굽 펌프스힐',
31900, to_date('2015/11/30','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '베이지|핑크|브라운',
15, 'products-images/0040020000503.jpg', '사뿐',
'독특한 매력의 통굽 펌프스힐');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '페르샤 메탈장식 통굽 펌프스힐',
37900, to_date('2015/11/29','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|브라운|핑크',
15, 'products-images/0040020000633.gif', '사뿐',
'고급스러운 메탈장식이 돋보이는 통굽 펌프스힐');


insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '커스틴 스웨이드 스틸레토힐',
36900, to_date('2015/11/28','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|베이지|와인',
15, 'products-images/0040020000703.gif', '사뿐',
'다른 제품들과 흡사해 보이지만 착화감을 높이기 위해 바닥의 앞, 뒤에 쿠션패드를 내장하여 보이지 않는 작은 디테일까지 신경을 써서 제작했답니다.');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '넬리스 에나멜 스틸레토 미들힐',
27900, to_date('2015/11/27','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|블루|카키',
15, 'products-images/0040020000723.gif', '사뿐',
'스틸레토 스타일의 메리제인 미들힐');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '글리아 리본 통굽 펌프스힐',
27900, to_date('2015/11/26','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|블루|와인|그레이',
15, 'products-images/0040020000743.gif', '사뿐',
'독특한 매력의 리본 통굽 펌프스힐');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '에피 스웨이드 통굽 펌프스힐',
34900, to_date('2015/11/25','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|와인',
15, 'products-images/0040020000793.gif', '사뿐',
'클래식한 디자인이 매력적인 펌프스힐');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '포니론 스웨이드 펌프스 통굽힐',
34900, to_date('2015/11/24','YYYY/MM/DD'),
0, 0, 0, '230|240|250', '블랙|블루|와인',
15, 'products-images/0040020000843.gif', '사뿐',
'베이직한 라인감의 스웨이드 펌프스 통굽힐');
--충만 자라 자켓 --
insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '스트랩 칼라 이미테이션 레더 점퍼',
129000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '블랙',
21, 'products-images/jacket1.jpg', '자라|zara',
'겉감 기본소재: 100% 폴리에스터 코팅: 100% 폴리우레탄 안감 100% 폴리에스터');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '패딩 오버셔츠',
99000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '다크브라운',
21, 'products-images/jacket2.jpg', '자라|zara',
'주요소재: 100% 면 목부분: 100% 폴리에스터 기타 코팅소재: 100% 폴리우레탄 기타 기본직물 : 85% 비스코스, 15% 폴리에스터 안감 100% 폴리에스터 충전재 100% 폴리에스터');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '스트랩 칼라 이미테이션 레더 점퍼',
129000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '블랙',
21, 'products-images/jacket3.jpg', '자라|zara|ZARA',
'겉감 기본소재: 100% 폴리에스터 코팅: 100% 폴리우레탄 안감 100% 폴리에스터');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '리버시블 바이커 재킷',
169000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '블랙',
21, 'products-images/jacket4.jpg', '자라|zara|ZARA',
'기본소재: 100% 비스코스 코팅: 100% 폴리우레탄 안감 100% 폴리에스터');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '벨벳 퀼티드 점퍼',
189000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '다크네이비',
21, 'products-images/jacket5.jpg', '자라|zara|ZARA',
'겉감 100% 면 안감 100% 폴리에스터 충전재 100% 폴리에스터');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '5포켓 팬츠',
39000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '블랙',
21, 'products-images/pants1.jpg', '자라|zara|ZARA',
'겉감 98% 면, 2% 엘라스탄');
--충만 자라 팬츠--
insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, 'STUDIO 플리츠 팬츠',
99000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '와인',
21, 'products-images/pants2.jpg', '자라|zara|ZARA',
'겉감 99% 모직, 1% 엘라스탄');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '수트 팬츠',
89000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '와인',
21, 'products-images/pants3.jpg', '자라|zara|ZARA',
'겉감 100% 모직');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '자카드 팬츠',
99000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '그레이',
21, 'products-images/pants4.jpg', '자라|zara|ZARA',
'겉감 86% 모직, 14% 면');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, 'STUDIO 코듀로이 팬츠',
99000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '아이보리',
21, 'products-images/pants5.jpg', '자라|zara|ZARA',
'겉감 100% 면');

insert into product(p_no, p_name, p_price, p_indate,
p_sell, p_score, p_discount, p_size, p_color,
p_ccode, p_image, p_company ,p_detail) 
VALUES(p_no_seq.NEXTVAL, '하이테크 팬츠',
89000, to_date(sysdate,'YYYY/MM/DD'),
0, 0, 0, '95|100|105', '블랙',
21, 'products-images/pants6.jpg', '자라|zara|ZARA',
'겉감 51% 면, 41% 폴리아미드, 8% 엘라스탄');