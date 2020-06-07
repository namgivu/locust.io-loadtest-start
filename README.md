# intro.ly
locust.io h2:Example code

00 a_python_file
```python
from locust import HttpUser, between, task

class WebsiteUser(HttpUser):
    wait_time = between(5, 15)
    
    def on_start(self):
        pass 
    
    @task
    def some_step(self):
        pass
```

01 run it 
```bash
pipenv install locust
pipenv run     locust -f a_python_file
```

# quickstart
ref. https://docs.locust.io/en/stable/quickstart.html

# easy wireup with docker
ref. https://docs.locust.io/en/stable/running-locust-docker.html#docker-compose
