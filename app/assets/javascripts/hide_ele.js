

function t(id) {
       var state = document.getElementById(id).style.display;
           if (state == 'block') {
               document.getElementById(id).style.display = 'none';
           } else {
               document.getElementById(id).style.display = 'block';
           }
       }

function toggle2(showHideDiv, switchTextDiv) {
}


function toggle3(contentDiv, controlDiv) {
}


function js_toggle2(showHideDiv) {}

function js_show2(showHideDiv) {}

	var ele = document.getElementById(showHideDiv);
	if(ele.style.display = "none") {
    		ele.style.display = "block";
  	}
	else {
			ele.style.display = "none";
	}
}

function js_show3(controlDiv) {
        if (controlDiv.constructor == Array) {
                for(i=0; i < controlDiv.length; i++) {
                     js_show2(controlDiv[i]);
                }
        }
        else {
               js_show2(controlDiv);
        }
}

function js_toggle3(controlDiv) {
}


function w(which_control,what_value)
{
		var txt = what_value;
		var tbox = document.getElementById(which_control);
		if (tbox)
		{
		tbox.value = txt;
		}
}
