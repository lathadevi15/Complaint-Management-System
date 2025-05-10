from django.shortcuts import redirect,render
from django.db import connection
from django.contrib import messages
from complaintapp.models import Streg
from complaintapp.models import Athreg
from complaintapp.models import Response
from complaintapp.models import empdetails
from complaintapp.models import compreg


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
from django.shortcuts import render
from .models import compreg  # Ensure this import matches your model's actual name

def comreg(request):
    if request.method == 'POST':
        vid = request.POST.get('cid')
        vname = request.POST.get('name')
        vhostel = request.POST.get('hostel')
        vissuetype = request.POST.get('issuetype')
        vdesc = request.POST.get('description')

        if vid and vname and vhostel and vissuetype and vdesc:
           us= compreg(cid=vid, name=vname, hostel=vhostel, issuetype=vissuetype, description=vdesc)
           us.save()
            # Optionally, you can add a success message here
        else:
            # Handle the case where some form data is missing
            # For example, you can add an error message to the context
            return render(request, 'comreg.html', {'error': 'All fields are required.'})

    # For GET requests or if the form submission is incomplete, render the form template
    return render(request, 'comreg.html')


def stcomlist(request):
    comreg = compreg.objects.all().order_by('-date_registered') 
    return render(request,'stcomlist.html',{'comregt':comreg})


def adcmplist(request):
    comreg = compreg.objects.all().order_by('-date_registered') 
    return render(request,'adcmplist.html',{'comregt':comreg})
    


def respons(request):
    if request.method == POST:
        rid = request.POST.get('comid')
        rhostel = request.POST.get('hostel')
        rissue = request.POST.get('issuetype')
        response = request.POST.get('res')
        if rid and rhostel and rissue and response:
            rs = Response(comid = rid, hostel = rhostel, issuetype = rissue, response= response)
            rs.save()
        else:
            return render(request, 'comreg.html', {'error': 'All fields are required.'})
    return render(request,'response.html')
   

    
def stresponses(request):
    responses  = Response.objects.all()
    return render(request,'stresponses.html',{'dresponse':responses})

    
def adstlist(request):
   students = Streg.objects.all()
   return render(request,'adstlist.html',{'dresponse':students})

def adathlist(request):
    authorities = Athreg.objects.all()
    return render(request,'adathlist.html',{'dresponse':authorities})






def athresponse(request):
    responses  = Response.objects.all()
    return render(request,'athresponse.html',{'dresponse':responses})

def adresponses(request):
    responses  = Response.objects.all()
    return render(request,'adresponses.html',{'dresponse':responses})

def deleteresponse(request, id):
    us = compreg.objects.get(id = id)
    us.delete()
    return redirect("/adcmplist")

def editresponse(request, id):
    responses = Response.objects.get(id = id)
    return render(request,"editresponse.html",{'dresponse':responses})

def updateresponse(request, id):
    newres = request.POST['res']
    responses = Response.objects.get(id = id)
    responses.response = newres
    responses.save()
    return redirect("/athresponse")


def stsignup(request):
    if request.method == "POST":
        sid = request.POST.get("id")
        name = request.POST.get("name")
        phno = request.POST.get("phno")
        email = request.POST.get("email")
        password = request.POST.get("psw")
        confirm_password = request.POST.get("psw-repeat")

        # Check length limits manually
        if len(sid) > 12:
            messages.error(request, "Student ID must be at most 12 characters.")
            return redirect('stsignup')

        if len(phno) > 100:
            messages.error(request, "Phone number is too long.")
            return redirect('stsignup')

        if password != confirm_password:
            messages.error(request, "Passwords do not match.")
            return redirect('stsignup')

        if Streg.objects.filter(Email=email).exists():
            messages.error(request, "Email already registered.")
            return redirect('stsignup')

        if Streg.objects.filter(sid=sid).exists():
            messages.error(request, "Student ID already exists.")
            return redirect('stsignup')

        student = Streg(sid=sid, Name=name, Phoneno=phno, Email=email, pwd=password)
        student.save()
        messages.success(request, "You have registered successfully.")


    return render(request, 'stsignup.html')



def stulogin(request):
    if request.method == "POST":
        email = request.POST.get("email")
        password = request.POST.get("psw")

        try:
            student = Streg.objects.get(Email=email)
            if student.pwd == password:  # Compare plain text (or use hashing if applied)
                return render(request, 'stpage.html', {'student': student})
            else:
                messages.error(request, "Incorrect password.")
                return redirect('stulogin')
        except Streg.DoesNotExist:
            messages.error(request, "Invalid email.")
            return redirect('stulogin')

    return render(request, 'stlogin.html')


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

def athinst(request):
    return render(request,'athinst.html')

def athsignup(request):
    if request.method == "POST":
        sid = request.POST.get("id")
        name = request.POST.get("name")
        phno = request.POST.get("phno")
        email = request.POST.get("email")
        password = request.POST.get("psw")
        confirm_password = request.POST.get("psw-repeat")

        # Check length limits manually
        if len(sid) > 12:
            messages.error(request, "ID must be at most 12 characters.")
            return redirect('athsignup')

        if len(phno) > 100:
            messages.error(request, "Phone number is too long.")
            return redirect('athsignup')

        if password != confirm_password:
            messages.error(request, "Passwords do not match.")
            return redirect('athsignup')

        if Streg.objects.filter(Email=email).exists():
            messages.error(request, "Email already registered.")
            return redirect('athsignup')

        if Streg.objects.filter(sid=sid).exists():
            messages.error(request, "Student ID already exists.")
            return redirect('athsignup')

        student = Streg(aid=sid, Name=name, Phoneno=phno, Email=email, pwd=password)
        student.save()
        messages.success(request, "You have registered successfully.")


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
        messages.success(request,'Registration successful')
    return render(request,'adsignup.html')

def cmplist(request):
    cursor=connection.cursor()
    cursor.execute("call compreg()")
    results=cursor.fetchall()
    return render(request,'cmplist.html',{'comreg':results})

def athpage(request):
    comreg = compreg.objects.all().order_by('-date_registered') 
    return render(request,'athpage.html',{'comregt':comreg})


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


def athmainpg(request):
    return render(request,'athmainpg.html')

def athabout(request):
    return render(request,'athabout.html')

def about(request):
    return render(request,'about.html')



def adpage(request):
    return render(request,'adpage.html')
   

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
   
