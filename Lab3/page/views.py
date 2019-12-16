from sys import platform

from django.http import JsonResponse
from django.shortcuts import render
from datetime import datetime
import platform

def main(request):
    return render(request, 'page.html', {'parameter': "test"})


def health(request):
    response = {'date': datetime.today(), 'current_page': "http://127.0.0.1:8000/health/", 'server_info': {'system': platform.system(), 'version': platform.version(), 'node': platform.node(), 'processor': platform.processor()}, 'client_info': request.headers.get('User-Agent')}
    return JsonResponse(response)