<html>
<head>

<title>Document</title>
<style>
* {
	padding: 0px;
	margin: 0px;
}

body, form {
	height: 100vh;
	width: 100%;
	background-color: rgb(119, 149, 206);
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-evenly;
}

div {
	height: 500px;
	width: 500px;
	background-color: rgb(236, 146, 189);
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-evenly;
}

#texttag {
	height: 200px;
	width: 350px;
	border-radius: 10px;
	padding: 10px;
}

#submitbutton {
	height: 40px;
	width: 100px;
	font-weight: bold;
}

.abc {
	height: 40px;
	width: 100px;
	font-size: 30px;
	text-align: center;
}
</style>
</head>
<body>
	<form action="counter">
		<h1>WORD COUNTER</h1>
		<div>
		<%
		String paragraph = "";
		int countofwords = 0;
		int countofchararcters = 0;
		if (request.getAttribute("paragraph") != null && request.getAttribute("countofwords") != null
				&& request.getAttribute("counfofcharacters") != null) {
			paragraph = (String) request.getAttribute("paragraph");
			countofwords = (int) request.getAttribute("countofwords");
			countofchararcters = (int) request.getAttribute("counfofcharacters");
		}
		%>

			<textarea name="paragraph" id="texttag" placeholder="Enter Paragraph"><%= paragraph %></textarea>
			<input type="submit" id="submitbutton" value="COUNT">
			<h2>
				COUNT-OF-WORDS: <input type="text" class="abc"
					value=<%= countofwords%> disabled>
			</h2>
			<h2>
				COUNT-OF-CHARACTERS: <input type="text" class="abc"
					value=<%= countofchararcters%> disabled>
			</h2>


		</div>
	</form>

</body>
</html>