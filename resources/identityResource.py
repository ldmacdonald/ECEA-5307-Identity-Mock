from flask_restful import Resource
from flask import request
import json

class IdentityGETResource(Resource):
    def get(self, id):
        return {"id": id, "payload": "Hello"}
