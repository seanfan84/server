# import os
# import sys
from sqlalchemy import (Column, ForeignKey, Integer, String,
                        UniqueConstraint)
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy import create_engine

Base = declarative_base()


# Is user reserved in PSQL for access control?
# Test: try change name to users
# Restult: To be tested

class Users(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    username = Column(String(80), nullable=False)
    email = Column(String(250), nullable=False)
    password = Column(String(100), nullable=False)
    picture = Column(String(250), nullable=False)

    @property
    def serialize(self):
        # return object data in easily serializeable format
        return {
            'id': self.id,
            'username': self.username,
            'email': self.email,
            'password': self.password,
            'picture': self.picture
        }


class Category(Base):
    __tablename__ = 'category'

    id = Column(Integer, primary_key=True)
    name = Column(String(250), nullable=False)
    UniqueConstraint(name)

    @property
    def serialize(self):
        # return object data in easily serializeable format
        return {
            'id': self.id,
            'name': self.name,
        }


class Product(Base):
    __tablename__ = 'product'
    id = Column(Integer, primary_key=True)
    name = Column(String(80), nullable=False)
    description = Column(String(250))
    category_id = Column(Integer, ForeignKey('category.id'))
    category = relationship(Category)
    price = Column(String, nullable=True)
    owner_id = Column(Integer, ForeignKey('users.id'))
    owner = relationship(Users)
    UniqueConstraint(name)

    @property
    def serialize(self):
        # return object data in easily serializeable format
        return {
            'id': self.id,
            'name': self.name,
            'description': self.description,
            'category_name': self.category.name,
            'owner_name': self.owner.username
        }

print("database_setup.py")
# engine = create_engine('sqlite:////vagrant/catalog/catalog.db')
engine = create_engine('postgresql://vagrant:12345670@localhost/catalogapp')


Base.metadata.create_all(engine)
