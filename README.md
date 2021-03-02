# Cat - an API wrapper. 😺
### API Wrapper for [TheCatAPI.com](https://thecatapi.com) written in [Deno](https://deno.land)!
---
### Usage

```js
import Cat from "./mod.js";

/* Fetch all of the cat breeds */
let breeds = await Cat.getBreeds(); // returns an array of breeds
console.log(breeds); //> [ "item", "here" ]

/* Fetch a singular cat (random breed) */
console.log(await Cat.getCat()); //> [ "<url>" ]

/* Fetch a singular cat (specified breed) */
console.log(await Cat.getCat({ breed: breeds[Math.floor(Math.random() * breeds.length)] })); //> [ "<url>" ]

/* Fetch a multiple bengal cats from a specific page */
console.log(await Cat.getCat({ breed: "beng", limit: 10, page: 2 })); //> [ "<url>" ] (length -> 10)
```

### Contributions
###### All contributions are accepted, simply open an Issue / Pull request.
