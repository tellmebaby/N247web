<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>N247</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A project management Bootstrap theme by Medium Rare">
    <link href="assets/img/favicon.ico" rel="icon" type="image/x-icon">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Gothic+A1" rel="stylesheet">
    <link href="resources/theme.css" rel="stylesheet" type="text/css" media="all" />
     <!-- Bootstrap CSS -->
	<link href="resources/list-groups.css" rel="stylesheet">
	<link href="resources/sidebars.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    
    
  </head>
  <body>
 	 <div class="layout layout-nav-side">
      <div class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">
	   <img src="/images/gucci.png" alt="twbs" width="50" height="50" class="rounded-circle flex-shrink-0">
        <div class="d-flex align-items-center">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="d-block d-lg-none ml-2">
          
          <div class="dropdown">
		      <a href="#" class="d-flex align-items-center text-white text-decoration-none" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
		        <img src="/images/${userSet.imgName }" alt="" width="32" height="32" class="rounded-circle me-2">	        
		      </a>
		      <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownUser1">
		        <li><a class="dropdown-item" href="#">cloud</a></li>
		        <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#userInfo" >${nick }의 정보</a></li>
		        <li><hr class="dropdown-divider"></li>
		        <li><a class="dropdown-item" href="/mvc/">로그아웃</a></li>
		      </ul>
		    </div>
          
          </div>
        </div>
        <div class="collapse navbar-collapse flex-column" id="navbar-collapse">
          <ul class="navbar-nav d-lg-block">
            
			  <c:forEach items="${tabList }" var="tab" begin="0" >	
			      <li class="nav-item">
			        <a href="/mvc/board?tabId=${tab.tabId }" class="nav-link" aria-current="page">
			          ${tab.tabTitle }
			        </a>
			      </li>
			  </c:forEach>
          </ul>
          <hr>
          <div class="d-none d-lg-block w-100">
          	<span class="text-small text-muted">공유 프로젝트</span>
          	<ul class="nav nav-small flex-column mt-2">
          	  <c:forEach items="${friTabList }" var="friTab" begin="0" >	
			    <li class="nav-item">
			      <a href="/mvc/board2?tabId=${friTab.tabId }&&userNum=${userSet.userNum }" class="nav-link" aria-current="page">
			        <img src="/images/${friTab.imgName }" alt="" width="16" height="16" class="rounded-circle me-2">
			        ${friTab.tabTitle }
			      </a>
			    </li>
			  </c:forEach>
			</ul>
			  
			
            <hr>
          </div>
          <div>
            <form>
              <div class="input-group input-group-dark input-group-round">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="material-icons">search</i>
                  </span>
                </div>
                <input type="search" class="form-control form-control-dark" placeholder="Search" aria-label="Search app">
              </div>
            </form>
            <div class="dropdown">
              <button class="btn btn-primary btn-block" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                New
              </button>
              <ul class="dropdown-menu dropdown-menu-right">
	              <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#project-create-modal">새로운 프로젝트</a></li>
	              <li><a class="dropdown-item" href="/mvc/friendBook?userNum=${userSet.userNum }&&tabId=${selectedTabId}">새로운 멤버</a></li>
			  </ul>
            </div>
          </div>
        </div>
        <div class="d-none d-lg-block">
          <div class="dropdown">
		      <a href="#" class="d-flex align-items-center text-white text-decoration-none" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
		        <img src="/images/${userSet.imgName }" alt="" width="32" height="32" class="rounded-circle me-2">	        
		      </a>
		      <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
		        <li><a class="dropdown-item" href="#">cloud</a></li>
		        <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#userInfo" >${nick }의 정보</a></li>
		        <li><hr class="dropdown-divider"></li>
		        <li><a class="dropdown-item" href="/mvc/">로그아웃</a></li>
		      </ul>
		    </div>
        </div>
      </div>
      
      <!--         사이드바 관련 모달 시작부분  -->
      <div class="modal fade" id="project-create-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">		    
		<form action="createTabAction" id="myForm" class="form-inline" method="post">
		 <div class="modal-dialog">	      
		  <div class="modal-content">
		   <div class="modal-header">
			<h5 class="modal-title" id="exampleModalLabel">새로운 프로젝트</h5>
			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		   </div>
		   <div class="modal-body">
			<div class="mb-3">
			  <input class="form-control" type="text" name="tabTitle" value="프로젝트명을 입력하세요" aria-label="tabTitleCreate" >
			</div>
		   </div>
		   <div class="modal-footer">
			<button type="submit" class="btn btn-secondary">만들기</button>
			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		    <input type="hidden" name="nick" value="${userSet.nick }">
 	 		<input type="hidden" name="userNum" value="${userSet.userNum }">
		   </div>	     
		  </div>
		 </div>
		</form>
	  </div>
	  
	  <div class="modal fade" id="userInfo" tabindex="-1" aria-labelledby="userInfoModal" aria-hidden="true">  
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="userInfoModal">회원정보</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
					<div class="card mb-3" style="max-width: 540px;">
					  <div class="row g-0">
						    <div class="col-md-4">
						      <img src="/images/${userSet.imgName }" class="img-fluid rounded-start" alt="..." data-bs-toggle="modal" data-bs-target="#userImgUpdate">
						    </div>
						    <div class="col-md-8">
							      <div class="card-body">
							        <h5 class="card-title">${nick }</h5>
							        <p class="card-text">${email }</p>
							        <p class="card-text">${introduce }</p>
							        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
							      </div>
						    </div>
					  </div>
					</div>
				</div>
			    <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
			        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#userInfoUpdate" >수정</button>
			    </div>
		    </div>
		    </div>
		</div>
      <!-- 		사이드바 관련 모달 마지막 부분 -->
      <div class="main-container">

        <div class="navbar bg-white breadcrumb-bar">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a>${nick }</a>
              </li>
              <li class="breadcrumb-item"><a href="pages-app.html#">${selectedTab }</a>
              </li>
            </ol>
          </nav>
       
          
          <!-- Default dropstart button -->
			<div class="dropdown">
			  <button type="button" class="btn btn-round" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
			    <i class="material-icons">settings</i>
			  </button>
			  <ul class="dropdown-menu dropdown-menu-right">
			  	  <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#project-edit-modal">이름변경</a></li>
			  	  <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#project-editIntro-modal">소개글변경</a></li>
	              <li><a class="dropdown-item" href="#">완료</a></li>
	              <li><hr class="dropdown-divider"></li>
	              <li><a class="dropdown-item text-danger" href="#" data-bs-toggle="modal" data-bs-target="#project-<c:out value="${tabCheck == 0 ? 'del' : 'select' }"/>-modal">삭제</a></li> 
			    <!-- Dropdown menu links -->
			  </ul>
			</div>
