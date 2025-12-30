<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>2026</title>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Segoe UI', sans-serif;
}

body {
  height: 100vh;
  background: radial-gradient(circle at top, #2b1055, #000);
  overflow: hidden;
  color: white;
}

.fairy-lights {
  position: fixed;
  inset: 0;
  pointer-events: none;
  z-index: 0;
}

.fairy-lights span {
  position: absolute;
  width: 10px;
  height: 10px;
  border-radius: 50%;
  background: radial-gradient(circle, #ffd36a, #ffb300);
  box-shadow: 0 0 16px rgba(255, 211, 106, 0.9);
  animation: blink 2.2s ease-in-out infinite;
}

@keyframes blink {
  0%,100% { opacity: 0.4; transform: scale(0.8); }
  50% { opacity: 1; transform: scale(1.2); }
}

.fairy-lights span:nth-child(1){top:10%;left:15%;animation-delay:0s;}
.fairy-lights span:nth-child(2){top:20%;left:70%;animation-delay:.4s;}
.fairy-lights span:nth-child(3){top:35%;left:40%;animation-delay:.8s;}
.fairy-lights span:nth-child(4){top:50%;left:85%;animation-delay:1.2s;}
.fairy-lights span:nth-child(5){top:65%;left:25%;animation-delay:.6s;}
.fairy-lights span:nth-child(6){top:75%;left:60%;animation-delay:1.4s;}
.fairy-lights span:nth-child(7){top:85%;left:35%;animation-delay:.9s;}
.fairy-lights span:nth-child(8){top:30%;left:90%;animation-delay:.2s;}
.fairy-lights span:nth-child(9){top:45%;left:10%;animation-delay:1.1s;}
.fairy-lights span:nth-child(10){top:60%;left:50%;animation-delay:.3s;}
.fairy-lights span:nth-child(11){top:15%;left:50%;animation-delay:.7s;}
.fairy-lights span:nth-child(12){top:25%;left:25%;animation-delay:1.3s;}
.fairy-lights span:nth-child(13){top:40%;left:65%;animation-delay:.5s;}
.fairy-lights span:nth-child(14){top:55%;left:30%;animation-delay:1.6s;}
.fairy-lights span:nth-child(15){top:70%;left:85%;animation-delay:.1s;}

.container {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
  z-index: 2;
  max-width: 650px;
}

h1 {
  font-size: 4rem;
  letter-spacing: 6px;
  color: #ffd36a;
  text-shadow: 0 0 25px rgba(255,211,106,0.9);
}

.subtitle {
  margin-top: 15px;
  font-size: 1.15rem;
  opacity: 0.85;
}

.question {
  margin-top: 25px;
  font-size: 1.35rem;
}

.yes {
  margin-top: 45px;
  padding: 14px 36px;
  font-size: 1.05rem;
  border-radius: 40px;
  border: none;
  cursor: pointer;
  background: linear-gradient(135deg, #ffd36a, #ff9f68);
  color: #000;
  font-weight: bold;
  box-shadow: 0 0 20px rgba(255,159,104,0.7);
}

.yes:hover {
  transform: scale(1.15);
}

.no {
  position: fixed;
  padding: 14px 34px;
  font-size: 1rem;
  border-radius: 40px;
  background: rgba(255,255,255,0.08);
  border: 1.5px solid rgba(255,255,255,0.6);
  color: white;
  cursor: pointer;
  left: 60%;
  top: 70%;
  backdrop-filter: blur(4px);
}
</style>
</head>

<body>

<div class="fairy-lights">
  <span></span><span></span><span></span><span></span><span></span>
  <span></span><span></span><span></span><span></span><span></span>
  <span></span><span></span><span></span><span></span><span></span>
</div>

<div class="container" id="box">
  <h1>2026</h1>
  <p class="subtitle">new year energy ✨</p>
  <p class="question">
    I like how this feels.<br>
    Thought I’d ask before the year changes.
  </p>
  <button class="yes" onclick="yes()">yeah 🥂</button>
</div>

<button class="no" id="noBtn">hmm…</button>

<script>
const noBtn = document.getElementById("noBtn");

document.addEventListener("mousemove", (e) => {
  const r = noBtn.getBoundingClientRect();
  const dx = e.clientX - (r.left + r.width/2);
  const dy = e.clientY - (r.top + r.height/2);
  if (Math.sqrt(dx*dx + dy*dy) < 140) {
    noBtn.style.left = Math.random() * (innerWidth - noBtn.offsetWidth) + "px";
    noBtn.style.top = Math.random() * (innerHeight - noBtn.offsetHeight) + "px";
  }
});

function yes() {
  document.getElementById("box").innerHTML = `
    <h1>✨</h1>
    <p class="question">
      okay.<br>
      let’s walk into 2026 together.
    </p>
  `;
  noBtn.remove();
}
</script>

</body>
</html>
