/*********************************************************************************/
/* this function is used to toggle the text display in my introduction           */
/*********************************************************************************/
	function toggle() {
		var ele = document.getElementById("toggleText");
		var text = document.getElementById("displayText");
		if(ele.style.display == "block") {
				ele.style.display = "none";
			text.innerHTML = "show skills";
		}
		else {
			ele.style.display = "block";
			text.innerHTML = "hide skills";
		}
	}
