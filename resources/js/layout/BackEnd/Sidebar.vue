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
                <a href="#" class="nav-link">
                  <i class="nav-icon fas fa-info"></i>
                  <p>About Us</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon fas fa-lightbulb"></i>
                  <p>Mission & Vision</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon fa-solid fa-people-group"></i>
                  <p>Our Team</p>
                </a>
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
            <a href="#" class="nav-link">
              <i class="nav-icon fa-solid fa-list"></i>
              <p>
                More
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon fa-solid fa-newspaper"></i>
                  <p>Publication</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon fa-solid fa-person-chalkboard"></i>
                  <p>Presentation</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon fa-solid fa-handshake-angle"></i>
                  <p>Involvement</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon fa-solid fa-screwdriver-wrench"></i>
                  <p>Specialization</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon fa-solid fa-hand-holding-medical"></i>
                  <p>Social Work</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon fa-solid fa-wand-magic-sparkles"></i>
                  <p>Skills</p>
                </a>
              </li>
            </ul>
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
