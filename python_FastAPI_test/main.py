from typing import Optional

from fastapi import FastAPI
from pydantic import BaseModel


app=FastAPI()

list_of_posts =[]

# Data Model 
class Post(BaseModel):
    title:str
    content:str
    published: bool = True
    rating: Optional[int] = None


@app.get("/")
def read_root():
    return list_of_posts


@app.post("/posts")
def create_posts(new_post : Post):
    print(new_post.model_dump())
    list_of_posts.append(new_post)
    print(list_of_posts)
    return {"data":"new post"}
