from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]
class Post(BaseModelModify):
    title: str

class Staff(BaseModelModify):
    id_post: int
    FIO: str
    email: str
    number: str

class Projects(BaseModelModify):
    id_staff: int
    project_title: str
    mining_location: str

class Resource_received(BaseModelModify):
    id_projects: int
    data: str
    resources: str
    quantity: int

class Type_warehouse(BaseModelModify):
    title: str

class Warehouse(BaseModelModify):
    id_type: int
    id_resource: int
    address: str

class Users(BaseModelModify):
    nickname: str
    login: str
    password: str
    number: str

class Orders(BaseModelModify):
    id_warehouse: int
    id_user: int
    quantity_resources: int

class Type_transport(BaseModelModify):
    title: str

class Transport(BaseModelModify):
    id_type: int
    title: str

class Delivery(BaseModelModify):
    id_order: int
    id_transport: int
    address_delivery: str

class Capital(BaseModelModify):
    id_delivery: int
    id_project: int
    income: int
    expenses: int