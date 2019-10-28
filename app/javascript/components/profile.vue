<template>
  <div class="profile">
    <Sidebar />
    <div v-if="this.$store.state.currentUser === this.user.id" class="profileContent">
      <h1>My Profile</h1>
      <div class="profileSection">
        <img class="profileImage" src="./../../assets/images/profile.png" />
        <div class="userInfo">
          <h3>Username: {{this.user.username}}</h3>
          <h3>Email: {{this.user.email}}</h3>
          <div class="followers">
            <h4>Followers: {{this.followers.length}}</h4>
            <h4>Following: {{this.peopleFollowing.length}}</h4>
          </div>
        </div>
      </div>
      <div class="userReviews">
        <h1 class="reviewTitle">My Reviews</h1>
        <div class="reviewSection">
          <div class="reviewItem" v-bind:key="review.id" v-for="review in this.user.reviews">
            <router-link :to="{path: `/restaurants/${review.restaurant_id}`}">
              <Review v-bind:review="review" />
            </router-link>
          </div>
        </div>
      </div>
    </div>

    <div v-else class="profileContent">
      <h1>{{this.user.username}}'s Profile</h1>
      <div class="profileSection">
        <img class="profileImage" src="./../../assets/images/profile.png" />
        <div class="userInfo">
          <h3>Username: {{this.user.username}}</h3>
          <div class="followers">
            <h4 v-on:click="test1">Followers: {{this.followers.length}}</h4>
            <h4 v-on:click="test2">Following: {{this.peopleFollowing.length}}</h4>
          </div>
          <button v-if="this.following === true" v-on:click="follow" class="unFollowBtn">UnFollow</button>
          <button v-else v-on:click="follow" class="followBtn">Follow</button>
        </div>
      </div>
      <div class="userReviews">
        <h1 class="reviewTitle">{{this.user.username}}'s Reviews</h1>
        <div class="reviewSection">
          <div class="reviewItem" v-bind:key="review.id" v-for="review in this.user.reviews">
            <router-link :to="{path: `/restaurants/${review.restaurant_id}`}">
              <Review v-bind:review="review" />
            </router-link>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";
import Sidebar from "./sidebar";
import Review from "./review";
export default {
  name: "profile",
  data() {
    return {
      user: [],
      following: false,
      followers: [],
      peopleFollowing: []
    };
  },
  methods: {
    follow() {
      if (this.following === true) {
        this.following = false;

        axios
          .delete("./api/followers/1", {
            data: {
              user_id: this.$store.state.currentUser,
              follow_id: this.user.id
            }
          })
          .then(res => {
            this.getFollows();
          })
          .catch(err => console.log(err));
      } else {
        this.following = true;

        axios
          .post("./api/followers", {
            user_id: this.$store.state.currentUser,
            follow_id: this.user.id
          })
          .then(res => {
            this.getFollows();
          })
          .catch(err => console.log(err));
      }
    },
    getFollows() {
      let urlSplit = window.location.href.split("/");
      let num = parseInt(urlSplit[urlSplit.length - 1]);
      this.peopleFollowing = [];
      this.followers = [];

      axios
        .get(`/api/users/${num}`)
        .then(res => {
          this.user = res.data;
          console.log(res.data);
          res.data.follows.forEach(follower => {
            if (follower.id === this.$store.state.currentUser) {
              this.following = true;
            }
            this.followers.push(follower);
          });

          res.data.people_following.forEach(person => {
            this.peopleFollowing.push(person);
          });
        })
        .catch(err => console.log(err));
    },
    test1() {
      console.log(this.followers);
    },
    test2() {
      console.log(this.peopleFollowing);
    }
  },
  components: {
    Sidebar,
    Review
  },
  mounted() {
    this.getFollows();
  }
};
</script>
<style scoped>
.profile {
  margin: -8px;
  display: flex;
}

.profileContent {
  margin-left: 20vw;
  display: flex;
  width: 100%;
  height: 100vh;
  flex-direction: column;
}

h1 {
  text-align: center;
}

.profileSection {
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  width: 25%;
  background-color: rgb(245, 230, 212);
  border: 5px solid #272753;
  border-radius: 10px;
}

.profileImage {
  margin: 5% auto;
  width: 80%;
  height: auto;
  border-radius: 50%;
  border: 5px solid #272753;
}

.userInfo h3 {
  padding-left: 10%;
}

.followers {
  display: flex;
  justify-content: space-around;
  text-align: center;
}

.followBtn {
  width: 40%;
  color: white;
  background-color: #eb2946;
  border: 2px solid white;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  cursor: pointer;
  font-size: 16px;
  margin: 5px 30%;
}

.unFollowBtn {
  width: 40%;
  color: white;
  background-color: #a3182d;
  border: 2px solid white;
  border-radius: 5px;
  font-weight: 600;
  text-align: center;
  cursor: pointer;
  font-size: 16px;
  margin: 5px 30%;
}

.unFollowBtn:focus {
  outline: none;
  text-decoration: none;
}

.followBtn:focus {
  outline: none;
  text-decoration: none;
}

.reviewTitle {
  margin-top: 5%;
}
.reviewItem {
  width: 90%;
  margin: 10px auto;
}
</style>