<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();

	String basePath = request.getScheme() + "://"

			+ request.getServerName() + ":" + request.getServerPort()

			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>食品药品动态监管系统</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value='/font-awesome/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/ionicons/css/ionicons.min.css'/>">
<!-- DataTables -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/datatables/dataTables.bootstrap.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/skins/_all-skins.min.css">
<script
	src="${pageContext.request.contextPath }/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="jqueryui/style.css">

</head>
<script>
		
    	 function changeFunc(){
    			var selectBox = document.getElementById("table");
    			
    			var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    			var target1 =document.getElementById("div1");
    			var target2 =document.getElementById("div2");
    			var target3 =document.getElementById("div3");
    			var target4 =document.getElementById("div4");
    			var target5 =document.getElementById("div5");
    			var target6 =document.getElementById("div6");
    			var target7 =document.getElementById("div7");
    			var target8 =document.getElementById("div8");
    			var target9 =document.getElementById("div9");
    			var target10 =document.getElementById("div10");	
    			
    				if(target1.getAttribute("id")==selectedValue){
    							target1.style.display="block";
    				}else{
    					target1.style.display="none";
    				}
    				
    				if(target2.getAttribute("id")==selectedValue){
						target2.style.display="block";
			}else{
				target2.style.display="none";
			}
    				if(target3.getAttribute("id")==selectedValue){
						target3.style.display="block";
			}else{
				target3.style.display="none";
			}
    				if(target4.getAttribute("id")==selectedValue){
						target4.style.display="block";
			}else{
				target4.style.display="none";
			}
    				if(target5.getAttribute("id")==selectedValue){
						target5.style.display="block";
			}else{
				target5.style.display="none";
			}
    				if(target6.getAttribute("id")==selectedValue){
						target6.style.display="block";
			}else{
				target6.style.display="none";
			}
    				if( target7.getAttribute("id")==selectedValue){
						target7.style.display="block";
			}else{
				target7.style.display="none";
			}
    				
    				if(target8.getAttribute("id")==selectedValue){
						target8.style.display="block";
			}else{
				target8.style.display="none";
			}
    				if(target9.getAttribute("id")==selectedValue){
						target9.style.display="block";
			}else{
				target9.style.display="none";
			}
    				if(target10.getAttribute("id")==selectedValue){
						target10.style.display="block";
			}else{
				target10.style.display="none";
			}
    			} 
    	
    	  $(function() {
    		    var availableTags = [
    			<c:forEach var="item" items="${qy}">   
    			  "${item.qyname}",   
    			</c:forEach> 
    		    ];
    		    $( "#dwname" ).autocomplete({
    		      source: availableTags,
    		      max:10
    		    });
    		  });
    	  function onblur(){
    		  var name = $("#dwname").val();
    		  if(name!=""){
    			  ajaxbyname(name);
    		  }
    	  }
    	  function  ajaxbyname(name){
    		  $.ajax({
    			 	url:"http://localhost:8080/tslanpu/foodAjaxServlet",
    	  			data:{qyname:name},
    	  			async:false,
    	  			type:"post",
    	  			dataType:"JSON",
    	  			success:function(jsonData){
    	  				var scaddress = jsonData.byqynameFood.scaddress;//生产地址
    	  				var qyphone = jsonData.byqynameFood.qyphone; //企业负责人手机号
    	  				var qydelegate = jsonData.byqynameFood.qydelegate;//企业负责人
    	  				var scpermit = jsonData.byqynameFood.scpermit;//食品生产许可证编号
    	  				var zzcode = jsonData.byqynameFood.zzcode;//注册号
    	  				$("#scaddress").attr("value",scaddress);
    	  				$("#qyphone").attr("value",qyphone);
    	  				$("#qydelegate").attr("value",qydelegate);
    	  				$("#scpermit").attr("value",scpermit);
    	  				$("#zzcode").attr("value",zzcode);
    	  			}
    		  });
    	  }
       </script>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">

		<header class="main-header"> <!-- 头部标题 --> <jsp:include
			page="/pages/header.jsp"></jsp:include> </header>

		<!-- Left side column. contains the logo and sidebar -->
		<!-- 左边栏 -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<jsp:include page="/pages/left.jsp"></jsp:include> <!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<!--  <section class="content-header">
          <h1>
            Data Tables
            <small>advanced tables</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Tables</a></li>
            <li class="active">Data tables</li>
          </ol>
        </section> -->
			<!-- Main content -->
			<section class="content">
			<div class="row" style="text-align: center">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3>抽检报告制作</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<form id="formValidate" action="<c:url value='/FoodServlet'/>"
								method="post">
								<input type="hidden" name="method" value="add"> <input
									type="hidden" name="token" value="${tokenF }">
								<table id="" class="table table-condensed">
									<tbody>
										<tr>
											<td><label for="dwname">1.被抽检单位</label></td>
											<td><input id="dwname" type="text" style="width: 260px"
												onblur="onblur()"></td>
											<td>2.抽检时间</td>
											<td><input id="cjsj" type="text" style="width: 260px"
												class="" name="cjsj" /></td>
										</tr>

										<tr>
											<td>请选择表：</td>
											<td><select id="table" style="width: 280px" name="table"
												onchange="changeFunc();">
													<option value="div0">请选择</option>
													<option value="div1">食品安全抽样检验告知书</option>
											</select></td>
										</tr>
								</table>
							</form>
							<div id="div0">helloworld</div>
							<div id="div1" style="display: none">
								<p class=MsoNormal align=center style='text-align: center'>
									<span style='font-size: 22.0pt; font-family: 方正小标宋简体'>食品安全抽样检验告知书<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal align=center style='text-align: center'>
									<span lang=EN-US style='font-size: 22.0pt'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal align=center style='text-align: center'>
									<span lang=EN-US style='font-size: 22.0pt'><span
										style="mso-spacerun: yes">                   </span></span><span
										lang=EN-US style='margin-right: 10px','font-size: 12.0pt'>No<u><span
											style="mso-spacerun: yes">               </span>
										<o:p></o:p></u></span>
								</p>

								<p class=MsoNormal align=center style='text-align: center'>
									<span lang=EN-US style='font-size: 12.0pt'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal align=center style='text-align: center'>
									<span lang=EN-US
										style='font-size: 12.0pt; font-family: 仿宋_GB2312'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal>
									<u><span lang=EN-US
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'><span
											style="mso-spacerun: yes">                       </span></span></u><span
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'>：<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal>
									<span lang=EN-US
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'><span
										style="mso-spacerun: yes">   </span><span
										style="mso-spacerun: yes"> </span></span><span
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'>依据《中华人民共和国食品安全法》，国家对食品进行定期或者不定期的抽样检验。按我局部署，现对你单位依法进行国家食品安全（□监督抽检、□风险监测）。请你单位认真阅读本通知书背面《食品安全抽样检验企业须知》，并予以积极配合。<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal style='text-indent: 30.0pt'>
									<span style='font-size: 15.0pt; font-family: 仿宋_GB2312'>被抽食品：<u><span
											lang=EN-US><span style="mso-spacerun: yes">                              
											</span>
											<o:p></o:p></span></u></span>
								</p>

								<p class=MsoNormal style='text-indent: 30.0pt'>
									<span style='font-size: 15.0pt; font-family: 仿宋_GB2312'>抽样单位：<u><span
											lang=EN-US><span style="mso-spacerun: yes">                      
											</span><span style="mso-spacerun: yes">        </span>
											<o:p></o:p></span></u></span>
								</p>

								<p class=MsoNormal style='text-indent: 30.0pt'>
									<span style='font-size: 15.0pt; font-family: 仿宋_GB2312'>抽样人员：<u><span
											lang=EN-US><span style="mso-spacerun: yes">                              
											</span>
											<o:p></o:p></span></u></span>
								</p>

								<p class=MsoNormal style='text-indent: 30.0pt'>
									<span style='font-size: 15.0pt; font-family: 仿宋_GB2312'>抽样日期：<u><span
											lang=EN-US><span style="mso-spacerun: yes">       
											</span></span></u>年<u><span lang=EN-US><span
												style="mso-spacerun: yes">      </span></span></u>月<u><span
											lang=EN-US><span style="mso-spacerun: yes">     
											</span></span></u>日<span lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal style='text-indent: 30.0pt'>
									<span lang=EN-US
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal style='text-indent: 30.0pt'>
									<span lang=EN-US
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal>
									<span lang=EN-US
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal style='text-indent: 30.0pt'>
									<span lang=EN-US
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'><span
										style="mso-spacerun: yes">                                  
									</span></span><span style='font-size: 15.0pt; font-family: 仿宋_GB2312'>年<span
										lang=EN-US><span style="mso-spacerun: yes">    </span></span>月<span
										lang=EN-US><span style="mso-spacerun: yes">    </span></span>日<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal style='text-indent: 30.0pt'>
									<span lang=EN-US
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'><span
										style="mso-spacerun: yes">                  </span></span><span
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'>有效期至<span
										lang=EN-US><span style="mso-spacerun: yes">        
										</span></span>年<span lang=EN-US><span style="mso-spacerun: yes">   
										</span></span>月<span lang=EN-US><span style="mso-spacerun: yes">   
										</span></span>日<span lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal>
									<span lang=EN-US
										style='font-size: 12.0pt; font-family: 仿宋_GB2312'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal>
									<span lang=EN-US
										style='font-size: 12.0pt; font-family: 仿宋_GB2312'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal>
									<span lang=EN-US
										style='font-size: 12.0pt; font-family: 仿宋_GB2312'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal>
									<span lang=EN-US
										style='font-size: 15.0pt; font-family: 仿宋_GB2312'><o:p>&nbsp;</o:p></span>
								</p>

								<p class=MsoNormal
									style='text-indent: 24.0pt; mso-char-indent-count: 2.0'>
									<span style='font-size: 12.0pt; font-family: 仿宋_GB2312'>本告知书一式三联。第一联被抽样单位留存；第二联
										抽样单位留存；第三联组织抽样检验的食品药品监管部门（市场监管部门）留存<span lang=EN-US><o:p></o:p></span>
									</span>
								</p>

								<p class=MsoNormal align=center style='text-align: center'>
									<span style='font-size: 22.0pt; font-family: 方正小标宋简体'>食品安全抽样检验被抽样单位须知<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal
									style='text-indent: 32.0pt; mso-char-indent-count: 2.0; mso-line-height-alt: 0pt'>
									<span lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>1</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>．对食品进行抽样检验是食品药品监管部门依法履行监管职责的一项重要措施，任何单位和个人不得妨碍抽检工作的正常进行。被抽样单位无正当理由，对抽样工作不配合或者拒绝抽样检验的，按拒检处理。<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal
									style='text-indent: 32.0pt; mso-char-indent-count: 2.0; mso-line-height-alt: 0pt'>
									<span lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>2</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>．依据《中华人民共和国食品安全法》的有关规定，抽样检验的样品通过购买的方式获取<span
										lang=EN-US>,</span>不向被抽样单位收取检验费和其他任何费用。被抽样单位应及时将《国家食品安全抽样检验样品购置费用告知书》和相应的发票送至指定单位。<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal
									style='text-indent: 32.0pt; mso-char-indent-count: 2.0; mso-line-height-alt: 0pt'>
									<span lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>3</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>．国家食品安全抽样检验事先不通知被抽样单位。抽样人员不得少于</span><span
										lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>2</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>名，抽样前应向被抽样单位出示注明抽检监测内容的《国家食品安全抽样检验告知书》（原件）和抽样人员有效身份证件。抽样单位为承检机构的，抽样前还应向被抽样单位出示《国家食品安全抽样检验任务委托书》<span
										lang=EN-US>(</span>复印件<span lang=EN-US>)</span>。样品应由抽样人员从食品生产者的成品库的待销产品、食品经营者销售的食品、餐饮服务提供者使用或销售的食品中抽取。食品标签、包装、说明书标有“试制”或者“样品”等字样的和全部用于出口的食品不在抽样范围。<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal
									style='text-indent: 32.0pt; mso-char-indent-count: 2.0; mso-line-height-alt: 0pt'>
									<span lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>4</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>．抽取的样品应由抽样人员自行送达或寄送至承检机构。确需被抽样单位协助寄送的，抽样人员应明确告知样品的寄、送要求。被抽样单位应在规定的时限内正确寄送，寄送样品的费用由抽样单位支付。<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal
									style='text-indent: 32.0pt; mso-char-indent-count: 2.0; mso-line-height-alt: 0pt'>
									<span lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>5</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>．被抽样单位应当协助抽样工作人员如实填写国家食品安全抽样检验抽样单。<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal
									style='text-indent: 32.0pt; mso-char-indent-count: 2.0; mso-line-height-alt: 0pt'>
									<span lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>6</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>．被抽样单位、生产者对执行此次抽检任务的单位、个人及有关抽检工作的任何意见，请填写《国家食品安全抽样检验工作质量及工作纪律反馈单》，填写完毕后寄送至指定单位。反馈意见者应留下电话、传真、</span><span
										lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>Email</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>等联系方式。<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

								<p class=MsoNormal
									style='text-indent: 32.0pt; mso-char-indent-count: 2.0; mso-line-height-alt: 0pt'>
									<span lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>7</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>．凡在市场上抽取的或涉及委托加工的样品，生产者或委托加工方应自收到通知之日起</span><span
										lang=EN-US
										style='font-size: 16.0pt; mso-fareast-font-family: 仿宋_GB2312'>5</span><span
										style='font-size: 16.0pt; font-family: 仿宋_GB2312'>个工作日内反馈意见，逾期未反馈的，视为认同样品的真实性。<span
										lang=EN-US><o:p></o:p></span></span>
								</p>

							</div>
						</div>
					</div>
				</div>
			</div>


			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<!--  <b>唐山蓝普</b>-->
		</div>
		<strong></strong> </footer>
		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	<!-- jQuery 2.1.4 -->
	<!--<script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    -->
	<!-- Bootstrap 3.3.5 -->
	<script
		src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script
		src="${pageContext.request.contextPath }/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="${pageContext.request.contextPath }/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath }/plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${pageContext.request.contextPath }/dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${pageContext.request.contextPath }/dist/js/demo.js"></script>
	<!-- page script -->
	<script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>

</body>
</html>
