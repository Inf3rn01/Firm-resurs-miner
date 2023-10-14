import sqlite3
import os
import sys

sys.path.append("C:\\firm-resurs-miner\src")

import settings

class DBManager:
    def __init__(self, base_path: str): #Функция, которая даёт возможность обращаться к базе данных в любом месте
        self.base_path = base_path

    def db_connect(self) -> tuple[sqlite3.Connection, sqlite3.Cursor]: #Функция подключения базы данных
        connection = sqlite3.connect(self.base_path, timeout=5)
        cursor = connection.cursor()
        return connection, cursor

    def check_base(self) -> bool: #Функция проверки базы данных
        return os.path.exists(self.base_path)

    def create_base(self, sql_file: str) -> None: #Функция создания базы данных (считывания с sql файла)
        connect, cursor = self.db_connect()
        if self.check_base():
            cursor.executescript(open(sql_file).read())
            connect.commit()
            connect.close()

    def execute(self, query: str, args: tuple[str] = (), many: bool = False): #Функция работы с базой данных
        connect, cursor = self.db_connect()
        try:
            res_ctx = cursor.execute(query, args)
            if many:
                res = res_ctx.fetchall()
            else:
                res = res_ctx.fetchone()
        except sqlite3.Error as error:
            print(error)
            connect.close()
            return {'error': error}
        connect.commit()
        connect.close()
        return res

db_manager = DBManager(default_path=settings.PATH)