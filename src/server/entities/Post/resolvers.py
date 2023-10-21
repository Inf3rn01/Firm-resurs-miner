from src.server.entities.Post.models import Post
from src.server.database.db_manager import db_manager


def new(post: Post) -> dict:
    res = db_manager.execute(query="""INSERT INTO Post(id, title) 
                                       VALUES(?, ?) 
                                       RETURNING id""",
                              args=(post.id, post.title))

    res["result"] = None if not res["result"] else get(res["result"][0])["result"]

    return res


def get(post_id: int) -> dict:
    res = db_manager.execute(query="""SELECT * 
                                       FROM Post 
                                       WHERE id = ?""",
                             args=(post_id,))

    if not res["result"]:
        res["result"] = None
    else:
        Post( id=res["result"][0], title=res["result"][1])

    if res["result"] is None:
        res["msg"] = "Not found"
        res["code"] = 400
        res["error"] = True

    return res

def get_all() -> dict:
    res = db_manager.execute(query="""SELECT * 
                                       FROM Post""",
                              many=True)

    list_posts = []

    if res["result"]:
        for post in res["result"]:
            list_posts.append(Post(
                id=post[0],
                title=post[1],
            ))

    if len(list_posts) == 0:
        res["result"] = None
    else:
        res["result"] = list_posts

    if res["result"] is None:
        res["msg"] = "Not found"
        res["code"] = 400
        res["error"] = True

    return res


def update(post_id: int, new_data: Post) -> dict:
    res = db_manager.execute(query="""UPDATE Post
                                       SET title = ? 
                                       WHERE ID = ?
                                       RETURNING ID""",
                             args=(new_data.title, post_id))

    res["result"] = get(post_id=post_id)["result"]

    res["msg"] = "Changed"

    if res["result"] is None:
        res["msg"] = "Not found"
        res["code"] = 400
        res["error"] = True

    return res


def delete(post_id: int) -> dict:
    check_post = get(post_id=post_id)["result"]

    res = db_manager.execute(query="""DELETE FROM Post WHERE ID = ? """,
                             args=(post_id,))

    if check_post is None:
        res["msg"] = "Not found"
        res["code"] = 400
        res["error"] = True

    return res