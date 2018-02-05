

JS保存为文件

var w=window.open("about:blank");

var json=JSON.stringify(dataModelService.getComputedData().result);

w.document.write(json);

w.document.execCommand('Saveas',false,'json.text');

 

 

 

var uri = 'data:text/csv;charset=utf-8,' +
encodeURIComponent(str.join(""));

var w=window.open("about:blank");

w.onload=function(){

var downloadLink =
w.document.createElement("a");

downloadLink.href = uri;

downloadLink.download =
"CandidateSite.csv";

w.document.body.appendChild(downloadLink);

downloadLink.click();

w.document.body.removeChild(downloadLink);

}

 

var json=JSON.stringify(data)

var uri = 'data:text/txt;charset=utf-8,' + encodeURIComponent(json);

var w=window.open("about:blank");

w.onload=function(){

var downloadLink =
w.document.createElement("a");

downloadLink.href = uri;

downloadLink.download = "json.txt";

w.document.body.appendChild(downloadLink);

downloadLink.click();

w.document.body.removeChild(downloadLink);

}

