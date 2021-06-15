<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%
	StringBuilder path = new StringBuilder(request.getContextPath());
	path.append("/");
	List<Map<String,Object>> boardList = null;
	boardList = (List<Map<String,Object>>)request.getAttribute("boardList");
	int size = 0;
	if(boardList!=null){
		size = boardList.size();
	}
	out.print("size:"+size);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록[WEB-INF]</title>
<!-- jEasyUI 시작 -->
<link rel="stylesheet" type="text/css" href="<%=path.toString() %>themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=path.toString() %>themes/icon.css"> 
<!-- jEasyUI JS 시작 -->
<script type="text/javascript" src="<%=path.toString() %>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path.toString() %>js/jquery.easyui.min.js"></script>   
<script type="text/javascript">
 	function boardSel(){
		$('#dg_board').datagrid({
			url:'./jsonGetBoardList.sp4',
			onLoadSuccess: function(){
				alert("조회호출성공")
			}
		});
 	}
 	function boardIns(){
 		$('#dlg_ins').dialog('open')
 	}
 	function boardUpd(){
 		$('#dg_board').datagrid({
 			
		});
 	}
 	function boardDel(){
 		$('#dg_board').datagrid({
		
 		});
 	}
 
 
 
 </script>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		$('#dg_board').datagrid({
			columns:[[
				{field:'BM_NO',title:'글번호',width:100, align:'center'},				
				{field:'BM_TITLE',title:'제목',width:400, align:'left'},
				{field:'BM_DATE',title:'작성일',width:300,align:'center'},
		        {field:'BS_FILE',title:'첨부파일',width:200,align:'center'},
				{field:'BM_HIT',title:'조회수',width:100,align:'center'}
			]]
		});
		$('#btn_sel').bind('click', function(){
	        alert('조회');
	        boardSel();
	    });
		$('#btn_ins').bind('click', function(){
	        alert('입력');
	        boardIns();
		});
		$('#btn_upd').bind('click', function(){
	        alert('수정');
	        boardUpd();
	    });
		$('#btn_del').bind('click', function(){
	        alert('삭제');
	        boardDel();
	    });
	});
    
	
</script>
<table id = "dg_board" class="easyui-datagrid" data-options="title:'게시판',toolbar:'#tb_board'" style="width:800px;height:350px">
    <thead>
        <tr>
            <th>글번호</th>
            <th>제목</th>
            <th>작성일</th>
            <th>첨부파일</th>
            <th>조회수</th>
        </tr>
    </thead>
    <tbody>
		<%
			//조회 결과가 없는 거야?
			if(size==0){
		%>
			<tr>
			<th colspan="5">조회결과X.</th>
			</tr>
		<%
			}
			else{//조회결과 있음
				for(int i = 0; i < size; i++){
					Map<String,Object> rmap = boardList.get(i);
					if(i==size) break;
		%>	
					<tr>
						<td><%=rmap.get("BM_NO")%></td>
						<td><a href="getBoardDetail.sp4?bm_no=<%=rmap.get("BM_NO")%>">
						<%=rmap.get("BM_TITLE")%></td>
						<td><%=rmap.get("BM_DATE")%></td>
						<td><%=rmap.get("BS_FILE")%></td>
						<td><%=rmap.get("BM_HIT")%></td>
					</tr> 
		<%
		}////end of for
	}//////////end of else
	%>	
	</tbody>
</table>


    <div id="tb_board" style="padding:2px 5px;">
        <a id="btn_sel" href="javascript:boardSel()" class="easyui-linkbutton" iconCls="icon-search" plain="true">조회</a>
        <a id="btn_ins" href="javascript:boardIns()" class="easyui-linkbutton" iconCls="icon-add" plain="true">입력</a>
        <a id="btn_upd" href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">수정</a>
        <a id="btn_del" href="#" class="easyui-linkbutton" iconCls="icon-cancel" plain="true">삭제</a>
    </div>   
        <!--=========================== [[글쓰기 화면 시작]] =============================-->
   <div id="dlg_ins" class="easyui-dialog" title="My Dialog" style="width:400px;height:200px;"
   		data-options="iconCls:'icon-save',resizable:true,modal:true">
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="Email:" labelPosition="top" data-options="prompt:'Enter a email address...',validType:'email'" style="width:100%;">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="First Name:" labelPosition="top" style="width:100%;">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="Last Name:" labelPosition="top" style="width:100%;">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" label="Company:" labelPosition="top" style="width:100%;">
        </div>
        
        <div>
            <a href="#" class="easyui-linkbutton" iconCls="icon-ok" style="width:100%;height:32px">Register</a>
        </div>
    </div>    
    <!--=========================== [[글쓰기 화면   끝 ]] =============================-->
</body>
</html>