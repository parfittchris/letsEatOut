<template >
  <div id="addReview">
    <div id="addReviewArea">
      <h2 class="reviewTitle">Add a review</h2>
      <form class="reviewForm" @submit="addReview">
        <div class="reviewSection">
          <label class="title">Review Title:</label>
          <input type="text" v-model="title" name="title" />
        </div>
        <label class="content">Review Content:</label>
        <textarea type="text" v-model="content" name="content" />
        <div class="rating">
          <label class="rating">Rating:</label>
          <select name="ratingSelect" id="ratingSelect" @change="changeRating">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
          </select>
        </div>
        <input type="submit" value="Submit" class="submit btn" />
      </form>
      <button class="close btn" v-on:click="$emit('close')">Close</button>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "AddReview",
  props: ["restaurantId"],
  data() {
    return {
      title: "",
      content: "",
      rating: 1,
      user: []
    };
  },
  methods: {
    addReview(e) {
      e.preventDefault();

      axios
        .post("/api/reviews", {
          author_id: this.$store.state.currentUser,
          restaurant_id: this.restaurantId,
          title: this.title,
          content: this.content,
          rating: this.rating
        })
        .then(res => {
          this.$emit("submitted");
        })
        .catch(err => console.log(err));
    },
    changeRating(e) {
      this.rating = e.target.value;
    }
  }
};
</script>

<style scoped>
#addReview {
  position: fixed;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  background: rgb(0, 0, 0, 0.7);
}

#addReviewArea {
  width: 37.5%;
  height: 37.5%;
  position: fixed;
  left: 25vw;
  top: 22.5vh;
  padding: 5%;
  background-color: rgb(245, 230, 212);
  border: 5px solid #3a3a69;
  border-radius: 10px;
}
.reviewForm {
  display: flex;
  flex-direction: column;
  align-items: space-around;
  margin: 0 auto;
}

.reviewTitle {
  margin-top: 0;
  text-align: center;
}

.title {
  font-size: 20px;
}

.reviewSection {
  margin-bottom: 10px;
}

textarea {
  height: 120px;
  width: 98%;
  font-size: 18px;
  resize: none;
  margin-bottom: 10px;
}

.reviewSection input {
  width: 98%;
  font-size: 18px;
  border-style: solid;
  border-color: gray;
  border-width: 0 0 1px 0;
}

.content {
  font-size: 20px;
}

.btn {
  width: 15%;
  color: white;
  background-color: #eb2946;
  border: 2px solid white;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  text-decoration: none;
  cursor: pointer;
  font-size: 16px;
}

.btn:active {
  background-color: #a3182d;
}

.submit {
  width: 15%;
  margin: 0 auto;
}

.close {
  width: 10%;
  position: absolute;
  right: 10px;
  bottom: 10px;
}

select {
  width: 8%;
  text-align: center;
}
</style>