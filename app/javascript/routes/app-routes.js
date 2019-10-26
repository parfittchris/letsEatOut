import Home from './../components/home'
import Restaurant from './../components/restaurant'
import Signup from './../components/signup'
import Login from './../components/login'



export default [
    {
        path: '/',
        name: 'home',
        component: Home
    },
    {
        path: '/restaurants/:id',
        name: 'restaurant,',
        component: Restaurant
    },
    {
        path: '/signup',
        name: 'signup,',
        component: Signup
    },
    {
        path: '/login',
        name: 'login,',
        component: Login
    }
];