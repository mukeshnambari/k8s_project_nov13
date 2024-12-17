#uvicorn main:app --reload
from fastapi import FastAPI, Request
from fastapi.templating import Jinja2Templates

# Create the FastAPI app
app = FastAPI()

# Specify the directory containing the templates
templates = Jinja2Templates(directory="/code/templates")

# Define the route
@app.get("/")
def form_post(request: Request):
    return templates.TemplateResponse(
        'form.html',
        context={'request': request}
    )
