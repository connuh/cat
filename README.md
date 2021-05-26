<h1 align="center">
	<img src="https://upload.wikimedia.org/wikipedia/commons/8/84/Deno.svg" width="150px"><br>
    Cat - an API wrapper. 😺
</h1>
<p align="center">
	Cat is an API wrapper that allows you to easily generate pictures of cats (Powered by TheCatAPI).
</p>

<p align="center">
	<a href="https://deno.land" target="_blank">
    	<img src="https://img.shields.io/badge/Version-1.1.0-7DCDE3?style=for-the-badge" alt="Version">
     </a>
	<a href="https://deno.land" target="_blank">
    	<img src="https://img.shields.io/badge/Deno-1.10.0+-7DCDE3?style=for-the-badge" alt="Node">
     </a>
     <a href="https://github.com/connuh/cat/blob/master/LICENSE" target="_blank">
    	<img src="https://img.shields.io/badge/License-WTFPL-7DCDE3?style=for-the-badge" alt="License">
     </a>
</p>

## Integrating ✨

If you would like to integrate `cat` into your project, you have to import it.
```js
import Cat from "https://deno.land/x/cat/mod.ts";
```

After you import the file, you can call functions like this:
```js
getBreeds(); // [ ]
getCat(); // <string>
```

## Documentation 📖

Functions:
```js
getBreeds();
getCat();
```

Usage:
```js
/**
 * Cat.getBreeds() returns an Array of cat breeds that
 * you can pass as arguments for `getCat()`
 */
Cat.getBreeds();
```
```js
/**
 * Cat.getCat() returns a String if you provide valid information.
 *
 * Takes in a singular Object as an argument, the layout is as follows:
 * breed -> String
 * limit -> Number
 * page -> Number
 * Order -> String (rand/desc/asc)
 *
 * Example: { breed: "beng", limit: 10, page: 0, order: "desc" }
 */
Cat.getCat({ breed: <breed>, limit: <limit>, page: <page>, order: <order> });
```

---

### Contributions 🎉
###### All contributions are accepted, simply open an Issue / Pull request.