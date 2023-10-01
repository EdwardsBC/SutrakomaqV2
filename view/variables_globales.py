# variables_globales.py
class GlobalVar:
    _instance = None
    secretaria = None
    id_secretaria = None
    
    def __new__(cls):
        if cls._instance is None:
            cls._instance = super(GlobalVar, cls).__new__(cls)
        return cls._instance
