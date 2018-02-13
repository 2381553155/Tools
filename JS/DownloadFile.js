var _downloadFile = function (downloadUrl) {
   var id = "aDownloadFileFromDataCenter";
   var a = document.getElementById(id);
   if (!a) {
      a = document.createElement("a");
      a.setAttribute("id", id);  
      a.style.display = "none";
      document.body.appendChild(a);
   }
   a.href = downloadUrl;
   a.click(); 
}
