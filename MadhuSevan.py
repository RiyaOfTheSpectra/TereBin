from os import popen

def get_broad_password():
    return popen("pass mail/broadspectrumtoothriya@gmail").read()

def get_outlook_password():
    return popen("pass mail/dhairyarathibhandari@outlook").read()
