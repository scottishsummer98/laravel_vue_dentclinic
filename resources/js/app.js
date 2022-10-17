require('./bootstrap')
require('jquery')

import { createRouter, createWebHistory } from 'vue-router'
import { createApp } from 'vue'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap'

import FrontEnd from './layout/FrontEnd/Layout'
import BackEnd from './layout/BackEnd/Layout'
import Register from './pages/Auth/Register'
import Login from './pages/Auth/Login'
import axios from 'axios'

const routes = [
  {
    path: '/',
    component: require('./pages/FrontEnd/Home').default,
  },
  {
    path: '/about/aboutus',
    component: require('./pages/FrontEnd/About/AboutUs').default,
  },
  {
    path: '/about/missionvision',
    component: require('./pages/FrontEnd/About/Misvis').default,
  },
  {
    path: '/about/ourteam',
    component: require('./pages/FrontEnd/About/Team').default,
  },
  {
    path: '/services',
    component: require('./pages/FrontEnd/Services').default,
  },
  {
    path: '/treatments',
    component: require('./pages/FrontEnd/Treatments').default,
  },
  {
    path: '/more/publications',
    component: require('./pages/FrontEnd/More/Publications').default,
  },
  {
    path: '/more/presentations',
    component: require('./pages/FrontEnd/More/Presentations').default,
  },
  {
    path: '/more/involvement',
    component: require('./pages/FrontEnd/More/Involvement').default,
  },
  {
    path: '/more/specialization',
    component: require('./pages/FrontEnd/More/Specialization').default,
  },
  {
    path: '/more/socialwork',
    component: require('./pages/FrontEnd/More/Socialwork').default,
  },
  {
    path: '/more/skills',
    component: require('./pages/FrontEnd/More/Skills').default,
  },
  {
    path: '/contactus',
    component: require('./pages/FrontEnd/Contacts').default,
  },
  {
    path: '/articles',
    component: require('./pages/FrontEnd/Articles').default,
  },
  {
    path: '/articles/:id',
    component: require('./pages/FrontEnd/ArticleSingle').default,
  },
  {
    path: '/login',
    component: require('./pages/Auth/Login').default,
  },
  {
    path: '/register',
    component: require('./pages/Auth/Register').default,
  },
  {
    path: '/admin',
    component: require('./pages/BackEnd/DashBoard').default,
    name: 'Admin',
    beforeEnter: (to, form, next) => {
      axios
        .get('/api/authenticiated')
        .then(() => {
          next()
        })
        .catch(() => {
          return next({ path: '/login' })
        })
    },
  },
  {
    path: '/admin-about/team',
    component: require('./pages/BackEnd/About/Team').default,
  },
  {
    path: '/admin-services',
    component: require('./pages/BackEnd/Services').default,
  },
  {
    path: '/admin-treatments',
    component: require('./pages/BackEnd/Treatments').default,
  },
  {
    path: '/admin-articles',
    component: require('./pages/BackEnd/Articles').default,
  },
  {
    path: '/admin-more',
    component: require('./pages/BackEnd/More').default,
  },
  {
    path: '/admin-contact',
    component: require('./pages/BackEnd/Contact').default,
  },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
})

const app = createApp({})
app.component('frontend-component', FrontEnd)
app.component('backend-component', BackEnd)
app.component('register-component', Register)
app.component('login-component', Login)
app.use(router)

app.mount('#app')
