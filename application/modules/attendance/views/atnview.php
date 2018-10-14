
<div class="form-group text-right">
<?php if($this->permission->method('attendance','create')->access()): ?>
<button type="button" class="btn btn-primary btn-md" data-target="#add0" data-toggle="modal"  >
<i class="fa fa-clock-o" aria-hidden="true"></i><?php echo display('single_checkin')?></button> 
<button type="button" class="btn btn-primary btn-md" data-target="#add1" data-toggle="modal"  >
<i class="fa fa-clock-o" aria-hidden="true"></i> <?php echo display('bulk_checkin')?></button> 
  <?php endif; ?> 
  <?php if($this->permission->method('attendance','read')->access()): ?>
<a href="<?php echo base_url();?>/attendance/Home/manageatn" class="btn btn-primary"><?php echo display('manage_attendance')?></a>
 <?php endif; ?> 
</div>
 

<div id="add0" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green;color:white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <strong> <?php echo display('attendance')?></strong>
            </div>
            <div class="modal-body">
           
<div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel ">
                <div class="panel-heading" >
                    <div class="panel-title">
                        <h4><?php echo display('checkin') ?></h4>
                    </div>
                </div>
                <div class="panel-body">

                    <?= form_open('attendance/Home/create_atten') ?>
                        <div class="form-group row">
                            <label for="employee_id" class="col-sm-3 col-form-label"><?php echo display('emp_id') ?> *</label>
                            <div class="col-sm-9">
                            <?php echo form_dropdown('employee_id',$dropdownatn,null,'class="form-control" id="employee_id" style="width:300px"') ?>
                               
                            </div>
                        </div>          
                        <div class="form-group text-center">
                           <button type="submit" class="btn btn-danger w-md m-b-5" data-dismiss="modal">&times; Cancel</button>
                            <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('sign_in') ?></button>
                        </div>
                    <?php echo form_close() ?>

                </div>  
            </div>
        </div>
    </div>
             
    
   
    </div>
     
            </div>
            <div class="modal-footer">

            </div>

        </div>

    </div>
 <!--  signout modal start --> 
 <div id="signout" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green;color:white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <strong><center> <?php echo display('checkout')?></center></strong>
            </div>
            <div class="modal-body">
           
   <div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel panel-bd">
               
                <div class="panel-body">
                 <?= form_open('attendance/Home/checkout') ?>

                    <input name="att_id" id="att_id" type="hidden" value="">
                 
                        <div class="form-group row">
                            
                            <div class="col-sm-9">
                                <input name="sign_in" class=" form-control" type="hidden"  value=""  id="sign_in" readonly="readonly" >
                            </div>
                        </div>
                     
  
                       <center> <canvas id="clock" width="150" height="150"
style="background-color:#fff"></canvas></center>
             
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-danger" data-dismiss="modal">&times; Cancel</button>
                            <button type="submit" class="btn btn-primary"><?php echo display('confirm_clock')?></button>
                        </div>

                    <?php echo form_close() ?>


                </div>  
            </div>
        </div>
    </div>
             
    </div>
     
            </div>
            <div class="modal-footer">

            </div>

        </div>

    </div>
 <!-- signout modal end -->         
<div class="row">
    <!--  table area -->
    <div class="col-sm-12">

        <div class="panel panel-default thumbnail"> 

            <div class="panel-body">
               
  <table width="100%" class="datatable table table-striped table-bordered table-hover example">
                <caption><?php echo display('attendance_list')?></caption>
                <thead>
                    <tr>
                      <th><?php echo display('Sl') ?></th>
                        <th><?php echo display('name')?></th>
                        <th><?php echo display('id')?></th>
                        <th><?php echo display('date')?></th>
                        <th><?php echo display('checkin')?></th>
                        <th><?php echo display('checkout')?></th>
                        <th><?php echo display('stay')?></th>
                         <?php if($this->permission->method('attendance','update')->access()): ?>
                         <th><?php echo display('action')?></th>
                          <?php endif; ?> 
                    </tr>
                </thead>
                <tbody>
                    <?php if ($addressbook == FALSE): ?>

                        <tr><td colspan="4">There are currently No Addresses</td></tr>
                    <?php else: ?>
                         <?php $sl = 1; ?> 
                        <?php foreach ($addressbook as $row): ?>
                            <tr class="<?php echo ($sl & 1)?"odd gradeX":"even gradeC" ?>">
                            <td><?php echo $sl; ?></td>
                                <td><?php echo $row['first_name'].' '.$row['last_name']; ?></td>
                                <td><?php echo $row['employee_id']; ?></td>
                                <td><?php echo $row['date']; ?></td>
                                <td><?php echo $row['sign_in']; ?></td>
                                <td><?php echo $row['sign_out']; ?></td>
                                <td><?php echo $row['staytime']; ?></td>
                                 <?php if($this->permission->method('attendance','update')->access()): ?>
                                <td> 
                                <?php if($row['staytime']==''){
                                    $id=$row["att_id"];
                                    ?>
                                   <a href='#' class='btn btn-success' onclick='signoutmodal(<?php echo $id; ?>,"<?php echo $row['sign_in']; ?>")'><i class='fa fa-clock-o' aria-hidden='true'></i> <?php echo display('checkout') ?></a>
                                  <?php  } 
                                    else {
                                        echo 'Checked Out';
                                    }

                                        ?> 

                                </td>
                                <?php endif; ?> 
                            </tr>
                              <?php $sl++; ?>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </tbody>
            </table>


                <!-- /.table-responsive -->
            </div>
        </div>
    </div>
