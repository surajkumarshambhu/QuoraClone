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
		    color: #960d0dd6;
        border-bottom: 1px solid;
		    font-size: .6em;
        padding: 0px 3px 10px 0px;

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
        .answer_mid{
          position: absolute;
          top: 11%;
          width: 945px;
          left: 13%;
          display: inline-flex;
        }
        .answer_mid_rigth{
          float: left;
          width: 150px;
          padding: 4px 1px 0px 0px;
        }
        .span_question{
            border-bottom: 1px solid #e2e2e2;
            padding: 7px 54px 12px 0px;
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
          }
        .span_question_a{
          position: relative;
          top: 7px;
        }
        .span_question_a a{
            position: relative;
            margin-left: -39px;
            font-size: 14px;
            text-decoration: none;
            color: #666;
            background-color: #a2979742;
            border-radius: 3px;
            border: 1px solid transparent;
            padding: 3px 7px 3px 4px;
        }
        .span_question_a ul li{
           padding: 10px 4px 7px 0px;
        }

        .answer_mid_mid{
          width: 576px;
          position: relative;
          left: 168px;
        }
        .mid_title{
          border: 1px solid #efefef;
          background-color: #fff;
          border-radius: 4px;
          border-bottom: 1px solid #e2e2e2;
          margin-bottom: 8px;
          padding: 16px;
          padding-top: 16px;
        }
      .mid_title i{
            border: 1px solid #a00505;
          background: #a00505;
          padding: 5px 5px 5px 6px;
          font-size: 16px;
          color: white;
      }
      .mid_title a{
        text-decoration: none;
        color: #333;
        font-weight: 500;
        font-size: 15px;
      }
	</style>
</head>
<body>
  
   <div class="header">
   	  <div class="inheader">
   	    <span>JigyaXa</span>
   	         <span class="text"><a href="home.jsp"><i class="fa fa-file-text" aria-hidden="true"></i>Home</a></span>
   	         <span class="answer"><a href="answer.jsp"><i class="fa fa-edit" aria-hidden="true"></i>Answers</a></span>
             <span class="bell"><a href="notation.jsp"><i class="fa fa-bell" aria-hidden="true"></i>Notifications</a></span>
             <span class="input"><input type="serch" name="" placeholder="Search..."></span>
             <span class="user"><a href="profle.jsp"><i class="fa fa-user" aria-hidden="true"></i></a></span>
             <span class="Question"><a href="">Add Question Or Links</a></span>
   	  </div>
   </div>
   <div class="answer_mid">
     <div class="answer_mid_rigth" style="position: fixed;">
        <span class="span_question">Questions</span>
       <div class="span_question_a">
          <ul type="none">
            <li><a href="answer.jsp">Questions For You</a></li>
            <li><a href="answer_request.jsp">Answers Request</a></li>
          </ul>
       </div>
     </div>

     <div class="answer_mid_mid">
         <div class="mid_title">
            <a href=""><i class="fa fa-star"></i>&nbsp&nbspAnswer Request For You</a>
         </div>
     </div>
   </div>
</body>
</html>