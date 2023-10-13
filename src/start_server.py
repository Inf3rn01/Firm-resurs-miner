from server.database.db_manager import DBManager
from server.router import routers
import fastapi

DBManager.create_base('../sql_scripts/create_script.sql')


app = fastapi.APIRouter()

[app.include_router(router) for router in routers]