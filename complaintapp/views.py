from django.shortcuts import render
from django.db import connection
from django.contrib import messages
from complaintapp.models import streg
from complaintapp.models import athreg
from complaintapp.models import response
from complaintapp.models import empdetails


from django.http import HttpResponse
import mysql.connector as sql
nm=''
phno=''
em=''
pwd=''
repwd=''
id=''
des=''
iss=''
hs=''
aid=''
res=''
img=''
comid=''

# Create your views here.
def comreg(request):
    global id,nm,hs,iss,des,aid,img
    if request.method=="POST":
        m=sql.connect(host= "localhost",user="lathadevi0007@gmail.com",password="latha",database='complaintdb')
        cursor=m.cursor()
        d=request.POST
        for key,value in d.items():
            if key=="aid":
                aid=value
            if key=="id":
                id=value
            if key=="name":
                nm=value
            if key=="hostel":
                hs=value       
            if key=="issuetype":
                iss=value
            if key=="description":
                des=value  
            if key=="imageproof":
                img=value   
               
        c="insert into comreg Values('{}','{}','{}','{}','{}','{}','{}' )".format(aid,id,nm,hs,iss,des,img)
        cursor.execute(c)
        m.commit()
        messages.success(request,'Complaint has been registered successfully')
    return render(request,'comreg.html',{})


def index(request):
    return render(request,'index.html')
   
def stsignup(request):
    global id,nm,phno,em,pwd,repwd
    if request.method=="POST":
        m=sql.connect(host= "localhost",user="lathadevi0007@gmail.com",password="latha",database='complaintdb')
        cursor=m.cursor()
        d=request.POST
        for key,value in d.items():
            if key=="id":
                id=value
            if key=="name":
                nm=value
            if key=="phno":
                phno=value
            if key=="email":
                em=value
            if key=="psw":
                pwd=value
            if key=="psw-repeat":
                repwd=value
           
            
        c="insert into streg Values('{}','{}','{}','{}','{}','{}')".format(id,nm,phno,em,pwd,repwd)
        cursor.execute(c)
        m.commit()
        messages.success(request,'you have registered successfully')
    return render(request,'stsignup.html')

def stulogin(request):
    global em,pwd
    if request.method=="POST":
        m=sql.connect(host= "localhost",user="lathadevi0007@gmail.com",password="latha",database='complaintdb')
        cursor=m.cursor()
        d=request.POST
        for key,value in d.items():
            if key=="email":
                em=value
            if key=="psw":
                pwd=value
        
        c="select * from streg where email ='{}' and pwd ='{}' ".format(em,pwd)
        cursor.execute(c)
        t=tuple(cursor.fetchall())
        if t==():
            return render(request,'error.html')
        else:
            return render(request,'stpage.html')
    
    return render(request,'stlogin.html')

def athlogin(request):
    global em,pwd
    if request.method=="POST":
        m=sql.connect(host= "localhost",user="lathadevi0007@gmail.com",password="latha",database='complaintdb')
        cursor=m.cursor()
        d=request.POST
        for key,value in d.items():
            if key=="email":
                em=value
            if key=="psw":
                pwd=value
        
        c="select * from athreg where Email ='{}' and pwd ='{}' ".format(em,pwd)
        cursor.execute(c)
        t=tuple(cursor.fetchall())
        if t==():
            return render(request,'error.html')
        else:
            return render(request,'athmainpg.html')
        
    return render(request,'authlogin.html')

def adlogin(request):
    global em,pwd
    if request.method=="POST":
        m=sql.connect(host= "localhost",user="lathadevi0007@gmail.com",password="latha",database='complaintdb')
        cursor=m.cursor()
        d=request.POST
        for key,value in d.items():
            if key=="email":
                em=value
            if key=="psw":
                pwd=value
        
        c="select * from adreg where email ='{}' and pwd ='{}' ".format(em,pwd)
        cursor.execute(c)
        t=tuple(cursor.fetchall())
        if t==():
            return render(request,'error.html')
        else:
            return render(request,'adpage.html')
    
    return render(request,'adlogin.html')


def stpage(request):
    return render(request,'stpage.html')

def adstlist(request):
    cursor=connection.cursor()
    cursor.execute("call stregr()")
    results=cursor.fetchall()
    return render(request,'adstlist.html',{'streg':results})




