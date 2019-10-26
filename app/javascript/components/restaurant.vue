<template>
  <div class="restaurant">
    <Sidebar />
    <div class="restaurant-content">
      <div class="restaurant-header">
        <img class="header-img" src="./../../assets/images/food1.jpeg" />
        <img class="header-img" src="./../../assets/images/rest1.jpeg" />
        <img class="header-img" src="./../../assets/images/food2.jpeg" />
        <img class="header-img" src="./../../assets/images/rest3.jpeg" />
      </div>
      <div class="restaurant-details">
        <div class="restaurant-description">
          <h1>{{this.info.name}}</h1>
          <p>Address: {{this.info.address}}</p>
          <p>{{this.info.description}}</p>
        </div>
        <div class="restaurant-image">
          <img class="rest-img" src="./../../assets/images/rest4.jpeg" />
        </div>
      </div>
      <div class="reviews">
        <h1>{{this.info.name}} Reviews</h1>
        <button v-on:click="addReview">Add a review</button>
        <div class="review-section" v-bind:key="review.id" v-for="review in this.info.reviews">
          <Review v-bind:review="review" />
        </div>
      </div>
    </div>
    <div id="modal" v-if="this.clicked" v-bind:restaurantId="this.info.id">
      <addReview />
    </div>
  </div>
</template>
<script>
import Sidebar from "./sidebar";
import Review from "./review";
import addReview from "./addReview";
import axios from "axios";
export default {
  name: "restaurant",
  components: {
    Sidebar,
    Review,
    addReview
  },
  data() {
    return {
      info: null,
      clicked: false
    };
  },
  beforeMount() {
    let urlSplit = window.location.href.split("/");
    let num = parseInt(urlSplit[urlSplit.length - 1]);

    axios
      .get(`/api/restaurants/${num}`)
      .then(res => {
        this.info = res.data;
      })
      .catch(err => console.log(err));
  },
  methods: {
    addReview() {
      if (this.clicked === true) {
        this.clicked = false;
      } else {
        this.clicked = true;
      }
    }
  }
};
</script>
<style scoped>
.restaurant {
  display: flex;
  background-color: #a3a3ff;
}

.restaurant-content {
  color: white;
  width: 80vw;
  height: 100vh;
  position: relative;
  left: 20vw;
}

.restaurant-details {
  display: flex;
  padding-top: 5%;
}

.restaurant-description {
  width: 60%;
  height: 300px;
  padding: 10px 20px;
  box-sizing: border-box;
}

.restaurant-image {
  width: 40%;
  height: 300px;
  box-sizing: border-box;
}

.rest-img {
  width: 80%;
  height: 80%;
  position: relative;
  left: 10%;
  top: 10%;
  border-radius: 8px;
  border: 5px solid #4040af;
}

.restaurant-header {
  display: flex;
}
.header-img {
  height: 30vh;
  width: 25%;
  margin: 0;
}

.review-section {
  display: flex;
  flex-direction: column;
  box-sizing: border-box;
  margin-bottom: 10px;
  margin: 10px auto;
  width: 90%;
}

.reviews h1 {
  text-align: center;
}

#modal {
  transition-duration: 1s;
  width: 50%;
  height: 50%;
  background-color: white;
  border: 2px solid black;
  position: fixed;
  left: 25vw;
  top: 25vh;
}
</style>

<style>
/* .restaurant {
  background-color: rgba(0, 0, 0, 0.7);
  z-index: -10;
} */
</style>