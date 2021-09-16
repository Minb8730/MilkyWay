<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  
    <section id="wrap" class="clearfix">
        <div id="leftWrap">
           <div class="contentList">
             
				<canvas id="bar-chart" width="300" height="230"></canvas>
         </div>
       </div>
      
        <div id="rightWrap">
            <div>
            	<h2 style="margin-bottom : 20px; color : #3498db">나를 위한 트렌드</h2>
	            	<c:forEach var="hash" items="${hashList }">
	            		<div class="hashDiv" onclick="location.href='${cpath}/${hash.hashtag }'">
	            			<p style="color:blue"># ${hash.hashtag }</p>
	            			<p><fmt:formatNumber value="${hash.hashCnt }" pattern="###,###,###" /> 테그</p>
	            		</div>
	            	</c:forEach>
	            	<div class="hashDiv" onclick="" style="display: block">
						<p><a href="${cpath }/hashtagTrend">더보기</a></p>	            	
	            	</div>
            </div>
        </div>
    </section>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script> 
   
   	<script>
   	console.log(${chartList})
 	
   	const labels2 = ["Africa", "Asia", "Europe", "Latin America", "North America"]
   	const data2 = [2478,5267,734,784,433]
 	
 	new Chart(document.getElementById("bar-chart"), {
   	    type: 'bar',
   	    data: {
   	      labels: labels2,
   	      datasets: [
   	        {
   	          label: "hashtag 횟수",
   	          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
   	          data: data2
   	        }
   	      ]
   	    },
   	    options: {
   	      legend: { display: false },
   	      title: {
   	        display: true,
   	        text: 'hashtag 검색 순위'
   	      }
   	    }
   	});
   	</script>
    </body>
    </html>