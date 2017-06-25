window.onload = makeSequence;
    function makeSequence () {
    var pose1 = ["chakra meditation", "nadi shodhana", "orbital breathing", "pawanmuktasana", "centering"];
    var pose2 = ["childs pose", "cat cow", "caterpillar", "supine twists"];
    var pose3 = ["anahatasana", "bananasana", "half butterfly", "virasana"];
    var pose4 = ["saddle", "camel", "down dog", "toe stretch"];
    var pose5 = ["ankle stretch", "dragon lunge", "shoelace", "dangling"];
    var pose6 = ["sphinx", "sleeper hip opener", "straddle", "reclined butterfly"];
    var pose7 = ["frog", "cat pulling its tail", "snail", "child's pose", ];
    var pose8 = ["butterfly", "happy baby", "deer", "swan"];
    var pose9 = ["dragonfly", "square", "half camel", "virasana"];
    var pose10 = ["bananasana", "caterpillar", "squat", "anahatasana"];
    var pose11 = ["reclining twist", "legs up the wall"];
    var pose12 = ["shavasana"]

    var rand1 = Math.floor(Math.random() * pose1.length);
    var rand2 = Math.floor(Math.random() * pose2.length);
    var rand3 = Math.floor(Math.random() * pose3.length);
    var rand4 = Math.floor(Math.random() * pose4.length);
    var rand5 = Math.floor(Math.random() * pose5.length);
    var rand6 = Math.floor(Math.random() * pose6.length);
    var rand7 = Math.floor(Math.random() * pose7.length);
    var rand8 = Math.floor(Math.random() * pose8.length);
    var rand9 = Math.floor(Math.random() * pose9.length);
    var rand10 = Math.floor(Math.random() * pose10.length);
    var rand11 = Math.floor(Math.random() * pose11.length);
    var rand12 = Math.floor(Math.random() * pose12.length);

    var sequence = pose1[rand1] + "<br>" + pose2[rand2] + "<br>" + pose3[rand3] + "<br>" + pose4[rand4] + "<br>" + pose5[rand5]
    + "<br>" + pose6[rand6] + "<br>" + pose7[rand7] + "<br>" + pose8[rand8] + "<br>" + pose9[rand9] + "<br>" + pose10[rand10]
    + "<br>" + pose11[rand11] + "<br>" + pose12[rand12];
    var sequenceElement = document.getElementById("sequence");
    sequenceElement.innerHTML = sequence;
    refreshbutton();
    schedulebutton();
}

function refreshbutton() {
    var button = document.getElementById("addButton");
    button.onclick = handleButtonClick;
}

function handleButtonClick() {
    makeSequence();
}

function schedulebutton() {
    var button2 = document.getElementById("salesButton")
    button2.onclick = handleButtonClick;
}


