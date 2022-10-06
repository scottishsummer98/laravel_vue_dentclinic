require('./bootstrap')
require('jquery')

import { createRouter, createWebHistory } from 'vue-router'
import { createApp } from 'vue'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap'

import FrontEnd from './layout/FrontEnd/Layout'
import BackEnd from './layout/BackEnd/Layout'

const routes = [
  { path: '/', component: require('./pages/FrontEnd/Home').default },
  {
    path: '/services',
    component: require('./pages/FrontEnd/Services').default,
  },
  {
    path: '/treatment',
    component: require('./pages/FrontEnd/Treatment').default,
  },
  { path: '/admin', component: require('./pages/BackEnd/DashBoard').default },
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
app.use(router)

app.mount('#app')
