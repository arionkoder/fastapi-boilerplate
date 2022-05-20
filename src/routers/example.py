import logging

from fastapi import APIRouter

from src.models.request import ExampleRequest
from src.models.response import ExampleResponse

router = APIRouter(
    prefix="/example",
    tags=["example"],
    responses={404: {"description": "Not found"}},
)


@router.get("/example", response_model=ExampleResponse)
async def example(request: ExampleRequest):
    # Temporary logging message to test that general logs are reaching DataDog
    logging.info('Getting example request...')

    augend = request.augend
    addend = request.addend
    return {
        "sum": augend + addend,
    }
