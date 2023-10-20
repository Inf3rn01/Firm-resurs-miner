from fastapi import APIRouter
import models

from typing import List

router = APIRouter()
@router.get('/')
def get_post() -> List[models.Post]:
    return({"id": 1, "title": "Директор"},
           {"id": 2, "title": "Заместитель директора"})

@router.get('/{post_id}')
def get_current_post(post_id: int) -> models.Post:
    return{"id": post_id, "name": f"Должность с id{post_id}"}

@router.post('/')
def add_post(new_post: int):
    return{"id": 7, "name":new_post.name}

@router.put('/{post_id}')
def up_post(post_id):
    return{}

@router.delete('/{post_id}')
def del_post(post_id: int) -> int:
    return 200