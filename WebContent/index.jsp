<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myapp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AngularJS and Restful</title>
<script type="text/javascript" src="js/angular.min.js"></script>
</head>
<body ng-controller="crytoController">
<table cellpadding="2" cellspacing="2" border="1">
	<tr>
		<th>name</th>
		<th>CurrentPrice</th>
		<!-- <th>BuyUptoPrice</th> -->
	</tr>
	<tr ng-repeat="crpto in cryptoList">
		<td>{{crpto.name}}</td>
		<td>{{crpto.price_usd}}</td>
		<!-- <td></td> -->
	</tr>
</table>
 <script type="text/javascript">
	var myapp = angular.module('myapp',[]);
	myapp.controller('crytoController',function($scope,$http){
		$http.get('https://api.coinmarketcap.com/v1/ticker/')
		.success(function(response){
			$scope.cryptoList = response;
		});
	});
 </script>

</body>
</html>