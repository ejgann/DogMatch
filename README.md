# DogMatch
A dog breed-matching tool

## About The Application
Whether you are a current dog owner or are looking to adopt one for the first time, knowing how to find the right match can be daunting! DogMatch helps anyone find their ideal dog breed match based on lifestyle, activity level, allergy considerations, and other factors. By answering a few questions, users are given a list of ideal dog breed matches to help them in their search.

## How it Works
- Dog breeds are seeded in a database. 

- As a user answers questions about their lifestyle their own user instance is created and stored in our database as well. 

- Once the user is finished answering questions the users attributes created in their instance are compared to the dog breed's attributes. 

- A loop is made through all the dog breeds. If a dog's attributes match the attributes of the user a match is created in our match table and the matched dog is printed to the console.

- If no Dog breeds match then a statement will be displayed accordingly.

 - Dogs and users are matched according to the following attributes: 

    - Activity Level
        - Activity Level is matched on an exact basis. For example if a person is highly active the dog would need to be highly active. An active user would not want to be matched with a lazy dog and vice versa.
    - Allergies
        - Allergies are matched based on a true/ false basis. A user with allergies would only match with a dog that is allergy compatible. But a person that doesn't have allergies matches with both Allergy Compatible dogs and Non-Allergy Compatible dogs.
    - Living Space
        - Living Space is matched based on an integer system from 1 - 5. If a user lives in an apartment(2) then any dogs that need a space larger than an apartment(3+) would not match. But any dog that needs a space the size of an apartment or smaller(2-) would match.
    - Children
        - Children are matched based on a true/ false basis. A user with children would only match with a dog that is child friendly. But a person that doesn't have children matches with both Child Friendly dogs and Non-Child Friendly dogs.
    - Barking
        - Barking is matched based on an integer system from 1 - 3. If a user requires minimal barking(1) then any dogs that barking moderately to alot(2+) would not match. But any dog that doesn't bark much(1) would match.

## Developers: 
Nick Boober
Emily Gann
