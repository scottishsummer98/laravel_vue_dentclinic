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
    path: '/services',
    component: require('./pages/FrontEnd/Services').default,
  },
  {
    path: '/treatment',
    component: require('./pages/FrontEnd/Treatment').default,
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
    path: '/admin-services',
    component: require('./pages/BackEnd/Services').default,
  },
  {
    path: '/admin-treatments',
    component: require('./pages/BackEnd/Treatment').default,
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
