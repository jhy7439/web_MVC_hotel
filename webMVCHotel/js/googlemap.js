
/*지도의 정보를 표시할 할숨*/
// 위도: latitude, 경도:longitude
var latitude =37.552333;
var longitude =126.937611;
function initMap(){
	//지도의 가운데를 지정한다.
	var myCenter = new google.maps.LatLng(latitude,longitude);
	//지도 그릴때 필요한 기타정보를 JSON형식에 데이터 생성한다.
	var mapProperty={center : myCenter,
					 zoom : 15, //0~21사이의 값을 사용한다. , 숫자가 클수록 확대
					 mapTypeId:google.maps.MapTypeId.ROADMAP//지도종류(ROADMAP,HYBRID,STEELITE,TERRAIN)
					}

	
	//map객체 생성하기					지도를 보여줄곳			맵옵션
	var map1 =new google.maps.Map(document.getElementById("gMap1"),mapProperty);
	//마커 표시하기
	var marker = new google.maps.Marker({
		position:myCenter//마커를 표시할곳
		,map:map1//지도선택
		//표시할 마커이미지
	});
	marker.setMap(map1);
	var content ="호텔 CROWN 본점";
	var info =new google.maps.InfoWindow({content:content});
	//이벤트 등록
	google.maps.event.addListener(marker, "click",function(){info.open(map1,marker)});
	
	
var locations = [
    ['서강대역', 37.552232, 126.935389],
    ['서강대학교', 37.550953, 126.940993],
    ['신촌역', 37.555135, 126.936892],
    ['노고산 어린이공원', 37.554072, 126.934767]
  ];

  var map2 = new google.maps.Map(document.getElementById('gMap2'), {
    zoom: 15,
    center: new google.maps.LatLng(37.552333, 126.937611),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  var infowindow = new google.maps.InfoWindow();

  var mk, i;
  for (i = 0; i < locations.length; i++) {  
    mk = new google.maps.Marker({
      id:i,
      position: new google.maps.LatLng(locations[i][1], locations[i][2]),
      map:map2
    });

    google.maps.event.addListener(mk, 'click', (function(mk, i) {
      return function() {
        infowindow.setContent(locations[i][0]);
        infowindow.open(map2, mk);
      }
    })(mk, i));
    if(mk)
    {
      mk.addListener('click', function() {
        map2.setZoom(15);
        map2.setCenter(this.getPosition());
      });
      }
  }
}