<!-- 		프로젝트 관련 모달 시작부분  -->
			             <div class="modal fade" id="project-edit-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">		    
						 <form action="updateTabTitleAction" id="myForm" class="form-inline" method="get">
						  <div class="modal-dialog">	      
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">프로젝트 이름 변경</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						          <div class="mb-3">
						            <input class="form-control" type="text" name="tabTitle" value="${selectedTab }" aria-label="tabTitleUpdate" >
						          </div>
						      </div>
							      <div class="modal-footer">
							        <button type="submit" class="btn btn-secondary">확인</button>
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						            <input type="hidden" name="tabId" value="${selectedTabId }">
							      </div>
						     
						    </div>
						  </div>
						  </form>
						</div>
						
						<div class="modal fade" id="project-editIntro-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">		    
						 <form action="updateTabTitleAction" id="myForm" class="form-inline" method="get">
						  <div class="modal-dialog">	      
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">프로젝트 소개글 변경</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						          <div class="mb-3">
						            <input class="form-control" type="text" name="tab_intro" value="${introduce }" aria-label="tabIntroUpdate" >
						          </div>
						      </div>
							      <div class="modal-footer">
							        <button type="submit" class="btn btn-secondary">확인</button>
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						            <input type="hidden" name="tabId" value="${selectedTabId }">
							      </div>
						     
						    </div>
						  </div>
						  </form>
						</div>
