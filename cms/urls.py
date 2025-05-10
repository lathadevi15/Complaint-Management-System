"""
URL configuration for cms project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include
from complaintapp import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('complaintapp/',include('complaintapp.urls')),
    path('index/',views.index),
    path('stulogin/',views.stulogin),
    path('athlogin/',views.athlogin),
    path('adlogin/',views.adlogin),
    path('comreg/',views.comreg),
    path('stpage/',views.stpage),
    path('stsignup/',views.stsignup),
    path('athsignup/',views.athsignup),
    path('adsignup/',views.adsignup),
    path('cmplist/',views.cmplist),
    path('athpage/',views.athpage),
    path('stcomlist/',views.stcomlist),
    path('respons/',views.response),
    path('contact/',views.contact),
    path('about/',views.about),
    path('stresponses/',views.stresponses),
    path('adpage/',views.adpage),
    path('athmainpg/',views.athmainpg),
    path('athresponse/',views.athresponse),
    path('adcmplist/',views.adcmplist),
    path('adstlist/',views.adstlist),
    path('adathlist/',views.adathlist),
    path('adresponses/',views.adresponses),
    path('adres/',views.adres),
    path('emp/',views.emp),
    path('deleteresponse/<int:id>',views.deleteresponse),
    path('editresponse/<int:id>/',views.editresponse),
    path('updateresponse/<int:id>/',views.updateresponse),
    path('athabout/',views.athabout),
    path('athinst/',views.athinst),
    
]
