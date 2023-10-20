from typing import Optional
from pydantic import BaseModel

class BaseModelModify(BaseModel):
    id: Optional[int]
class Projects(BaseModelModify):
    id_staff: int
    project_title: str
    mining_location: str