<!-- 						삭제시 두가지 모달이 필요함  -->

						 <div class="modal fade" id="project-del-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">		    
						 <form action="updateTabTitleAction" id="myForm" class="form-inline" method="get">
						  <div class="modal-dialog">	      
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">프로젝트 삭제</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						          <div class="mb-3">
						            <input class="form-control" type="text" name="tabTitle" value="${selectedTab }" aria-label="tabTitleUpdate" readonly>
						          </div>
						      </div>
							      <div class="modal-footer">
							        <button type="submit" class="btn btn-secondary">삭제</button>
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						            <input type="hidden" name="tabId" value="${selectedTabId }">
							      </div>
						     
						    </div>
						  </div>
						  </form>
						</div>
						
						
						<div class="modal fade" id="project-select-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">		    
							 <div class="modal-dialog">	      
						  	  <div class="modal-content">
						   	   <div class="modal-header">
						     	 <h5 class="modal-title" id="exampleModalLabel">탭안에 자료가 있습니다 이동시키시겠습니까?</h5>
						     	 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						       </div>
						       <div class="modal-body">
						        <c:forEach items="${tabList }" var="tab" begin="0" >
						    	 <form action="updatePostTabTitleAction" id="myForm" class="form-inline" method="get">
						    	  
						    	      
						      	        <button type="submit" class="btn btn-secondary">${tab.tabTitle }</button>
						      	        <input type="hidden" name="tabId" value="${tab.tabId }">
						     	        <input type="hidden" name="moveOn" value="${selectedTabId }">
						      	      
						   		  
						   		 </form>
						   		</c:forEach>
						   		</div>
							      <div class="modal-footer"> 
						    	      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
								  </div>
						      </div>
						     </div>
						</div>
<!-- 		프로젝트 관련 모달 끝부분  -->
        </div>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-11 col-xl-10">
              <div class="page-header">
                <h1>${selectedTab }</h1>
                <p class="lead">${tabIntro }</p>
                <div class="d-flex align-items-center">
                
                <c:forEach items="${friendList }" var="fri" begin="0" >
                
                  <ul class="avatars">				
				    <li class="nav-item">
						<a href="#" data-bs-toggle="modal" data-bs-target="#userInfo${fri.idN247_ft }" data-placement="top" title="${fri.f_name }">
						 <img alt="Claire Connors" class="avatar" src="/images/${fri.f_imgName }" />
						</a>
					</li>									  
                  </ul>
                  		<div class="modal fade" id="userInfo${fri.idN247_ft }" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">		    
						  <div class="modal-dialog">	      
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">${fri.f_name }</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						          <div class="mb-3">
						            <input class="form-control" type="text" value="${fri.email }" aria-label="readonly input example" readonly>
						          </div>
						      </div>
						      <form action="updateDelFriToTabAction" id="myForm" class="form-inline" method="get" accept-charset="UTF-8">
							      <div class="modal-footer">
							        <button type="submit" class="btn btn-secondary">공유취소</button>
							        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
							        <input type="hidden" name="idN247_ft" value="${fri.idN247_ft }">
						            <input type="hidden" name="tabId" value="${selectedTabId }">
							      </div>
						      </form>
						    </div>
						  </div>
						</div>
						
                  </c:forEach>
                  <button class="btn btn-round flex-shrink-0" data-bs-toggle="modal" data-bs-target="#ProjectAdm">
                    <i class="material-icons">add</i>
                  </button>
                  
