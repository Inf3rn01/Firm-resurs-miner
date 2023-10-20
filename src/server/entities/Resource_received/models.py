from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Resource_received(BaseModelModify):
    id_projects: int
    data: str
    resources: str
    quantity: int