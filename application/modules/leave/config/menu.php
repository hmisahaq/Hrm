<?php

// module name
$HmvcMenu["leave"] = array(
    //set icon
    "icon"           => "<i class='fa fa-plane' aria-hidden='true'></i>", 
    
 //group level name
    "weekly_holiday" => array(
        //menu name
       
            "controller" => "Leave",
            "method"     => "create_weekleave",
            "permission" => "read"
        
    ), 
    "holiday" => array(
       
        
        //menu name
      
            "controller" => "Leave",
            "method"     => "holiday_view",
            "permission" => "read"
      
    ), 
    "leave_application" => array(
       
        
        //menu name
      
            "controller" => "Leave",
            "method"     => "application",
            "permission" => "read"
      
    ), 
 
    
);
   

 