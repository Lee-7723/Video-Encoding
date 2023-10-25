# coding=utf-8
import json
import tkinter as tk
import time
import random
import lxml.html
from lxml import etree
from imap_tools import MailBox, AND
import smtplib
import requests
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

user_account = 'lijingze@chinamobile.com'
passwd = '2DEE86E156D28325E800'

kvm_keys = ['vcpu', 'memory', 'system_disk', 'data_disk', 'amount', 'comment', '']
baremetal_keys = ['class', 'amount', 'comment', '']
storage_keys = ['class', 'amount', 'comment', '']

def get_data(class_name: str, keys: list) -> list:
    trs = html.xpath(f".//tr[@class='{class_name}']")
    result = []
    for tr in trs:
        tds = tr.xpath(".//td")
        data_tr = {}
        i = 0
        for td in tds:
            ctt = td.xpath(".//span")
            string = ''
            for item in ctt:
                string += item.text
            data_tr[keys[i]] = string
            i += 1
        result.append(data_tr)
    return result

def get_sum_data(class_name: str) -> str:
    sum_tr = html.xpath(f".//tr[@class='{class_name}']")
    result = ''
    for item in sum_tr:
        spans = item.xpath(".//span")
        for span in spans:
            result += span.text
    return result


root = tk.Tk()
root.title('Progress')
root.geometry('300x150')
lable1 = tk.Label(root, text='正在登录邮箱...', font='16', pady=50)
lable1.pack()

def update0():
    lable1.config(text='正在查找邮件...')
    global msg, sender, html
    with MailBox('imap.chinamobile.com', port=993).login(user_account, passwd, initial_folder='INBOX') as mailbox:
        msg = list(mailbox.fetch(AND(subject='test_email'), charset='utf8'))[-1]
        sender = msg.from_
    html = etree.HTML(msg.html,etree.HTMLParser())

    root.after(random.randrange(800, 3000), update1)

def update1():
    lable1.config(text='正在获取云主机数据...')
    global kvm_data
    kvm_data = {'kvms':get_data(class_name='kvm', keys=kvm_keys), 
            'kvm_sum': get_sum_data(class_name='kvm_sum')}
    root.after(random.randrange(800, 3000), update2)

def update2():
    lable1.config(text='正在获取裸金属服务器数据...')
    global baremetal_data
    baremetal_data = {'baremetals': get_data(class_name='baremetal', keys=baremetal_keys), 
                'baremetal_sum': get_sum_data(class_name='baremetal_sum')}
    root.after(random.randrange(800, 3000), update3)

def update3():
    lable1.config(text='正在获取存储资源数据...')
    global storage_data
    storage_data = {'storages': get_data(class_name='storage', keys=storage_keys)}
    root.after(random.randrange(800, 3000), update4)

def update4():
    lable1.config(text='数据整理完成，正在请求后端...')
    global post_json, system_name, budget
    system_name = html.xpath(".//span[@class='system_name']")[0].text
    budget = html.xpath(".//span[@class='budget']")[0].text
    post_json = {'kvm_data': kvm_data, 'baremetal_data': baremetal_data, 'storage_data': storage_data, 'system_name': system_name, 'budget': budget}
    post_json = json.dumps(post_json, ensure_ascii=False)
    with open(r'F:\temp\test.json', mode='w', encoding='utf-8') as f:
        f.write(post_json)
    root.after(random.randrange(800, 3000), update5)

def update5():
    lable1.config(text='正在发送邮件...')
    # file = requests.get(r'http://10.2.192.115:8000/%5B%E8%88%9E%E5%A4%A7%E5%B8%88%E8%88%9E%E8%B9%88%E5%B7%A5%E4%BD%9C%E5%AE%A4%5D%20%E5%B9%B4%E4%BC%9A%E8%88%9E%E8%B9%88%E3%80%8A%E5%A4%B1%E6%81%8B%E9%98%B5%E7%BA%BF%E8%81%94%E7%9B%9F%E3%80%8B%E5%AE%8C%E6%95%B4%E7%89%88-BV1QV411b7CT.mp4').content
    send_server = smtplib.SMTP_SSL(host='smtp.chinamobile.com', port=465)
    send_server.login(user_account, passwd)
    msg = MIMEMultipart()
    msg['From'] = f'大模型 <{user_account}>'
    msg['To'] = user_account
    msg['Subject'] = 'IT云资源申请反馈'
    # send_mail_content = post_json
    send_mail_content = """
    <p>
    1.河北鹿泉资源池库存总量云主机CPU138524核，内存694478G，裸金属2740台，块存储1006691G，文件存储21961782G,满足要求，可优先在pod2分配。 pod3云主机cpu34378核，内存225950G，块存储164107G，文件存储1392278G建议选择pod3分配云主机，块存储及文件存储，pod8可分配B3裸金属61台，建议选择pod8分配裸金属。
    </p>
    <p>
    2.WEB服务器，redis集群及数据库服务器满足集群数量要求，可进行分配，对外接口机数量建议增加为2台，13台B3裸金属可满足信令数据接入、存储、高速各类模型计算、结果存储、数据回溯要求，建议分配。
    </p>
    <br>
    <strong>以上信息为大模型提供的建议，请谨慎参考</strong>
    """
    msg.attach(MIMEText(send_mail_content, 'html', 'utf-8'))
    # attachment = MIMEText(file, 'base64', 'utf-8')
    # # attachment['Content-Type'] = 'application/octet-stream'
    # # attachment['Content-Type'] = 'video/mp4'
    # attachment['Content-Disposition'] = 'attachment;filename="dance.mp4"'
    # msg.attach(attachment)

    send_server.sendmail(user_account, [user_account], msg.as_string())
    root.after(random.randrange(1000, 3000), update6)

def update6():
    lable1.config(text='邮件发送成功')

root.after(random.randrange(800, 3000), update0)
root.mainloop()
