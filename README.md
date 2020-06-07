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

01 serve web app at 8089
```bash
# required at empty-Pipfile only
pipenv install locust

# with pre-prepared Pipfile
pipenv sync
    pipenv run locust -f a_python_file
    
    # now can open localhost:8089 to see the running locust web app
        : create new run numberofuser=10 hatchrate_per_second=2 host=https://google.com  # must provide ful url with https:// prefix
            should_see='
            nice charts
            chart1   totalrequest/sec   green/red       pass/fail 
            chart2   responsetime/sec   green/yellow    median/95%ile
            '
            #TODO what is "median response time" in green
            #TODO what is "95% percentile" in yellow
```

# quickstart
ref. https://docs.locust.io/en/stable/quickstart.html

# easy wireup with docker
ref. https://docs.locust.io/en/stable/running-locust-docker.html#docker-compose
