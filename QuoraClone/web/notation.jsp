<!DOCTYPE html>
<html>
<head>
	<title></title>
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
        .Question{
		    position: relative;
            left: 85px;
        }
        .Question a{
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
		    font-size: .6em;
            color: #6669;

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
            font-size: .6em;
		    color: #960d0dd6;
            border-bottom: 1px solid;
            padding: 0px 3px 10px 0px;
        }
        .bell i{
        	    padding: 11px 7px;
        }
        .user{
        	    position: relative;
                left: 72px;
        }
        .user a{
		    text-decoration: none;
		    color: #6669;
		    font-size: .6em;
		    border: 1px solid #6669;
		    border-radius: 50%;
		    padding: 7px 5px;
		    position: relative;
		    top: -2px;
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

	</style>
</head>
<body>
   <div class="header">
   	  <div class="inheader">
   	    <span>JigyaXa</span>
   	         <span class="text"><a href="home.jsp"><i class="fa fa-file-text" aria-hidden="true"></i>Home</a></span>
   	         <span class="answer"><a href="answer.jsp"><i class="fa fa-edit" aria-hidden="true"></i>Answers</a></span>
             <span class="bell"><a href="notation.html"><i class="fa fa-bell" aria-hidden="true"></i>Notifications</a></span>
             <span class="input"><input type="serch" name="" placeholder="Search..."></span>
             <span class="user"><a href="profle.jsp"><i class="fa fa-user" aria-hidden="true"></i></a></span>
             <span class="Question"><a href="">Add Question Or Links</a></span>
   	  </div>
   </div>

</body>
</html>