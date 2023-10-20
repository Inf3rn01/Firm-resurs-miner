from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Warehouse(BaseModelModify):
    id_type: int
    id_resource: int
    address: str