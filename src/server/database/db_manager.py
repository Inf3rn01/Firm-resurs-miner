import sqlite3
import os
import src.settings


class DBManager:
    def __init__(self, default_path: str) -> None:
        self.default_path = default_path

    def connect_to_db(self) -> tuple[sqlite3.Connection, sqlite3.Cursor]:
        conn = sqlite3.connect(self.default_path)
        cur = conn.cursor()
        return conn, cur

    def check_base(self) -> bool:
        return os.path.exists(self.default_path)

    def execute(self, query: str, args: tuple = (), many: bool = False) -> dict:
        conn, cur = self.connect_to_db()
        try:
            res = cur.execute(query, args)
            if many:
                result = res.fetchall()
            else:
                result = res.fetchone()
        except sqlite3.Error as err:
            conn.close()
            return {"code": 400, "msg": str(err), "result": None}
        conn.commit()
        conn.close()
        return {"code": 200, "msg": "Successfully", "result": result}

    def create_base(self, script_path_tables: str, script_path_data: str) -> None | dict:
        conn, cur = self.connect_to_db()
        if self.check_base():
            try:
                [cur.executescript(open(script_path).read()) for script_path in [script_path_tables, script_path_data]]
                conn.commit()
                conn.close()
                return {"code": 200, "msg": "Successfully", "error": False, "result": None}
            except sqlite3.Error as err:
                conn.close()
                return {"code": 400, "msg": str(err), "error": True, "result": None}


db_manager = DBManager(default_path=src.settings.PATH)
