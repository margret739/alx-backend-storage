#!/usr/bin/env python3
''''Task 9's module.'''


def insert_school(mongo_collection, **kwargs):
    '''Inserts a new document in a ciollection.'''


    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
