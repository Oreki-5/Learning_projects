from typing import Optional

from fastapi import FastAPI
from pydantic import BaseModel


app=FastAPI()

# Data Model 
class Post(BaseModel):
    title:str
    content:str
    published: bool = True
    rating: Optional[int] = None


@app.get("/")
def read_root():
    return {"Hello": "test"}


@app.post("/posts")
def create_posts(new_post : Post):
    print(new_post.model_dump())
    return {"data":"new post"}
