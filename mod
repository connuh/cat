/**
 * @author Conner
 * @since 01/03/2021
 * @version 1.0.0
 * 
 * Wrapper for TheCatAPI.com
 * Written by Conner
 * 
 * - https://github.com/connuh
 */

// Variables
const BASE_URL = "https://api.thecatapi.com/v1"; // The base URL for all requests
const endpoints = {
  "search": "images/search",
  "getBreeds": "breeds"
};

// Cat Class
export default class Cat {
  static getBreeds = async () => {
    /**
     * Empty array, we populate this later
     * after making our GET request
     * to fetch all of the breeds
     */
    let breeds = [ ];

    try {
      /**
       * Makes the GET request to the "getBreeds" endpoint
       */
      let json = await(await fetch(`${BASE_URL}/${endpoints["getBreeds"]}`)).json();

      /**
       * Loops through the JSON and makes a
       * constant called "breed" inside
       * the scope for accessing
       */
      for(const breed of json) {
        /**
         * If breed.id exists and breed.id isn't
         * found in the "breeds" array, push to the array
         */
        if(breed.id && breeds.indexOf(breed.id) === -1) breeds.push(breed.id); 
      }

      /**
       * Returns the breeds array
       */
      return breeds;
    } catch(e) {
      throw new Error(e);
    }
  }

  /**
   * @param {Object} data
   * @param {String} data.breed
   * @param {Number} data.limit
   * @param {Number} data.page
   * @param {String} data.desc
   * @returns {Promise<Object>}
   */
  static getCat = async (data = { breed: null, limit: 1, page: 0, order: "desc" }) => {
    /**
     * Empty array, we populate this later
     * after making our GET request
     * to fetch cat pictures
     */
    let images = [ ];

    try {
      /**
       * Makes the GET request to the "search" endpoint
       */
      let json = await(await fetch(`${BASE_URL}/${endpoints["search"]}${data.breed ? `?breed_ids=${data.breed}&` : "?"}limit=${data.limit}&page=${data.page}&order=${data.order}`)).json();

      /**
       * Loops through the JSON and makes a
       * constant called "cat" inside
       * the scope for accessing
       */
      for(const cat of json) {
        /**
         * If cat.url exists and cat.url isn't
         * found in the "images" array, push to the array
         */
        if(cat.url && images.indexOf(cat.url) === -1) images.push(cat.url);
      }

      /**
       * Returns the images array
       */
      return images;
    } catch(e) {
      throw new Error(e);
    }
  }
}
