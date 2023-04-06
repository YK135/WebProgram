<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ToDo 리스트</title>
    <style>
        .container {
            max-width: 600px;
            background-color: #f8f9fa;
            border-radius: 10px;
            padding: 20px;
            margin-top: 50px;
            box-shadow: 0px 0px 5px #dcdcdc;
            margin: 0 auto; 
        }
        h1 {
            border-radius: 5px;
            background-color: wheat;
            text-align: center;
            padding: 15px 0;
        }
        .input-group {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 20px;
        }
        .input-group input {
            flex: 1;
            margin-right: 10px;
            border-radius: 3px;
            border: none;
            padding: 10px;
            font-size: 16px;
        }
        .input-group button {
            border-radius: 3px;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            color: #fff;
            background-color: black;
            cursor: pointer;
        }
        .list-group {
            margin-top: 20px;
            border-radius: 3px;
            background-color: #fff;
            padding: 10px;
            list-style-type: none;
            box-shadow: 0px 0px 5px #dcdcdc;
        }
        .list-group li {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px;
            border-bottom: 1px solid #dcdcdc;
        }
        .list-group li:last-child {
            border-bottom: none;
        }
        .list-group li span {
            display: inline-block;
        }
        .list-group li button {
            border: none;
            background-color: transparent;
            color: #dc3545;
            font-size: 20px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>My ToDo App</h1>
        <hr>
        <div class="input-group">
            <input id="item" class="form-control" type="text" placeholder="할일 추가">
            <button type="button" class="btn-add" onclick="addItem()">추가</button>
        </div>
        <hr>
        <ul id="todolist" class="list-group"></ul>
    </div>
    <script>
	function addItem() {
		let todo = document.getElementById("item");
		let list = document.getElementById("todolist");
		let listitem = document.createElement("li");
		listitem.className = "d-flex list-group-item list-group-item-action list-group-item-warning"; 
		let xbtn = document.createElement("button");
		xbtn.className = "btn-close ms-auto";
		xbtn.onclick = function(e) {
			let prode = e.target.parentElement;
			list.removeChild(prode);
			todo.value = "";
			todo.focus();
		};
		listitem.innerText = todo.value;
		listitem.appendChild(xbtn); 
		list.appendChild(listitem);
		todo.value = "";
		todo.focus();
	}
</script>
</body>
</html>


