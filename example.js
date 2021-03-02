/**
 * @author Conner
 * @since 01/03/2021
 * @version 1.0.0
 * 
 * API wrapper for TheCatAPI.com written in Deno
 * - https://github.com/connuh
 */

import Cat from "./mod.js";

/* Fetch all of the cat breeds */
let breeds = await Cat.getBreeds(); // returns an array of breeds
console.log(breeds); //> [ "item", "here" ]

/* Fetch a singular cat (random breed) */
console.log(await Cat.getCat()); //> [ "<url>" ]

/* Fetch a singular cat (specified breed) */
console.log(await Cat.getCat({ breed: breeds[Math.floor(Math.random() * breeds.length)] })); //> [ "<url>" ]

/* Fetch a multiple bengal cats from a specific page */
console.log(await Cat.getCat({ breed: "beng", limit: 10, page: 2 })); //> [ "<url>" ] (lenght -> 10)
