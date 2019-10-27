# letsEatOut - A premier restaurant review site helps you find where to eat tonight

Live Link: https://letseatoutapp.herokuapp.com/

## Background and Overview
Don't know where to eat tonight? Unsure what the current hottest restaurant in the neighborhood is? Have no fear, because letsEatOut is here to handle that for you. Browse our database of restaurants to find one that matches what you're looking for, write your own review of a restaurant where you received a particularly great meal, and even follow other users on the site to get a heads up on what might be a great place to dine out. It's all there for you complete with user-authenticated login and signup pages. 

## Functionality

In letsEatOut users will be able to:
  * Login to an existing or Sign up for an account
  * Navigate the database of restaurants
  * Write a restaurant a review with the option of deleting later
  * View other users profiles/reviews and follow users
  
 ## Features
 
 ### Login/Sign Up Authentication
 ![wire frame](https://github.com/parfittchris/letsEatOut/blob/master/app/assets/images/userauth.png)
 
 Users must sign up for an account before they can log into the site. A user/password combination is stored in the back end that is verified on successive logins to ensure only validated users have access to the site.

```
loginUser(e) {
      e.preventDefault();
      axios
        .post("/api/session", {
          email: this.email,
          password: this.password
        })
        .then(res => {
          this.$store.commit("setAuthentication", true);
          this.$store.commit("setCurrentUser", res.data.id);
          this.$router.replace({ name: "home" });
        })
        .catch(err => this.errors.push("Invalid username and/or password"));
  ```
   
### Write and delete reviews
Users can search for restaurants and write reviews implmenting a rating as well. Users are able to delete reviews as well but only those that they themselves have written, not those by other users.
 ![wire frame](https://github.com/parfittchris/letsEatOut/blob/master/app/assets/images/review2.png)

### Profile Page and Followers
Users can access their own profile and the profiles of other users. Profiles show all reviews written by that user as well as a tally of follower and followed accounts. Users can follow other user accounts.

```
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
          .then(res => console.log(res))
          .catch(err => console.log(err));
      } else {
        this.following = true;

        axios
          .post("./api/followers", {
            user_id: this.$store.state.currentUser,
            follow_id: this.user.id
          })
          .then(res => console.log(res.data))
          .catch(err => console.log(err));
      }
    }
 ```
### Future Updates
 * Implement home screen 'news' section detailing reviews by followed users
 * Add functionality for uploading user profile images, biography info, etc.
 * Restaurant profile, abilities for users to follow restaurants/get updates, etc.
