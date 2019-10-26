<template>
  <div class="index">
    <div class="restaurant-header">
      <img class="header-img" src="./../../assets/images/rest1.jpeg" />
      <img class="header-img" src="./../../assets/images/rest2.jpeg" />
      <img class="header-img" src="./../../assets/images/rest3.jpeg" />
      <img class="header-img" src="./../../assets/images/rest4.jpeg" />
    </div>
    <div class="index-titles">
      <h1>Let's eat out tonight!</h1>
    </div>
    <div class="restaurant-list" v-bind:key="restaurant.id" v-for="restaurant in restaurants">
      <div class="index-restaurant">
        <router-link :to="{path: '/restaurants/' + restaurant.id, params: {id: 1}}">
          <img class="index-img" src="./../../assets/images/rest1.jpeg" />
        </router-link>
        <div class="index-info">
          <h2 class="index-restaurant-title">{{restaurant.name}}</h2>
          <p class="index-description">{{restaurant.description}}</p>
          <p class="index-rating">Rating: {{restaurant.rating}}</p>
          <router-link
            class="index-restaurant-btn"
            :to="{path: '/restaurants/' + restaurant.id, params: {id: 1}}"
          >Check out {{restaurant.name}}!</router-link>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";
import Restaurant from "./restaurant";
export default {
  name: "Index",
  components: {
    Restaurant
  },
  data() {
    return {
      restaurants: []
    };
  },
  mounted() {
    axios
      .get(`api/restaurants`)
      .then(res => (this.restaurants = Object.values(res.data)))
      .catch(err => console.log(err));
  }
};
</script>

<style scoped>
.index {
  background-color: #a3a3ff;
  color: white;
  width: 80vw;
  height: 100vh;
  position: relative;
  left: 20vw;
}

.restaurant-header {
  display: flex;
}

.header-img {
  height: 30vh;
  width: 25%;
  margin: 0;
}

.index-titles {
  text-align: center;
  margin-bottom: 60px;
  box-sizing: border-box;
  padding: 0 10px;
}

.index-info {
  background-color: rgb(245, 230, 212);
  border: 5px solid #4040af;
  border-radius: 8px;
  width: 80%;
  height: 225px;
  margin: 0 40px;
  color: black;
  text-align: center;
  box-sizing: border-box;
  padding: 10px;
  font-size: 0.9rem;
}

.index-description {
  height: 4.5em;
  line-height: 1.5em;
  overflow: hidden;
  max-width: 90%;
  margin: 0 auto;
}

.index-restaurant {
  display: flex;
  margin: 20px 10px;
}

.index-img {
  border: 5px solid #4040af;
  border-radius: 10px;
  height: 225px;
}

.index-restaurant-btn {
  display: inline-block;
  height: 30px;
  color: white;
  background-color: #eb2946;
  border-radius: 5px;
  box-sizing: border-box;
  padding: 5px 5px;
  text-decoration: none;
  font-weight: 500;
}

.index-restaurant-btn:active {
  background-color: #a3182d;
}
</style>