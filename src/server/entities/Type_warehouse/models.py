from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Type_warehouse(BaseModelModify):
    title: str
