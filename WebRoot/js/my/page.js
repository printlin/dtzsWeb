var pageul;
var page;
var pageMax;
function showPage(ul,now,max){
	pageul=ul;
	page=now;
	pageMax=max;
	if(pageMax<12){
		typeFour()
	}else{
		if(page<7){
			typeOne();
		}else if(page>(pageMax-7)){
			typeThree();
		}else{
			typeTwo();
		}
	}
}



function typeOne(){
	for(var i=1;i<page;i++){
		createPageLi("/ajaximgs.action?page="+i,i,"");
	}

	createPageLi("/ajaximgs.action?page="+page,page,"selected");
	
	for(var i=page+1;i<9;i++){
		createPageLi("/ajaximgs.action?page="+i,i,"");
	}
	
	createPageLi("javascript:void(0);","...","");
	var n=pageMax-1;
	createPageLi("/ajaximgs.action?page="+n,n,"");
	createPageLi("/ajaximgs.action?page="+pageMax,pageMax,"");
}

function typeTwo(){
	for(var i=1;i<3;i++){
		createPageLi("/ajaximgs.action?page="+i,i,"");
	}
	
	createPageLi("javascript:void(0);","...","");

	for(var i=page-2;i<page;i++){
		createPageLi("/ajaximgs.action?page="+i,i,"");
	}

	createPageLi("/ajaximgs.action?page="+page,page,"selected");
	
	for(var i=page+1;i<page+3;i++){
		createPageLi("/ajaximgs.action?page="+i,i,"");
	}
	
	createPageLi("javascript:void(0);","...","");
	var n=pageMax-1;
	createPageLi("/ajaximgs.action?page="+n,n,"");
	createPageLi("/ajaximgs.action?page="+pageMax,pageMax,"");
}

function typeThree(){
	for(var i=1;i<3;i++){
		createPageLi("/ajaximgs.action?page="+i,i,"");
	}
	createPageLi("javascript:void(0);","...","");

	for(var i=pageMax-7;i<page;i++){
		createPageLi("/ajaximgs.action?page="+i,i,"");
	}

	createPageLi("/ajaximgs.action?page="+page,page,"selected");
	
	for(var i=page+1;i<pageMax+1;i++){
		createPageLi("/ajaximgs.action?page="+i,i,"");
	}
}

function typeFour(){
	for(var i=1;i<pageMax+1;i++){
		if(i==page){
			createPageLi("/ajaximgs.action?page="+i,i,"selected");
		}else{
			createPageLi("/ajaximgs.action?page="+i,i,"");
		}
		
	}
}

function createPageLi(aHref,aHtml,className){
	var li=document.createElement("li");
	var a=document.createElement("a");
	a.href="javascript:void(0);";
	a.onclick="onc("+aHref+")";
	a.innerHTML=aHtml+"";
	a.className=className;
	li.appendChild(a);
	pageul.appendChild(li);
}