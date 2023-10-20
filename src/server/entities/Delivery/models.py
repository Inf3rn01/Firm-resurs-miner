from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Delivery(BaseModelModify):
    id_order: int
    id_transport: int
    address_delivery: str