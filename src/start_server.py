from server.database.db_manager import DBManager
import fastapi
from .Post import router as post_router

DBManager.create_base('../sql_scripts/create_script.sql')


app = fastapi.APIRouter()

app.include_router(post_router, prefix="/posts")