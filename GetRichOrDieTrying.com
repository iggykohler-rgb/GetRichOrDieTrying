<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>IdeaScore AI - Business Idea Analyzer</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #0f172a;
    color: white;
    text-align: center;
}

.container {
    max-width: 700px;
    margin: auto;
    padding: 40px 20px;
}

h1 {
    font-size: 42px;
}

.highlight {
    color: #38bdf8;
}

.box {
    background: #1e293b;
    padding: 25px;
    border-radius: 20px;
    margin-top: 30px;
}

input {
    width: 90%;
    padding: 15px;
    border-radius: 10px;
    border: none;
    font-size: 16px;
}

button {
    margin-top: 15px;
    padding: 15px 30px;
    border: none;
    border-radius: 10px;
    background: #38bdf8;
    color: black;
    font-size: 18px;
    cursor: pointer;
}

button:hover {
    background: #0ea5e9;
}

.result {
    display: none;
    margin-top: 25px;
    text-align: left;
}

.card {
    background: #334155;
    padding: 15px;
    border-radius: 12px;
    margin: 10px 0;
}

.ad {
    margin-top: 30px;
    background: #475569;
    padding: 20px;
    border-radius: 10px;
    color: #cbd5e1;
}
</style>

</head>

<body>

<div class="container">

<h1>💡 Idea<span class="highlight">Score AI</span></h1>

<p>
Enter your money-making idea and discover its potential.
</p>


<div class="box">

<input id="idea" placeholder="Example: Start a YouTube channel">

<br>

<button onclick="checkIdea()">
Analyze My Idea 🚀
</button>


<div class="result" id="result">

<div class="card">
⭐ Rating:
<p id="score"></p>
</div>

<div class="card">
💰 Earning Potential:
<p id="money"></p>
</div>

<div class="card">
✅ Advantages:
<p id="pros"></p>
</div>

<div class="card">
❌ Disadvantages:
<p id="cons"></p>
</div>

<div class="card">
🔥 Tips:
<p id="tips"></p>
</div>

</div>

</div>


<div class="ad">
Advertisement Space
</div>


</div>


<script>

function checkIdea(){

let idea = document.getElementById("idea").value;

if(idea == ""){
alert("Please enter an idea first!");
return;
}

let score = Math.floor(Math.random()*5)+5;


document.getElementById("score").innerHTML =
score + "/10";


document.getElementById("money").innerHTML =
"$500 - $5000 per month (depends on execution)";


document.getElementById("pros").innerHTML =
"Can grow online, low startup costs, scalable potential.";


document.getElementById("cons").innerHTML =
"Competition, requires time and effort to succeed.";


document.getElementById("tips").innerHTML =
"Start small, test your idea, create content and improve every week.";


document.getElementById("result").style.display="block";

}

</script>


</body>
</html>