<!--                   친구추가 모달 시작부 -->
                   <div class="modal fade" id="ProjectAdm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <form action="createFriTabAdd" id="myForm" class="form-inline" method="get" accept-charset="UTF-8">
					    
					  <div class="modal-dialog">
					      
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">공유할 친구를 선택하세요</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					      
						      <select class="form-select" name="ft_userId" multiple aria-label="multiple select example">
						            <c:forEach items="${allFriList }" var="fri1" begin="0" >
						               <option value=${fri1.fUserId } <c:out value="${fri1.check == 0 ? '' : 'disabled' }"/>> ${fri1.f_name }</option>
						           
						            </c:forEach>
						            
						            <c:forEach items="${allFriList2 }" var="fri2" begin="0" >
						              <option value=${fri2.myId } <c:out value="${fri2.check == 0 ? '' : 'disabled' }"/>>${fri2.f_name }</option>
						            </c:forEach>
							  </select>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					        <button type="submit" class="btn btn-primary">추가</button>
					 	 	<input type="hidden" name="ft_tabId" value="${selectedTabId }">
					      </div>
					    </div>
					  </div>
					 </form>
					</div>
<!-- 					친구추가 모달 끝부분 -->

                </div>
                <div>
                  <div class="progress">
                    <div class="progress-bar bg-${tabProgressBg} " style="width:${tabProgress}%;"></div>
                  </div>
                  <div class="d-flex justify-content-between text-small">
                    <div class="d-flex align-items-center">
                      
                      <span>${tabLastUpdate } 마지막 업데이트</span>
                    </div>
                    <span>${tabDueDay }일후 마감</span>
                  </div>
                </div>
              </div>

              <div class="tab-content">
                <div class="tab-pane fade show active" id="tasks" role="tabpanel" data-filter-list="card-list-body">
                  <div class="row content-list-head">
                    <div class="col-auto">
                      <h3>Cards</h3>
                      <button class="btn btn-round" data-bs-toggle="modal" data-bs-target="#cardAddModal">
                        <i class="material-icons">add</i>
                      </button>
                      
<!--                       카드 추가 모달 시작부분  -->
						<div class="modal fade" id="cardAddModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						<form id="frm" name="frm" method="post" action="/mvc/register/createPostAction" enctype="multipart/form-data">
						    
						  <div class="modal-dialog">
						      
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">새로운 메모추가</h5>
						        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      </div>
						      <div class="modal-body">
						          <div class="mb-3">
						           	<input class="form-control" type="text" name="postTitle" placeholder="제목을 입력하세요" aria-label="postTitle">
						          </div>
						          <div class="mb-3">      
						            <textarea name="description" class="form-control" id="message-text"></textarea>
						          </div>
						          <div class="mb-3">  
						    		<input type="file" name="file1" />
						    	  </div>
						      </div>
						      <div class="modal-footer">
						      	<input type="reset">
						        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						        <button type="submit" class="btn btn-primary">입력</button>
						 	 	<input type="hidden" name="tabId" value="${userSet.tabId }">
						 	 	<input type="hidden" name="userNum" value="${userSet.userNum }">
						      </div>
						    </div>
						  </div>
						 </form>
						</div>
