function previewBeforeUpload(id){
    document.querySelector("#"+id).addEventListener("change",function(e){
      if(e.target.files.length == 0){
        return;
      }
      let file = e.target.files[0];
      let url = URL.createObjectURL(file);
      document.querySelector("#"+id+"-view div").innerText = file.name;
      document.querySelector("#"+id+"-img").src = url;
    });
  }
  previewBeforeUpload("slide-1");
  previewBeforeUpload("slide-2");
  previewBeforeUpload("slide-3");
  previewBeforeUpload("slide-4");
  previewBeforeUpload("main-1");
  previewBeforeUpload("main-2");
  previewBeforeUpload("main-3");
  previewBeforeUpload("main-4");
