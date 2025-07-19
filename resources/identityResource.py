from flask_restful import Resource
from flask import request

class IdentityGETResource(Resource):
    def get(self, id):
        return {"id": id, "payload": "Hello"}
