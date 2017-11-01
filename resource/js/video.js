function tm_init_pronince(){
		var selectDom = document.getElementById("plate");
		var arr = [{"id":1,"name":"优酷"}];
		var optionEmpty = document.createElement("option");
		optionEmpty.value = "";
		optionEmpty.text = "请选择";
		selectDom.appendChild(optionEmpty);
		for(var i=0;i<arr.length;i++){
			var option = document.createElement("option");
			option.value = arr[i].id;
			option.text = arr[i].name;
			selectDom.appendChild(option);
		}
	};
		
	//城市数据
	var cityDatas = {
		"1":"m_223471#剧集,m_223469#网剧,m_223493#综艺,m_224239#动漫,m_232012#少儿,m_223892#娱乐,m_224242#资讯,m_226600#搞笑,m_223818#音乐,m_244921#文化-纪实,m_223840#财经-科技,m_223837#教育-公益,m_223843#汽车,m_224238#体育"
	};
	//1:了解数据层级接口
	//2:javascript元素创建，定义和追加
	function tm_city_change(obj){
		var value = obj.value;
		var datas = cityDatas[value];
		var cityDom = document.getElementById("choose");
		cityDom.innerHTML = "";
		var optionEmpty = document.createElement("option");
		optionEmpty.value = "";
		optionEmpty.text = "请选择";
		cityDom.appendChild(optionEmpty);
		if(datas){
			var citys = datas.split(",");
			for(var i=0;i<citys.length;i++){
				var option = document.createElement("option");
				var v = citys[i].split("#");
				option.value = v[0];
				option.text = v[1];
				cityDom.appendChild(option);
			}
		}
	};
	
	