<!-- 						카드투가 모달 끝부분 	 -->
                      
                    </div>
                    <form class="col-md-auto">
                      <div class="input-group input-group-round">
                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <i class="material-icons">filter_list</i>
                          </span>
                        </div>
                        <input type="search" class="form-control filter-list-input" placeholder="Filter tasks" aria-label="Filter Tasks">
                      </div>
                    </form>
                  </div>
                  <!--end of content list head-->
                  <div class="content-list-body">
                    <div class="card-list">
                      <div class="card-list-head">
                        <h6>진행중인 카드</h6>
                      </div>
                      <div class="card-list-body">
			 		<c:forEach items="${postList }" var="post" begin="0" >	
                        <div class="card card-task">
                          <div class="progress">
                            <div class="progress-bar bg-${post.progressBg }" role="progressbar" style="width: ${post.progress}%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                          <div class="card-body">
                            <div class="card-title">
                              <a data-bs-toggle="modal" data-bs-target="#modal-${post.id }">
                              <h6 data-filter-by="text">${post.postTitle }</h6>
                              </a>
                              <span class="text-small">${post.description}</span>
                            </div>
                            <div class="card-meta">

                              <ul class="avatars">
                                <li>
                                  <a data-toggle="tooltip" title="${post.imgName }">
                                    <img alt="${post.imgName }" class="avatar" src="/images/${post.imgName }" />
                                  </a>
                                </li>
                              </ul>

                              <div class="d-flex align-items-center">
                                <i class="material-icons">attach_file</i>
                                <span>${post.compareTime }일전</span>
                              </div>
                              
                              <div class="dropdown card-options">
                                <button class="btn-options" type="button"  data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  <i class="material-icons">more_vert</i>
                                </button>
                                 <ul class="dropdown-menu dropdown-menu-right">
			  	 					<li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modal-${post.id }update">수정</a></li>
						            <li><a class="dropdown-item" href="#">완료</a></li>
						            <li><hr class="dropdown-divider"></li>
						            <li><a class="dropdown-item text-danger" href="#">삭제</a></li> 
								    <!-- Dropdown menu links -->
						    	 </ul>
                              </div>
                            </div>
                          </div>
                        </div>
                        
                        		 <div class="modal fade" id="modal-${post.id }" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog">   
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel">카드</h5>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								         <div class="card">
								         <c:forEach items="${post.fileNameList}" var="fileName" begin="0" > 
								        	 <div class="mb-3"> 
											<img src="/images/${fileName.up_fileName }" class="card-img-top" alt="...">
											</div>
										</c:forEach>
										  <div class="card-body">
										    <h5 class="card-title">${post.postTitle }</h5>
										    <p class="card-text">${post.description }</p>
										 </div>
										</div>
										<c:forEach items="${post.replyList }" var="re" begin="0" > 
								          <div class="mb-3"> 
											    <div class="row">
												    <div class="col">
												      <small>${re.nick }</small>
												    </div>
												    <div class="col-6">
												      <a data-bs-toggle="modal" data-bs-target="#modal-${re.idN247_re }update"><small>${re.n247_reDes }</small></a>
												    </div>
												    <div class="col">
												      <small>${re.krCreate }</small>
												    </div>
												</div>
										   </div>
										   
							
											
										 </c:forEach> 
							     	 <form action="createReplyAction" id="myForm" class="form-inline" method="post" accept-charset="UTF-8">
									  <div class="input-group mb-3">
									   <input type="text" class="form-control" name="n247_reDes" placeholder="댓글을 입력해주세요" aria-label="Recipient's username" aria-describedby="button-addon2">
									   <button type="submit" class="btn btn-outline-secondary" type="button" id="button-addon2">댓글</button>
									   <input type="hidden" name="n247_reUsId" value="${userSet.userNum }">
									   <input type="hidden" name="n247_rePoId" value="${post.id }">
									   <input type="hidden" name="tabId" value="${selectedTabId }">
									  </div>
									 </form>
						         </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
								        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal-${post.id }update">수정</button>
								      </div>
								    </div>
								    
								  </div>
								</div>	 
<!-- 								카드관련 모달 시작부분  -->
                        		<div class="modal fade" id="modal-${post.id }update" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <form action="updatePostAction" id="myForm" class="form-inline" method="post" accept-charset="UTF-8">
								  <div class="modal-dialog">     
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel">카드 수정</h5>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								          <div class="mb-3">
								           	<input class="form-control" type="text" name="postTitle" placeholder="${post.postTitle }" aria-label="postTitle">
								          </div>
								          <div class="mb-3">      
								            <textarea name="description" class="form-control" id="message-text">${post.description }</textarea>
								          </div>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
								        <button type="submit" class="btn btn-primary">입력</button>
								        <input type="hidden" name="id" value="${post.id }">
								 	 	<input type="hidden" name="tabId" value="${post.tabId }">
								      </div>
								    </div>
								  </div>
								 </form>
								</div>	
