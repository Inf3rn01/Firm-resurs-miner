from fastapi import APIRouter
from .models import Post
from src.server.entities.Post import resolvers

router = APIRouter(prefix='/post', tags=["Post"])


@router.get('/get/{post_id}')
def get(post_id) -> dict:
    return resolvers.get(post_id=post_id)


@router.get('/get')
def get_all() -> dict:
    return resolvers.get_all()


@router.post('/new')
def create(new_post: Post) -> dict:
    return resolvers.new(post=new_post)


@router.put('/update/{post_id}')
def update_post(post_id: int, new_data: Post) -> dict:
    return resolvers.update(post_id=post_id, new_data=new_data)


@router.delete('/delete/{post_id}')
def del_post(post_id: int) -> dict:
    return resolvers.delete(post_id=post_id)
