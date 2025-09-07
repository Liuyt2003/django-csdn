from django.contrib import admin
from .models import BlogCatalogue,Blog,BlogComment
class BlogCatalogueAdmin(admin.ModelAdmin):
    list_display=['name']
class BlogAdmin(admin.ModelAdmin):
    list_display=['title','content','pub_time','category','author']
class BlogCommentAdmin(admin.ModelAdmin):
    list_display=['content','pub_time','author','blog']


# Register your models here.
admin.site.register(BlogCatalogue,BlogCatalogueAdmin)
admin.site.register(Blog,BlogAdmin)
admin.site.register(BlogComment,BlogCommentAdmin)
