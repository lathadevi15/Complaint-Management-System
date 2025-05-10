
from django.db import models

class Streg(models.Model):
    sid=models.CharField(max_length=12)
    Name=models.CharField(max_length=100)
    Phoneno=models.CharField(max_length=100)
    Email=models.CharField(max_length=100)
    pwd = models.CharField(max_length=100) 
    pepwd = models.CharField(max_length=100) 

    class Meta:
        db_table="streg"



class Athreg(models.Model):
    aid=models.CharField(max_length=12)
    name=models.CharField(max_length=100)
    phoneno=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    

    class Meta:
        db_table="athreg"





class compreg(models.Model):
    
    cid=models.IntegerField(max_length=100)
    name=models.CharField(max_length=100)
    hostel=models.CharField(max_length=100)
    issuetype=models.CharField(max_length=100)
    description=models.CharField(max_length=100)
    date_registered = models.DateTimeField(auto_now_add=True)

    class Meta:
        db_table="comreg"
    

class Response(models.Model):
    id=models.IntegerField(primary_key=True)
    hostel=models.CharField(max_length=100)
    issuetype=models.CharField(max_length=100)
    response=models.CharField(max_length=100)

    class Meta:
        db_table="response"


class empdetails(models.Model):
    id=models.IntegerField(primary_key=True)
    Name=models.CharField(max_length=100)
    Email=models.CharField(max_length=100)
    Address=models.CharField(max_length=100)

    class Meta:
        db_table="emp"


