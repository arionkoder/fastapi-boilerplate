from pydantic import BaseSettings


class Settings(BaseSettings):
    a_secret: str

    class Config:
        env_file = ".env"


settings = Settings()
