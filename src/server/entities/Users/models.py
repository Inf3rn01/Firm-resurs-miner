from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]

class Users(BaseModelModify):
    nickname: str
    login: str
    password: str
    number: str