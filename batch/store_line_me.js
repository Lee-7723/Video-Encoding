function sleep (time) {
  return new Promise((resolve) => setTimeout(resolve, time));
}

async function downloadFile(url, filename) {
    // 创建XMLHttpRequest对象
    var xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.responseType = 'blob';
  
    // 注册事件监听函数
    xhr.onload = function() {
      if (xhr.status === 200) {
        // 成功获取文件
        var blob = xhr.response;
        var fileName = filename;
  
        // 创建a标签，用于下载该文件
        var a = document.createElement('a');
        a.href = window.URL.createObjectURL(blob);
        a.download = fileName;
        a.style.display = 'none';
        document.body.appendChild(a);
        a.click();
  
        // 释放资源
        window.URL.revokeObjectURL(a.href);
        document.body.removeChild(a);
      } else {
        // 获取文件失败
        console.log('Failed to download file');
      }
    };
  
    // 发送请求
    xhr.send();
    await sleep(100);
}

async function getElements() {
  let all_ele = $(".animation-sticker, .popup_sound-sticker, .static-sticker")//animation-sticker  popup_sound-sticker  static-sticker
  let url_arr = []
  for(let i = 0; i<all_ele.length; i++) {
      let str = all_ele[i].getAttribute("data-preview")
      let json = JSON.parse(str)
      url_arr[i] = json.animationUrl + json.popupUrl //popupUrl   animationUrl   staticUrl
      if(url_arr[i] == '') url_arr[i] = json.staticUrl
      await downloadFile(url_arr[i], i+1)
  }
}

getElements()