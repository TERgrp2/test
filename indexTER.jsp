<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="java.util.Date, java.util.concurrent.atomic.AtomicInteger" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NetFlox</title>
</head>
<body>
<h1>NetFlox</h1>
<div class="search">
    <input id="inp-query" name="search_text" size="30" maxlength="60" placeholder="recherche film, actor..." value="">
    <input type="submit" value="recherche">
 
 </div>
<%--insérer des fichiers::::: <jsp:include page="TERtable1.jsp" flush="true" />--%><br/>
	
<div class="connextion">
 	<fieldset style="border-width: 5px; width:25%; height:220">
    <legend>CONNECT:</legend>
  	<form method="get" action="ConnectionServlet">
	User name :	<input type="text" name="userName" ></input><br/>
	Password : <input type="text" name="mdp"></input><br/>
	<button type="submit">Connecter</button>
	</form>
    </fieldset>
</div>
 
 
<div class="Categorie">
<jsp:include page="styleTAG.jsp" flush="true" />
	
    <p class="op_exactqa_tag_stat0">
    <span class="op_exactqa_tag_type">Catégoies：</span>
    <span class="op_exactqa_tag_item  op_exactqa_tag_selected OP_LOG_BTN">Tout</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Films</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Séries</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Documentaires</span>
    </p>
    <p class="op_exactqa_tag_stat1">
    <span class="op_exactqa_tag_type">Pays：</span>
    <span class="op_exactqa_tag_item  op_exactqa_tag_selected OP_LOG_BTN">Tout</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Étas-Unis</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Chine</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Corée</span>                                      
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Japon</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">France</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Angleterre</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Autre</span>       
    </p>
    <p class="op_exactqa_tag_stat2">
    <span class="op_exactqa_tag_type">Année：</span>
    <span class="op_exactqa_tag_item  op_exactqa_tag_selected OP_LOG_BTN">Tout</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">2018</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">2017</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">2016</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">2010-2015</span>
    <span class="op_exactqa_tag_item OP_LOG_BTN ">Autre</span>                             
    </p>
    </div>
   
<div class="nbConsultation">
	<%
	AtomicInteger counter = (AtomicInteger) application.getAttribute("counter");

	if (counter == null)
	{
		counter = new AtomicInteger();
	};
	int value =	counter.incrementAndGet();	
	application.setAttribute("counter", counter);
	
	%>
   <p>nombre de consultaion:  <%= value %></p>
   </div>

<div class="filmTable">  
 	 <ul class="imglist"> 
        <li>
            <a href="#" target="_blank">
               <img src="image/coco.jpg" width="200" height="200" alt="erreur" />
               <span>coco</span>
            </a>
        </li> 
     
        <li>
             <a href="#" target="_blank">
               <img src="image/coco.jpg" width="200" height="200" alt="erreur" />
               <span>coco</span>
            </a>
        </li> 
        <li>
              <a href="#" target="_blank">
               <img src="image/coco.jpg" width="200" height="200" alt="erreur" />
               <span>coco</span>
            </a>
        </li> 
        <li>
              <a href="#" target="_blank">
               <img src="image/coco.jpg" width="200" height="200" alt="erreur" />
               <span>coco</span>
            </a>
        </li> 
        <li>
             <a href="#" target="_blank">
               <img src="image/coco.jpg" width="200" height="200" alt="erreur" />
               <span>coco</span>
            </a>
        </li> 
        <li>
             <a href="#" target="_blank">
               <img src="image/coco.jpg" width="200" height="200" alt="erreur" />
               <span>coco</span>
            </a>
        </li> 
    </ul> 
</div>


</body>
</html>