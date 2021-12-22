<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/FortAwesome/Font-Awesome@5.14.0/css/all.min.css">
	<link type="text/css" href="/project1982/resources/style/style.css" rel="stylesheet"/>
    <link type="text/css" href="/project1982/resources/style/header.css" rel="stylesheet"/>
</head>
<body>
<% 
	String ownerid = (String)session.getAttribute("ownerid");
	out.println(ownerid + " �� ȯ���մϴ�.");
%>
        <!--�޴���  ------------------------------------------------->
       <header class="header" >
            <!-- �ΰ�-->
               <div>
               <a href="../main.do" class="logo">
                   <h1>1982</h1>
               </a>
               </div>
               <!--�޴�--> 
             
               
               <!-- ������ �޴�-->
               <div class="right-menu">
                   <!--�˻� -->
                   <a href="/project1982/owner/job_positing.do" class="search">
                    ���ΰ���
                   </a>
                   <!--���� -->
                   <a href="/project1982/owner/ownerMypage" class="user">
                   ����������
                   </a>
                   <!--īƮ  -->
                   <a href="../board.do">
                   ������
                       <!--īƮ ��ǰ-->
                       
                   </a>
               </div>
   
           </header>

    <!-- ���� ---------------------------------------------------------------->
        <main>
      
        <form action="ownerUpdate" method='post' enctype="multipart/form-data"> 
            <ul class="left_nav">
                <li class="left_nav_text"><a class="home" href="#">Ȩ</a></li>
                <li class="left_nav_text"><a href="#">���ҽ�</a></li>
                <li class="left_nav_text"><a href="#">��ǰ</a></li>
                <li class="left_nav_text"><a href="#">ȸ��</a></li>
            </ul>

            <div class="body_container"> <!-- ������ �����̳� ����-->
         
                <div class="body_container_center"> <!-- �߰� �޴��� ����-->
                    <div>��ü ��� / ����</div>
                        <div class="body_container_center_shop_contanier">
                            <div class="body_container_center_shop_contanier_img">
                               	<div>
						<img width="50%" height="50%" src="/project1982/resources/upload/${shopList[0].si_realname }">
					
								</div>
                 
                            </div>
                            <div class= "body_container_center_shop_contanier_info">
                                <div>��ü �̸�: ${shopList[0].shopname }</div>                                
                                <div>��ü �ּ�: ${shopList[0].shopaddr }</div>                                
                                <div>��ü ����ó: ${shopList[0].shoppn }</div>                                
                                <div class="body_container_center_shop_contanier_info_ta">��ü �Ұ�: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <textarea style="resize: none;" name="" id="" cols="20" rows="5" readonly>${shopList[0].shopcontent }</textarea>     

                                    
                                </div>                                
                                
                                                     <button>���� </button>                 
                            </div>
                        </div>
                    
                    
                    
                    
                    <div>��ü ��� ��Ȳ</div>
                    <div>
                        <div class="divTable minimalistBlack">
                            <div class="divTableHeading">
                            <div class="divTableRow">
                            <div class="divTableHead">��ȣ</div>
                            <div class="divTableHead">��ü �̸�</div>
                            <div class="divTableHead">�Ŵ��� �̸�</div>
                            <div class="divTableHead">��ü �ּ�</div>
                            <div class="divTableHead">��ü ����ó</div>
                            <div class="divTableHead">��ü�Ұ�</div>
                       
                            </div>
                            </div>
                            
                        <c:forEach items="${shopList }" var="shop">    
                            <div class="divTableBody">
                            <div class="divTableRow">
               			 	 <div class="divTableCell">${shop.shopnum }</div>
                            <div class="divTableCell">${shop.shopname }</div>
                            <div class="divTableCell">${shop.ownername}</div>
                            
                            <div class="divTableCell">${shop.shopaddr }</div>
                            <div class="divTableCell">${shop.shoppn }</div>
                            <div class="divTableCell">${shop.shopcontent }</div>
                          </div>
                          </div>
                   
                            
                         </c:forEach>
                    </div>

                    <div>������ ��û ��Ȳ</div>
                    <div>
                        <div>
                            
                        </div>

                        <div class="divTable minimalistBlack">
                            <div class="divTableHeading">
                            <div class="divTableRow">
                            <div class="divTableHead">��ȣ</div>
                            <div class="divTableHead">������ �̸�</div>
                            <div class="divTableHead">�ٹ� ���� ����</div>
                            <div class="divTableHead">�̷¼� Ȯ��</div>
                            <div class="divTableHead">��� ����</div>
                            <div class="divTableHead">����ó</div>    
                        </div>
                            </div>
                            <div class="divTableBody">
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_1</div>
                            <div class="divTableCell">cell2_1</div>
                            <div class="divTableCell">cell3_1</div>
                            <div class="divTableCell"><button>PDF</button> <button>PPT</button></div>
                            <div class="divTableCell"><button>���</button> <button>����</button></div>
                            <div class="divTableCell"><button>���� ����</button></div>
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_2</div>
                            <div class="divTableCell">cell2_2</div>
                            <div class="divTableCell">cell3_2</div>
                            <div class="divTableCell">cell4_2</div>
                            <div class="divTableCell">�����������پ�</div>
                            <div class="divTableCell"><button>���� ����</button></div>
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_3</div>
                            <div class="divTableCell">cell2_3</div>
                            <div class="divTableCell">cell3_3</div>
                            <div class="divTableCell">cell4_3</div>
                            <div class="divTableCell">���</div>
                            <div class="divTableCell"><button>���� ����</button></div>
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_4</div>
                            <div class="divTableCell">cell2_4</div>
                            <div class="divTableCell">cell3_4</div>
                            <div class="divTableCell">cell4_4</div>
                            <div class="divTableCell">�����ٰ���</div>
                            <div class="divTableCell"><button>���� ����</button></div>
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_5</div>
                            <div class="divTableCell">cell2_5</div>
                            <div class="divTableCell">cell3_5</div>
                            <div class="divTableCell">cell4_5</div>
                            <div class="divTableCell">����</div>
                            <div class="divTableCell"><button>���� ����</button></div>
                            </div>
                            
                            </div>
                           
                            </div>

                            <div>��� ��Ȳ</div>
                    <div>
                        <div class="divTable minimalistBlack">
                            <div class="divTableHeading">
                            <div class="divTableRow">
                            <div class="divTableHead">��� / ����</div>
                            <div class="divTableHead">��ȣ</div>
                            <div class="divTableHead">������ �̸�</div>
                            <div class="divTableHead">�ٹ��ð�</div>
                            <div class="divTableHead">�޿�</div>
                            <div class="divTableHead">����</div>
                            <div class="divTableHead">�˹�����</div>

                        </div>
                            </div>
                            <div class="divTableBody">
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_1</div>
                            <div class="divTableCell">cell2_1</div>
                            <div class="divTableCell">cell3_1</div>
                            <div class="divTableCell">cell4_1</div>
                            <div class="divTableCell">�ٹ��¸�</div>
                            <div class="divTableCell"><button>����</button></div>
                            <div class="divTableCell"><button>�˹� ����</button></div>
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_2</div>
                            <div class="divTableCell">cell2_2</div>
                            <div class="divTableCell">cell3_2</div>
                            <div class="divTableCell">cell4_2</div>
                            <div class="divTableCell">�����������پ�</div>
                            <div class="divTableCell"><button>����</button></div>
                            <div class="divTableCell"><button>�˹� ����</button></div>
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_3</div>
                            <div class="divTableCell">cell2_3</div>
                            <div class="divTableCell">cell3_3</div>
                            <div class="divTableCell">cell4_3</div>
                            <div class="divTableCell">���</div>
                            <div class="divTableCell"><button>����</button></div>
                            <div class="divTableCell"><button>�˹� ����</button></div>
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_4</div>
                            <div class="divTableCell">cell2_4</div>
                            <div class="divTableCell">cell3_4</div>
                            <div class="divTableCell">cell4_4</div>
                            <div class="divTableCell">�����ٰ���</div>
                            <div class="divTableCell"><button>����</button></div>
                            <div class="divTableCell"><button>�˹� ����</button></div>
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_5</div>
                            <div class="divTableCell">cell2_5</div>
                            <div class="divTableCell">cell3_5</div>
                            <div class="divTableCell">cell4_5</div>
                            <div class="divTableCell">����</div>
                            <div class="divTableCell"><button>����</button></div>
                            <div class="divTableCell"><button>�˹� ����</button></div>
                            </div>
                            
                            </div>
                           
                            </div>
                    </div>

                    <div>������ ���� ����</div>
                    <div>
                        <div class="divTable minimalistBlack">
                            <div class="divTableHeading">
                            <div class="divTableRow">
                            <div class="divTableHead">��ȣ</div>
                            <div class="divTableHead">������ �̸� / ���̵�</div>
                            <div class="divTableHead">���� ����</div>
                            <div class="divTableHead">���ܻ���</div>
           

                        </div>
                            </div>
                            <div class="divTableBody">
                            <div class="divTableRow">
                            <div class="divTableCell">1</div>
                            <div class="divTableCell">cell2_1</div>
                            <div class="divTableCell">cell3_1</div>
                            <div class="divTableCell">cell4_1</div>
                   
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">2</div>
                            <div class="divTableCell">�̼���(skyvcx)</div>
                            <div class="divTableCell">2021-12-13</div>
                            <div class="divTableCell">���� �������� ��</div>
               
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_3</div>
                            <div class="divTableCell">cell2_3</div>
                            <div class="divTableCell">cell3_3</div>
                            <div class="divTableCell">cell4_3</div>
               
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_4</div>
                            <div class="divTableCell">cell2_4</div>
                            <div class="divTableCell">cell3_4</div>
                            <div class="divTableCell">cell4_4</div>
                            
                            </div>
                            <div class="divTableRow">
                            <div class="divTableCell">cell1_5</div>
                            <div class="divTableCell">cell2_5</div>
                            <div class="divTableCell">cell3_5</div>
                            <div class="divTableCell">cell4_5</div>
 
                            </div>
                            
                            </div>
                           
                            </div>
                   
                </div><!--�߰� �޴��� ����-->
               
            
            </div><!-- ������ �����̳� ����--> 
        </form> <!--  ��ü������ ���α� -->
        </main>
        
        
        
        
        
        
        
        
        
        
        
 






