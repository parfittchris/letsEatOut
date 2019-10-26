import Home from './../components/home'
import Restaurant from './../components/restaurant'

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
    }
];