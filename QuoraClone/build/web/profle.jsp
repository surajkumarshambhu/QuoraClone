<!DOCTYPE html>
<html>
<head>
	<title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style type="text/css">
	body{
		font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
	}
        .header{
        	background: #fff;
		    position: fixed;
		    top: 0;
		    left: 0;
		    width: 100%;
		    min-height: 50px;
		    box-sizing: border-box;
		    z-index: 800;
		    font-size: 14px;
		    color: #fff;
		    border-bottom: 1px solid #ddd;
		    box-shadow: 0 3px 2px -2px rgba(200,200,200,0.2);
        }
        .inheader{
        	width: 1000px;
		    position: fixed;
		    left: 12.5%;
        }
        .inheader span{
        	color: #b3072d;
  		    font-size: 1.9em;
  		    font-family: monospace;
        }
        .logout{
		    position: relative;

            left: 120px;
        }
        .logout a{
        	text-decoration: none;
		    border: 1px solid #b92b27;
		    background: #b92b27;
		    padding: 3px 7px 4px 7px;
		    color: white;
		    border-radius: 3px;
		    font-size: .5em;
	        position: relative;
    		top: -4px;
        }
        .text{
        	position: relative;
        	left: 18px;
        }
        .text a{
        	text-decoration: none;
		    color: #6669;
		    font-size: .6em;
		    padding: 0px 3px 10px 0px;
        }
        .text i{
        	    padding: 0px 7px;
        	    font-size: 27px;
        }
        .answer{
        	position: relative;
        	left: 30px;
        }
        .answer a{
        	text-decoration: none;
		    color: #6669;
		    font-size: .6em;
        }
        .answer i{
        	    padding: 11px 7px;
        	    font-size: 27px;
        }
        .bell{
        	position: relative;
        	left: 43px;
        }
        .bell a{
        	text-decoration: none;
		    color: #6669;
		    font-size: .6em;
        }
        .bell i{
        	    padding: 11px 7px;
        }
        .user{
        	    position: relative;
                left: 88px;
        }
        .user a{
		    text-decoration: none;
		    font-size: .6em;
		    border: 1px solid #960d0dd6;
		    border-radius: 50%;
		    padding: 7px 5px;
		    position: relative;
		    top: -2px;
            color: #960d0dd6;
        }
        .user i{
        	    padding: 11px 7px;
        }
        .input{
        	position: relative;
        	left: 57px;
        }
        .input input{
        	   padding: 3px 7px 4px 7px;
			    position: relative;
			    top: -4px;
			    font-size: 14px;
			    border-radius: 3px;
			    border: 1px solid #0000002e;
			   opacity: .9;
}
        .profile{
            position: absolute;
            top: 11%;
            width: 890px;
            left: 13%;
            display: inline-flex;
            border: 1px solid #efefef;
            background-color: #fff;
            border-radius: 4px;
            border-bottom: 1px solid #e2e2e2;
            padding: 10px 10px 10px 16px;
        }
        .profile_left{
            float: left;
            width: 155px;
            padding: 4px 1px 0px 0px;
        }
        .profile_left img:hover{
            opacity: .5;
        }
        .profileimage_edit:hover{
            opacity: 1;
        }
        .profile_left img{
            width: 100%;
            border-radius: 50%;
        }
        .profileimage_edit{
            opacity: .1;
            position: relative;
            bottom: 28px;
            border: 1px solid transparent;
            padding: 7px 30px 6px 49px;
            background: rgba(0,0,0,0.5);
            border-radius: 3px;
        }
        .profileimage_edit a{
            text-decoration: none;
            color: white;
            font-family: monospace;
        }
        .profile_mid{
            position: relative;
            top: 10px;
            left: 30px;
            height: 149px;
            width: 183px;
        }
        .profile_mid_name{
            font-family: 'q_serif',Georgia,Times,"Times New Roman","Hiragino Kaku Gothic Pro","Meiryo",serif;
            font-weight: bold;
            line-height: 1.3;
            color: #333;
            font-size: 26px;
        }
        .profile_mid a{
            text-decoration: none;
            line-height: 1.5;
            color: #6669;
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
        }
        .profile_mid a:hover{
            text-decoration: underline;
        }
        .edit_photo{
            display: none;
            height: 63%;
            position: absolute;
            top: 22%;
            left: 28.5%;
            border: 1px solid #ccc;
            width: 540px;
            border-radius: 4px;
        }
        .upload{
            height: 85%;
            border: 2px #7b757596;
            border-style: dashed;
            padding: 10px 10px 10px 10px;
            margin: 16px;
        }
        .upload button{
            position: relative;
            top: 29%;
            left:29%;
            color: #eae7e7ba;
            font-size: 21px;
            padding: 3px 18px 3px 19px;
            border: 1px solid transparent;
            border-radius: 3px;
            background: #234462bd;
        }
        .upload input{
           position: relative;
            top: 50%;
            left: 18%;
            font-size: 19px;
            border-radius: 5px;
            border: 2px solid #b1aeae;
            border-style: dashed;
            padding: 10px 10px 10px 46px;
            width: 56%;
        }
        .upload i{
            position: relative;
            top: -46px;
            left: 132px;
            color: #6669;
        }
        .upload i:hover{
            color: black;
        }
	</style>
        <script type="text/javascript">
        $(document).ready(function(){
            $("#hide").click(function(){
                $(".profile").fadeTo(1000, 0.1);
                $(".edit_photo").fadeTo(1000, 1);
            });
        });
    </script>
      <script type="text/javascript">
        $(document).ready(function(){
            $("#cross").click(function(){
                $(".profile").fadeTo(1000, 1);
                $(".edit_photo").fadeTo(1000, 0);
            });
        });
    </script>
</head>
<body>
   <div class="header">
   	  <div class="inheader">
   	    <span>JigyaXa</span>
   	         <span class="text"><a href="home.jsp"><i class="fa fa-file-text" aria-hidden="true"></i>Home</a></span>
   	         <span class="answer"><a href="answer.jsp"><i class="fa fa-edit" aria-hidden="true"></i>Answers</a></span>
             <span class="bell"><a href="notation.jsp"><i class="fa fa-bell" aria-hidden="true"></i>Notifications</a></span>
             <span class="input"><input type="serch" name="" placeholder="Search..."></span>
             <span class="user"><a href="profile.jsp"><i class="fa fa-user" aria-hidden="true"></i></a></span>
             <span class="logout"><a id="logout">Logout</a></span>
   	  </div>
   </div>
   
   <div class="profile">
       <div class="profile_left">
           <img id="#img" src="qw.png">
           <span class="profileimage_edit"><a id="hide">Edit Photo</a></span>
       </div>
       <div class="profile_mid">
           <span class="profile_mid_name">Suraj Kumar</span>
           <a href="">Add Profile Credential</a>
           <a href="">Add Description</a>
       </div>
   </div>
   <div class="edit_photo">
     <form style="height: 100%">
      <div class="upload">
           <button type="subit">Upload an Image</button><br>
           <input type="file" name="image" id="file">
           <i class="fa fa-times" id="cross"></i>
       </div>
    </form>
   </div>
</body>
</html>