<!-- footer --------------------------------------------------------------------->
    <footer>
        <div id="footer">
            <div class="wrap_inner">
                <div class="left_area">
                    <h4 class="rap_inner_h4">
                        �ϱ����� 1982
                    </h4>
                    <div class="left_text">
                        <div class="left_text_margin">
                            <h5>������</h5>
                            <p class="left_phone">1566-1982</p>
                            <p> 
                                <div>���� AM 09:00 ~ PM 05:30</div>
                                <div>���� PM 12:00 ~ PM 01:00</div>
                            </p>
                        </div>
                    </div>
                    <div class="footer_icon">
                        <div><a href="#"><i class="fab fa-facebook-f fa-2x" style="color:rgba(0,0,0,0.5)"></i></a></div>
                        <div><a href="#"><i class="fab fa-twitter fa-2x" style="color:rgba(0,0,0,0.5)"></i></a></div>
                        <div><a href="#"><i class="fab fa-youtube fa-2x" style="color:rgba(0,0,0,0.5)"></i></a></div>
                        <div><a href="#"><i class="fab fa-instagram fa-2x" style="color:rgba(0,0,0,0.5)"></i></a></div>
                    </div>
                </div>


                <div class="right_area">
                    <div class="right_ul">
                        <p>�̿��� | </p>
                        <p>��������ó����ħ | </p>
                        <p>�ϱ����� �̿�ȳ� | </p>
                        <p>����û</p>
                    </div>
                    <div class="right_address">
                        <p>
                            <span>�ֽ�ȸ�� 1982 |</span>
                            <a href="#">

                                <span>��ǥ�̻� : �Ѽ�ȣ |</span>
                            </a>
                                <span>����ڵ�Ϲ�ȣ : 123-12-12345</span>
                            </p>
                        <p>
                            <span>����Ǹž��Ű� : 2021-���ﰡ��-1982 |</span>
                            <span>WEBMASTER : �Ѽ�ȣ</span>
                        </p>
                        <p>
                            <span>�ּ� : 00000 ���� ��õ�� ���ɷ� 309 </span>
                        </p>
                        <p>
                            <span>TEL : 1566-1982</span>
                            <span>E - mail : 1982@seho.co.kr</span>
                            <span>ȣ���������� : �ڽ���(��)</span>
                        </p>
                    </div>
                    <p class="right_copyright">
                        Copyright by
                        <span>�ϱ����� 1982</span>
                        all rights reserved.
                    </p>
                </div>        
            </div>
        </div>

    </footer>
</body>
</html>