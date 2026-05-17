from locust import HttpUser, task, between


class CoffeeShopUser(HttpUser):
    wait_time = between(1, 3)

    @task(3)
    def visit_home(self):
        self.client.get("/")

    @task(2)
    def get_products(self):
        self.client.get("/api/products")

    @task(1)
    def get_single_product(self):
        self.client.get("/api/products/1")
