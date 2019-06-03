function count_notifications(){
    var enlaces = document.getElementById("notifiaciones");
    var notifiacion = enlaces.getElementsByTagName("a")    
    document.getElementById("cantidad").innerText=notifiacion.length;    
}
count_notifications();