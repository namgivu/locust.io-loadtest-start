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

# plug in selenium appium
we have automate script prepared [here](https://gitlab.com/namgivu/browserstack-start)
which runs simple google search on multiple desktop+mobile browser

we will run them under locust loadtest here to test 10 concurrent users

so to have locust run with headless webdriver coming from selenium and appium, 
we follow guide [here](https://stackoverflow.com/a/60609708/248616) which leads us to [realbrowserlocusts](https://github.com/nickboucart/realbrowserlocusts)
they use local browser here, how to make it working with browserstack ones?

a better approach will be 
00 wrapp those selenium+appium run into api endpoint aka xxium endpoint
01 locust will run loadtest against xxium endpoint
