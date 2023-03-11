<template>
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <div class="sidebar">
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img
            src="dist/img/user2-160x160.jpg"
            class="img-circle elevation-2"
            alt="User Image"
          />
        </div>
        <div class="info">
          <a href="#" class="d-block">{{ user.name }}</a>
        </div>
      </div>

      <nav class="mt-2">
        <ul
          class="nav nav-pills nav-sidebar flex-column"
          data-widget="treeview"
          role="menu"
          data-accordion="false"
        >
          <li class="nav-item">
            <router-link to="/admin" class="nav-link">
              <i class="nav-icon fa-solid fa-house"></i>
              <p>
                Home
              </p>
            </router-link>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa-solid fa-question"></i>
              <p>
                About
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <router-link to="/admin-about/team" class="nav-link">
                  <i class="nav-icon fa-solid fa-people-group"></i>
                  <p>Our Team</p>
                </router-link>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <router-link to="/admin-services" class="nav-link">
              <i class="nav-icon fa-solid fa-hand-holding-heart"></i>
              <p>
                Services
              </p>
            </router-link>
          </li>
          <li class="nav-item">
            <router-link to="/admin-treatments" class="nav-link">
              <i class="nav-icon fa-solid fa-suitcase-medical"></i>
              <p>
                Treatment
              </p>
            </router-link>
          </li>
          <li class="nav-item">
            <router-link to="/admin-more" class="nav-link">
              <i class="nav-icon fa-solid fa-suitcase-medical"></i>
              <p>
                More
              </p>
            </router-link>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fa-regular fa-images"></i>
              <p>
                Gallery
              </p>
            </a>
          </li>
          <li class="nav-item">
            <router-link to="/admin-contact" class="nav-link">
              <i class="nav-icon fa-regular fa-address-card"></i>
              <p>
                Contact
              </p>
            </router-link>
          </li>
          <li class="nav-item">
            <router-link to="/admin-articles" class="nav-link">
              <i class="nav-icon fa-solid fa-thumbtack"></i>
              <p>
                Article
              </p>
            </router-link>
          </li>
          <li class="nav-item">
            <router-link to="/admin-settings" class="nav-link">
              <i class="nav-icon fa-solid fa-gear"></i>
              <p>
                Settings
              </p>
            </router-link>
          </li>
        </ul>
      </nav>
    </div>
  </aside>
</template>

<script>
import axios from 'axios'

export default {
  data() {
    return {
      user: [],
    }
  },
  mounted() {
    axios.get('/api/user').then((res) => {
      this.user = res.data
    })
  },
}
</script>
