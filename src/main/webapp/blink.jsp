<%@page import="javax.print.attribute.standard.PagesPerMinuteColor"%>
<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!-- 	작성자 : 전준호 -->
<!-- 	작성일 : 2023/08/28 -->
<!-- 	과목 : Spring Boot 응용 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>blink.jsp</title>
<style type="text/css">

table {
	font-family : monospace;
	font-size : 2em;
	border-collapse: collapse;
}
</style>
<script type="text/javascript">

class Blink {
	
	tid = []
	cm = new Map();
	select;
	alpha;
	
	 constructor() {
        this.select = document.querySelector('select');
        this.alpha = this.select.options[this.select.selectedIndex].value;
    }
	
	run() {
		console.log("run")
		let table = document.querySelector('table')
		for (let tr of table.rows) {
			for (let td of tr.cells) {
				this.cm.set(td, td.style.visibility);
				if (td.innerHTML == this.alpha) {
					let id = setInterval(function() {
						if (td.style.visibility == 'hidden')
							td.style.visibility = 'visible'
						else
							td.style.visibility = 'hidden'
					}, Math.random()*500+100)
			
					this.tid.push(id)
				}
			}
		}
	}
	
	clear() {
		console.log("clear")
		console.log(this.tid)
		
		for (let id of this.tid) {
			clearInterval(id)
		}
		
		this.tid = [];
		for (let [cell, visibility] of this.cm) {
	            cell.style.visibility = visibility;
	        }
	    this.cm.clear();

	}
	
}

window.onload = function() {
	let start = document.querySelectorAll('button')[0]
	let stop = document.querySelectorAll('button')[1]
	let show = document.querySelectorAll('button')[2]
	let hide = document.querySelectorAll('button')[3]
	let select = document.querySelector('select')
	let table = document.querySelector('table')
	let h2 = document.querySelector('h2')

	let blink;
	start.disabled = false
	select.disabled = false
	stop.disabled = true
	
	start.onclick = function() {
		start.disabled = true
		select.disabled = true
		stop.disabled = false
		
		let alpha = select.options[select.selectedIndex].value
		h2.innerText = alpha + " 선택";
		
		
		blink = new Blink()
		blink.run()
		
		console.log(start)
	}
	stop.onclick = function() {
		stop.disabled = true
		start.disabled = false
		select.disabled = false
		h2.innerText = "";
		
		blink.clear();
		
		console.log(stop)
	}
	show.onclick = function() {
		table.style.visibility = "visible";
		console.log(show)
	}
	
	hide.onclick = function() {
		table.style.visibility = "hidden";
		console.log(hide)
	}
}

</script>
</head>
<body>
<h1>Alpha Generator</h1>
<button> > Start < </button>
<select>
	<c:forEach var="i" begin="0" end="25">
		<c:set var="ch" value = "<%=(char)((Integer)pageContext.getAttribute(\"i\") + 'A') %>"/>
		<option>${ch}</option>
	</c:forEach>
</select>
<button> > Stop < </button>
<button>show</button>
<button>hide</button>
<hr>
<h2></h2>
<hr>
<table>
	<tbody>
		<c:forEach var="i" begin="0" end="${20 - 1}">
			<tr>
				<c:forEach var="j" begin="0" end="${40 - 1}">
					<jsp:useBean id="a" class="util.Alpha"/>
					<td style="color : ${a.fg}; background: ${a.bg};">${a.ch}</td>
					<c:remove var="a"/>
				</c:forEach>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>