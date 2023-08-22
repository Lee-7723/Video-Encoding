from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys

options = webdriver.ChromeOptions()

options.add_experimental_option('detach', True) #保持浏览器打开
browser = webdriver.Chrome(options=options)

browser.get('https://store.line.me/search/sticker/zh-Hant?q=capoo')

browser.find_element(By.XPATH, '//*[@id="spa-root"]/div/div/div[2]/section/ul/li[2]').click()
all_ele = browser.find_elements(By.CSS_SELECTOR, '.animation-sticker, .popup_sound-sticker, .static-sticker')
#print(all_ele)
#all_ele[0].click()

js = r"""
  let all_ele = $(".FnStickerPreviewItem")//animation-sticker  popup_sound-sticker  static-sticker
  let url_arr = []
  for(let i = 0; i<all_ele.length; i++) {
      let str = all_ele[i].getAttribute("data-preview")
      let json = JSON.parse(str)
      url_arr[i] = json.animationUrl + json.popupUrl //popupUrl   animationUrl   staticUrl
      if(url_arr[i] == '') url_arr[i] = json.staticUrl
  }
  return url_arr;
"""

url_arr = browser.execute_script(js)
print(url_arr)

js = r"""
  title = document.getElementsByClassName('mdCMN38Item01Ttl')[0].innerHTML;
  return title;
"""
title = browser.execute_script(js)
print(title)