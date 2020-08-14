
var laminas= Array();
$("#laminas").click(function (e) { 
//$("#divlaminas div.col-md-6").each(function(){
  //       $(this).hide();
         
    //     laminas.push($(this).attr('id').toString());
        
       
    //});

   $("#divlaminas").html("<div class=' col-md-6 col-lg-3 ' id='lamina1'>"+
  " <div class='project'>"+
       "<img src='images/work-1.jpg' class='img-fluid' alt='Colorlib Template'>"+
      " <div class='text'>"+
           "<span>Commercial</span>"+
           "<h3><a href='../lamina1.html'>San Francisco Tower</a></h3>"+
       "</div>"+
       "<a href='images/work-1.jpg'"+
           "class='icon image-popup d-flex justify-content-center align-items-center'>"+
           "<span class='icon-expand'></span>"+
       "</a>"+
   "</div>") ;

    
});
$("#afuera").click(function (e) { 
   
    $("#divlaminas div.col-md-6").each(function(){
         $(this).show();
     
       
    });
    $("#resultado").hidde();
    
});

                                                     
  $('#laminas').keyup(function () { 
     
     var i=0;
     var texto= $('#laminas').val();

     $("#divlaminas div.col-md-6").each(function(){
        if($(this).attr('id')==texto){
            
            $(this).show();
            $("#resultado").toggle('fast');
          
         
      
        }else{
            $(this).hide();
            $("#resultado").show();
            $("#resultado").text("Sin resultados encontrados");
  
        }
        i=i+1;
    });
    
      
  });
  
 
  
  
 
  