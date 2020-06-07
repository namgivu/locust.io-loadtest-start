from locust import HttpUser, between, task


class WebsiteUser(HttpUser):
    wait_time = between(5, 15)

    def on_start(self):
        pass

    @task
    def some_step(self):
        self.client.get("/")

    #TODO how to make the client failed on purpose; this not working > raise Exception('FAIL ON PURPOSE')
