from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Staff(BaseModelModify):
    id_post: int
    FIO: str
    email: str
    number: str