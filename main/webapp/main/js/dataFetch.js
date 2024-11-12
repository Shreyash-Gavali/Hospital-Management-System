/**
 * 
 */

const data = fetch("Demo.jsp").then((response)=>{
	response.JSON();
	console.log(response.JSON());
}).error((error)=>{
	
})