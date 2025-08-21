from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'hexa/index.html')

def about(request):
    return render(request, 'hexa/about.html')
def contact(request):
    return render(request, 'hexa/contact.html')
def products(request):
    return render(request, 'hexa/products.html')
def single_product(request):
    return render(request, 'hexa/single-product.html')