def adathlist(request):
    cursor=connection.cursor()
    cursor.execute("call athregr()")
    results=cursor.fetchall()
    return render(request,'adathlist.html',{'athreg':results})




def athsignup(request):
    global id,nm,phno,em,pwd,repwd
    if request.method=="POST":
        m=sql.connect(host= "localhost",user="lathadevi0007@gmail.com",password="latha",database='complaintdb')
        cursor=m.cursor()
        d=request.POST
        for key,value in d.items():
            if key=="id":
                id=value
            if key=="name":
                nm=value
            if key=="phno":
                phno=value
            if key=="email":
                em=value
            if key=="psw":
                pwd=value
            if key=="psw-repeat":
                repwd=value
           
            
        c="insert into athreg Values('{}','{}','{}','{}','{}','{}')".format(id,nm,phno,em,pwd,repwd)
        cursor.execute(c)
        m.commit()
        messages.success(request,'you have registered successfully')
    return render(request,'athsignup.html')

def adsignup(request):
    global id,nm,phno,em,pwd,repwd
    if request.method=="POST":
        m=sql.connect(host= "localhost",user="lathadevi0007@gmail.com",password="latha",database='complaintdb')
        cursor=m.cursor()
        d=request.POST
        for key,value in d.items():
            if key=="id":
                id=value
            if key=="name":
                nm=value
            if key=="phno":
                phno=value
            if key=="email":
                em=value
            if key=="psw":
                pwd=value
            if key=="psw-repeat":
                repwd=value
           
            
        c="insert into adreg Values('{}','{}','{}','{}','{}','{}')".format(id,nm,phno,em,pwd,repwd)
        cursor.execute(c)
        m.commit()
        messages.success(request,'you have registered successfully')
    return render(request,'adsignup.html')

def cmplist(request):
    cursor=connection.cursor()
    cursor.execute("call compreg()")
    results=cursor.fetchall()
    return render(request,'cmplist.html',{'comreg':results})

def athpage(request):
    cursor=connection.cursor()
    cursor.execute("call compreg()")
    results=cursor.fetchall()
    return render(request,'athpage.html',{'comreg':results})
def index(request):
    return render(request,'index.html')


def contact(request):
    return render(request,'contact.html')

def adres(request):
    return render(request,'adres.html')
    
def emp(request):
    employee=empdetails.objects.all()
    return render(request,'emp.html',{"data":employee}) 


def delete(request,id):
    employee=empdetails.objects.get(id=id)
    employee.delete()
    return redirect("/emp")

def stresponses(request):
    return render(request,'stresponses.html')

def athresponse(request):
    cursor=connection.cursor()
    cursor.execute("call response()")
    results=cursor.fetchall()
    return render(request,'athresponse.html',{'response':results})


def athmainpg(request):
    return render(request,'athmainpg.html')



def about(request):
    return render(request,'about.html')



def adcmplist(request):
    cursor=connection.cursor()
    cursor.execute("call compreg()")
    results=cursor.fetchall()
    return render(request,'adcmplist.html',{'comreg':results})
    


def adresponses(request):
    cursor=connection.cursor()
    cursor.execute("call response()")
    results=cursor.fetchall()
    return render(request,'adresponses.html',{'response':results})

def adpage(request):
    return render(request,'adpage.html')
   

def stresponses(request):
    cursor=connection.cursor()
    cursor.execute("call response()")
    results=cursor.fetchall()
    return render(request,'stresponses.html',{'response':results})

def response(request):
    global comid,hs,iss,res
    if request.method=="POST":
        m=sql.connect(host= "localhost",user="lathadevi0007@gmail.com",password="latha",database='complaintdb')
        cursor=m.cursor()
        d=request.POST
        for key,value in d.items():
            if key=="comid":
                comid=value
            if key=="hostel":
                hs=value       
            if key=="issuetype":
                iss=value
            if key=="res":
                res=value   
               
        c="insert into response Values('{}','{}','{}','{}')".format(comid,hs,iss,res)
        cursor.execute(c)
        m.commit()
        messages.success(request,'Response has submitted successfully')
    return render(request,'response.html')
   

def stcomlist(request):
    cursor=connection.cursor()
    cursor.execute("call compreg()")
    results=cursor.fetchall()
    return render(request,'stcomlist.html',{'comreg':results})

