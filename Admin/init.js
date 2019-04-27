
document.addEventListener('DOMContentLoaded',function(){
    M.AutoInit(); 
    var elems = document.querySelectorAll('.fixed-action-btn');
    var instances = M.FloatingActionButton.init(elems, {
        hoverEnabled : false
    });  
});
