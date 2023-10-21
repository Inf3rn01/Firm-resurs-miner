from src.server.database.db_manager import db_manager
import fastapi
from src.server.router import routers
import uvicorn
from src import settings
from fastapi.responses import RedirectResponse


db_manager.create_base('C:/Firm-resurs-miner/src/server/database/sql_scripts/create_script.sql', 'C:/Firm-resurs-miner/src/server/database/sql_scripts/fill.sql')


app = fastapi.FastAPI(title='Firm resurs miner', version='0.1 Alpha')

[app.include_router(router) for router in routers]


@app.router.get(path='/')
def index() -> RedirectResponse:
    return RedirectResponse('/docs')


if __name__ == "__main__":
    uvicorn.run(app="start_server:app", host=settings.HOST, port=settings.PORT, reload=True)