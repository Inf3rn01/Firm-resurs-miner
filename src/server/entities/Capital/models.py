from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Capital(BaseModelModify):
    id_delivery: int
    id_project: int
    income: int
    expenses: int