</div>
             
    
   
  



<div id="add1" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header" style="background-color:green;color:white">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <strong><?php echo display('add_attendance')?></strong>
            </div>
            <div class="modal-body">
           <div class="container" style="margin-top:50px">    
             <br>
             
             <?php if (isset($error)): ?>
                <div class="alert alert-error"><?php echo $error; ?></div>
            <?php endif; ?>
            <?php if ($this->session->flashdata('success') == TRUE): ?>
                <div class="form-control alert alert-success"><?php echo $this->session->flashdata('success'); ?></div>
            <?php endif; ?>
            <h3>You can export test.csv file Example-</h3>
            <h4>employee_id,date,sign_in,sign_out,staytime</h4>
            <h4>EY2T1OWA,2018-10-07,12:14:50 pm,05:07:31 pm,04:59:38</h4>
            <h2><?php echo display('import_attendance')?> <span style="color:green"><img src="<?php echo base_url('assets/img/user/fingur.png') ?>" height="100px" width="100px"></span><?php echo display('upload_csv')?></h2>
                <form method="post" action="<?php echo site_url() ?>attendance/Home/importcsv" enctype="multipart/form-data">
                       <?php echo form_open_multipart('attendance/Home/importcsv',array('class' => 'form-vertical', 'id' => 'validate','name' => 'insert_attendance'))?>
                    <input type="file" name="userfile" id="userfile" ><br><br>
                    <input type="submit" name="submit" value="UPLOAD" class="btn btn-primary">
       <?php echo form_close()?>
           
        
            
        </div>     

    </div>

</div>
</div>
</div>
<!-- Start Modal -->

<script type="text/javascript">
function signoutmodal(id,signin){
    $("#signout").modal('show');
    document.getElementById('att_id').value=id;
    document.getElementById('sign_in').value=signin;
}

$(document).ready(function() {
 
// choose text for the show/hide link - can contain HTML (e.g. an image)
var showText='ADD More';
var hideText='Hide';
 
// initialise the visibility check
var is_visible = false;
 
// append show/hide links to the element directly preceding the element with a class of "toggle"
$('.toggle').prev().append(' (<a href="#" class="toggleLink">'+showText+'</a>)');
 
// hide all of the elements with a class of 'toggle'
$('.toggle').hide();
 
// capture clicks on the toggle links
$('a.toggleLink').click(function() {
 
// switch visibility
is_visible = !is_visible;
 
// change the link depending on whether the element is shown or hidden
$(this).html( (!is_visible) ? showText : hideText);
 
// toggle the display - uncomment the next line for a basic "accordion" style
//$('.toggle').hide();$('a.toggleLink').html(showText);
$(this).parent().next('.toggle').toggle('slow');
 
// return false so any link destination is not followed
return false;
 
});
});
</script>
<script>
var canvas = document.getElementById("clock");
var ctx = canvas.getContext("2d");
var radius = canvas.height / 2;
ctx.translate(radius, radius);
radius = radius * 0.90
setInterval(drawClock, 1000);

function drawClock() {
  drawFace(ctx, radius);
  drawNumbers(ctx, radius);
  drawTime(ctx, radius);
}

function drawFace(ctx, radius) {
  var grad;
  ctx.beginPath();
  ctx.arc(0, 0, radius, 0, 2*Math.PI);
  ctx.fillStyle = 'white';
  ctx.fill();
  grad = ctx.createRadialGradient(0,0,radius*0.95, 0,0,radius*1.05);
  grad.addColorStop(0, '#333');
  grad.addColorStop(0.5, 'white');
  grad.addColorStop(1, '#333');
  ctx.strokeStyle = grad;
  ctx.lineWidth = radius*0.1;
  ctx.stroke();
  ctx.beginPath();
  ctx.arc(0, 0, radius*0.1, 0, 2*Math.PI);
  ctx.fillStyle = '#333';
  ctx.fill();
}

function drawNumbers(ctx, radius) {
  var ang;
  var num;
  ctx.font = radius*0.15 + "px arial";
  ctx.textBaseline="middle";
  ctx.textAlign="center";
  for(num = 1; num < 13; num++){
    ang = num * Math.PI / 6;
    ctx.rotate(ang);
    ctx.translate(0, -radius*0.85);
    ctx.rotate(-ang);
    ctx.fillText(num.toString(), 0, 0);
    ctx.rotate(ang);
    ctx.translate(0, radius*0.85);
    ctx.rotate(-ang);
  }
}

function drawTime(ctx, radius){
    var now = new Date();
    var hour = now.getHours();
    var minute = now.getMinutes();
    var second = now.getSeconds();
    //hour
    hour=hour%12;
    hour=(hour*Math.PI/6)+
    (minute*Math.PI/(6*60))+
    (second*Math.PI/(360*60));
    drawHand(ctx, hour, radius*0.5, radius*0.07);
    //minute
    minute=(minute*Math.PI/30)+(second*Math.PI/(30*60));
    drawHand(ctx, minute, radius*0.8, radius*0.07);
    // second
    second=(second*Math.PI/30);
    drawHand(ctx, second, radius*0.9, radius*0.02);
}

function drawHand(ctx, pos, length, width) {
    ctx.beginPath();
    ctx.lineWidth = width;
    ctx.lineCap = "round";
    ctx.moveTo(0,0);
    ctx.rotate(pos);
    ctx.lineTo(0, -length);
    ctx.stroke();
    ctx.rotate(-pos);
}
</script>
