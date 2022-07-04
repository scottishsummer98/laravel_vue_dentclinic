require('./bootstrap');

import { createRouter, createWebHistory } from 'vue-router';
import { createApp } from 'vue';
import "bootstrap/dist/css/bootstrap.min.css"
import "bootstrap"

import FrontEnd from './layout/FrontEnd/Layout';
import BackEnd from './layout/BackEnd/Layout';
import Home from './pages/FrontEnd/Home';
import Services from './pages/FrontEnd/Services';
import Treatment from './pages/FrontEnd/Treatment';
import DashBoard from './pages/BackEnd/DashBoard';

const routes = [
    { path: '/',  component: Home },
    { path: '/services', component: Services },
    { path: '/treatment', component: Treatment },
    { path: '/admin', component: DashBoard },
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