<!-- 								카드관련 모달 끝부분 -->
             		 </c:forEach>          
                      </div>
                    </div>
                    
                    <div class="card-list">
                      <div class="card-list-head">
                        <h6>완료된 카드</h6>
                      </div>
                      <div class="card-list-body">
			 		<c:forEach items="${postList }" var="post" begin="0" >	
                        <div class="card card-task">
                        <div class="progress">
                            <div class="progress-bar bg-${post.progressBg }" role="progressbar" style="width: ${post.progress}%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                          <div class="card-body">
                            <div class="card-title">
                              <a href="#"><h6 data-filter-by="text">${post.postTitle }</h6></a>
                              <span class="text-small">${post.description}</span>
                            </div>
                            <div class="card-meta">
                              <ul class="avatars">
                                <li>
                                  <a data-toggle="tooltip" title="${post.imgName }">
                                    <img alt="${post.imgName }" class="avatar" src="/images/${post.imgName }" />
                                  </a>
                                </li>
                              </ul>
                             <div class="d-flex align-items-center">
                                <i class="material-icons">attach_file</i>
                                <span>${post.compareTime }일전</span>
                              </div>
                              <div class="dropdown card-options">
                                <button class="btn-options" type="button"  data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  <i class="material-icons">more_vert</i>
                                </button>
                                 <ul class="dropdown-menu dropdown-menu-right">
						            <li><a class="dropdown-item text-danger" href="#">완료 해제</a></li> 
								    <!-- Dropdown menu links -->
						    	 </ul>
                              </div>
                            </div>
                          </div>
                        </div>
                        
                                 <div class="modal fade" id="modal-${post.id }" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog">   
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel">카드</h5>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								         <div class="card">
								         <c:forEach items="${post.fileNameList}" var="fileName" begin="0" > 
								        	 <div class="mb-3"> 
											<img src="/images/${fileName.up_fileName }" class="card-img-top" alt="...">
											</div>
										</c:forEach>
										  <div class="card-body">
										    <h5 class="card-title">${post.postTitle }</h5>
										    <p class="card-text">${post.description }</p>
										 </div>
										</div>
										<c:forEach items="${post.replyList }" var="re" begin="0" > 
								          <div class="mb-3"> 
											    <div class="row">
												    <div class="col">
												      <small>${re.nick }</small>
												    </div>
												    <div class="col-6">
												      <a data-bs-toggle="modal" data-bs-target="#modal-${re.idN247_re }update"><small>${re.n247_reDes }</small></a>
												    </div>
												    <div class="col">
												      <small>${re.krCreate }</small>
												    </div>
												</div>
										   </div>
										   
							
											
										 </c:forEach> 
							     	 <form action="createReplyAction" id="myForm" class="form-inline" method="post" accept-charset="UTF-8">
									  <div class="input-group mb-3">
									   <input type="text" class="form-control" name="n247_reDes" placeholder="댓글을 입력해주세요" aria-label="Recipient's username" aria-describedby="button-addon2">
									   <button type="submit" class="btn btn-outline-secondary" type="button" id="button-addon2">댓글</button>
									   <input type="hidden" name="n247_reUsId" value="${userSet.userNum }">
									   <input type="hidden" name="n247_rePoId" value="${post.id }">
									   <input type="hidden" name="tabId" value="${selectedTabId }">
									  </div>
									 </form>
						         </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
								        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal-${post.id }update">수정</button>
								      </div>
								    </div>
								    
								  </div>
								</div>	 
