<template>
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button">
          <i class="fas fa-bars"></i>
        </a>
      </li>
    </ul>
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#" @click="logout">
          <i class="fa-solid fa-arrow-right-from-bracket"></i>
        </a>
      </li>
    </ul>
  </nav>
</template>

<script>
export default {
  data() {
    return {}
  },
  methods: {
    logout() {
      axios
        .post(`/api/logout-user`)
        .then((response) => {
          window.location.href = '/'
        })
        .catch((err) => {})
    },
  },
}
</script>
