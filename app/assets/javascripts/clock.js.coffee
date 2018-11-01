ready = ->
    now = new Date();
    year = now.getFullYear();
    mo = now.getMonth() + 1;
    day = now.getDay();
    hour = now.getHours();
    min = now.getMinutes();
    sec = now.getSeconds();
    if mo < 10 
        mo = "0" + mo;
    if day < 10 
        day = "0" + day;
    if min < 10 
        min = "0" + min;
    if sec < 10
        sec = "0" + sec;

    document.getElementById("clock_date").textContent =  year + "/" + mo + "/" + day;
    document.getElementById("clock_time").textContent = hour + ":" + min + ":" + sec;
    
    setInterval(ready,1000)    


$(document).ready(ready)
$(document).on('page:load', ready)