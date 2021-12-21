
let totalData;
let globalCurrentPage=1;
let dataPerPage=5;
let pageCount=10;

$(document).ready(function(){
	$.ajax({
		method :"GET",
		url : "blackList",
		dataType: "json",
		success : function(blacklist){
			totalData=blacklist.data.length;
		}
	});
	 //글 목록 표시 호출 (테이블 생성)
	 displayData(1, dataPerPage);
	 
	 //페이징 표시 호출
	 paging(totalData, dataPerPage, pageCount, 1);
	
})