from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Orders(BaseModelModify):
    id_warehouse: int
    id_user: int
    quantity_resources: int