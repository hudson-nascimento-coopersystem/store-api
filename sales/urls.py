from rest_framework.routers import DefaultRouter

from django.conf.urls import include
from django.urls import path

from . import views


router = DefaultRouter()

router.register(r'products', views.ProductsView, basename='products')


urlpatterns = [
    path('', include(router.urls)),
]
