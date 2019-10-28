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
        <button class="reviewBtn" v-on:click="addReview">Add a review</button>
        <div class="review-section" v-bind:key="review.id" v-for="review in this.info.reviews">
          <Review v-bind:review="review" @deleted="getReviews" />
        </div>
      </div>
    </div>
    <div id="modal" v-if="this.clicked">
      <addReview v-bind:restaurantId="this.info.id" @submitted="getReviews" @close="addReview" />
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
      clicked: false,
      updated: false
    };
  },
  mounted() {
    this.getReviews();
  },
  methods: {
    addReview() {
      if (this.clicked === true) {
        this.clicked = false;
      } else {
        this.clicked = true;
      }
    },
    getReviews() {
      this.clicked = false;

      let urlSplit = window.location.href.split("/");
      let num = parseInt(urlSplit[urlSplit.length - 1]);

      axios
        .get(`/api/restaurants/${num}`)
        .then(res => {
          this.info = res.data;
        })
        .catch(err => console.log(err));
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

.restaurant-header {
  margin: -8px;
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

.reviews {
  display: flex;
  flex-direction: column;
  margin: 0 auto;
}

.reviews h1 {
  text-align: center;
}

.reviewBtn {
  width: 10%;
  margin: 10px auto;
  color: white;
  background-color: #eb2946;
  border: 2px solid white;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  cursor: pointer;
  font-size: 16px;
}

.reviewBtn:active {
  background-color: #a3182d;
}

#modal {
  width: 50%;
  height: 50%;
  position: fixed;
  left: 25vw;
  top: 25vh;
}
</style>

