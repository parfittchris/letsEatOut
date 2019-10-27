import Home from './../components/home'
import Restaurant from './../components/restaurant'
import Signup from './../components/signup'
import Login from './../components/login'
import Profile from './../components/profile'
import { store } from './../packs/app.js'

export default [
    {
        path: '/',
        redirect: {
            name: "login"
        }
    },
    {
        path: "/login",
        name: "login",
        component: Login
    },
    {
        path: '/signup',
        name: 'signup',
        component: Signup
    },
    {
        path: '/restaurants/:id',
        name: 'restaurant',
        component: Restaurant,
        beforeEnter: (to, from, next) => {
            if (store.state.authenticated === false) {
                next(false);
            } else {
                next();
            }
        }
    },
    {
        path: '/home',
        name: 'home',
        component: Home,
        beforeEnter: (to, from, next) => {
            if (store.state.authenticated === false) {
                next(false);
            } else {
                next();
            }
        }
    },
    {
        path: '/users/:id',
        name: 'profile',
        component: Profile,
        beforeEnter: (to, from, next) => {
            if (store.state.authenticated === false) {
                next(false);
            } else {
                next();
            }
        }
    },
];