<!-- 								카드관련 모달 시작부분  -->
                        		<div class="modal fade" id="modal-${post.id }update" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <form action="updatePostAction" id="myForm" class="form-inline" method="post" accept-charset="UTF-8">
								  <div class="modal-dialog">     
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel">카드 수정</h5>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								          <div class="mb-3">
								           	<input class="form-control" type="text" name="postTitle" placeholder="${post.postTitle }" aria-label="postTitle">
								          </div>
								          <div class="mb-3">      
								            <textarea name="description" class="form-control" id="message-text">${post.description }</textarea>
								          </div>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
								        <button type="submit" class="btn btn-primary">입력</button>
								        <input type="hidden" name="id" value="${post.id }">
								 	 	<input type="hidden" name="tabId" value="${post.tabId }">
								      </div>
								    </div>
								  </div>
								 </form>
								</div>	
<!-- 								카드관련 모달 끝부분 -->
             		 </c:forEach>          
                      </div>
                    </div>
                    <!--end of content list body-->
                  </div>
                    
                  </div>
                  <!--end of content list-->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
	
    <!-- Required vendor scripts (Do not remove) -->
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/popper.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>

    <!-- Optional Vendor Scripts (Remove the plugin script here and comment initializer script out of index.js if site does not use that feature) -->

    <!-- Autosize - resizes textarea inputs as user types -->
    <script type="text/javascript" src="assets/js/autosize.min.js"></script>
    <!-- Flatpickr (calendar/date/time picker UI) -->
    <script type="text/javascript" src="assets/js/flatpickr.min.js"></script>
    <!-- Prism - displays formatted code boxes -->
    <script type="text/javascript" src="assets/js/prism.js"></script>
    <!-- Shopify Draggable - drag, drop and sort items on page -->
    <script type="text/javascript" src="assets/js/draggable.bundle.legacy.js"></script>
    <script type="text/javascript" src="assets/js/swap-animation.js"></script>
    <!-- Dropzone - drag and drop files onto the page for uploading -->
    <script type="text/javascript" src="assets/js/dropzone.min.js"></script>
    <!-- List.js - filter list elements -->
    <script type="text/javascript" src="assets/js/list.min.js"></script>

    <!-- Required theme scripts (Do not remove) -->
    <script type="text/javascript" src="assets/js/theme.js"></script>

    <!-- This appears in the demo only - demonstrates different layouts -->
    <style type="text/css">
      .layout-switcher{ position: fixed; bottom: 0; left: 50%; transform: translateX(-50%) translateY(73px); color: #fff; transition: all .35s ease; background: #343a40; border-radius: .25rem .25rem 0 0; padding: .75rem; z-index: 999; }
            .layout-switcher:not(:hover){ opacity: .95; }
            .layout-switcher:not(:focus){ cursor: pointer; }
            .layout-switcher-head{ font-size: .75rem; font-weight: 600; text-transform: uppercase; }
            .layout-switcher-head i{ font-size: 1.25rem; transition: all .35s ease; }
            .layout-switcher-body{ transition: all .55s ease; opacity: 0; padding-top: .75rem; transform: translateY(24px); text-align: center; }
            .layout-switcher:focus{ opacity: 1; outline: none; transform: translateX(-50%) translateY(0); }
            .layout-switcher:focus .layout-switcher-head i{ transform: rotateZ(180deg); opacity: 0; }
            .layout-switcher:focus .layout-switcher-body{ opacity: 1; transform: translateY(0); }
            .layout-switcher-option{ width: 72px; padding: .25rem; border: 2px solid rgba(255,255,255,0); display: inline-block; border-radius: 4px; transition: all .35s ease; }
            .layout-switcher-option.active{ border-color: #007bff; }
            .layout-switcher-icon{ width: 100%; border-radius: 4px; }
            .layout-switcher-body:hover .layout-switcher-option:not(:hover){ opacity: .5; transform: scale(0.9); }
            @media all and (max-width: 990px){ .layout-switcher{ min-width: 250px; } }
            @media all and (max-width: 767px){ .layout-switcher{ display: none; } }
    </style>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

  </body>
</html>