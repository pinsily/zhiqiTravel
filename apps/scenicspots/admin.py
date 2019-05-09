from django.contrib import admin

# Register your models here.

from .models import *


class SpotsAdmin(admin.ModelAdmin):
    """
    景点后台管理
    """
    list_display = ['name', 'classification', 'phone', 'businessHours', 'price', 'add_times']
    # list_filter = ['price', 'classification', 'add_times']
    # search_fields = ['name', 'classification', 'phone', 'businessHours', 'price', 'add_times']
    # fields = ['name', 'content', 'image', 'picture', 'classification', 'phone', 'address', 'businessHours',
    # 'price', 'x', 'y', 'add_times']
    # model_icon = 'fa fa-bank'
    # style_fields = {"content": "ueditor"}


class GalleryAdmin(admin.ModelAdmin):
    list_display = ['spots', 'title', 'image', 'add_time']
    # model_icon = 'fa fa-picture-o'


class ActiveAdmin(admin.ModelAdmin):
    """
    活动后台管理
    """
    list_display = ['title', 'classification', 'phone', 'all_num', 'price', 'add_time']
    # list_filter = ['price', 'classification', 'add_time']
    #     # search_fields = ['title', 'classification', 'phone', 'all_num', 'price', 'add_time']
    #     # fields = ['title', 'introduce', 'image', 'classification', 'phone', 'go_time', 'address', 'price',
    #     #           'all_num', 'add_time']
    #     # model_icon = 'fa fa-clipboard'
    #     # style_fields = {"introduce": "ueditor"}


admin.site.register(Spots, SpotsAdmin)
admin.site.register(Gallery, GalleryAdmin)
admin.site.register(Active, ActiveAdmin)
