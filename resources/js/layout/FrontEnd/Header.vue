<template>
  <div
    class="nav1"
    v-for="(item, index) in settingsList"
    :key="index"
    style="background-color: RGB(47, 137, 252);"
  >
    <img class="nav1logo" :src="`storage/${item.logo}`" alt="" />
    <a
      style="
        color: white;
        font-size: 15px;
        font-family: Helvetica;
        text-decoration: none;
      "
      href="#"
      v-if="item.contactno2 === null || item.contactno2 === ''"
    >
      <i class="fa fa-phone" aria-hidden="true"></i>
      {{ item.contactno1 }}
    </a>
    <a
      style="color: white; font-size: 17px; font-family: Helvetica;"
      href="#"
      v-else
    >
      <i class="fa fa-phone" aria-hidden="true"></i>
      {{ item.contactno1 }},{{ item.contactno2 }}
    </a>
    <a style="color: white;" :href="`${item.twitterlink}`">
      <i class="fa-brands fa-twitter" aria-hidden="true"></i>
    </a>
    <a style="color: white;" :href="`${item.fblink}`">
      <i class="fa-brands fa-facebook" aria-hidden="true"></i>
    </a>
    <a style="color: white;" :href="`${item.instagramlink}`">
      <i class="fa-brands fa-instagram" aria-hidden="true"></i>
    </a>
    <a style="color: white;" :href="`${item.youtubelink}`">
      <i class="fa-brands fa-youtube" aria-hidden="true"></i>
    </a>
  </div>
  <div class="nav2" v-for="(item, index) in settingsList" :key="index">
    <img
      class="nav2logo"
      :src="`storage/${item.logo}`"
      alt=""
      style="width: 120px; height: 80px;"
    />
    <a
      class="nav2addressicon"
      style="color: RGB(47, 137, 252); font-size: 30px;"
    >
      <i class="fa-solid fa-location-dot" aria-hidden="true"></i>
    </a>
    <a
      style="color: RGB(47, 137, 252); font-size: 15px;"
      v-if="item.address2 === null || item.address2 === ''"
    >
      <b>
        Address :
        <span>{{ item.address1 }}</span>
      </b>
    </a>
    <a style="color: RGB(47, 137, 252); font-size: 15px;" v-else>
      <b>
        Address :
        <span>{{ item.address1 }}</span>
      </b>
      <br />
      <span>{{ item.address2 }}</span>
    </a>
    <a
      class="nav2envelopeicon"
      style="color: RGB(47, 137, 252); font-size: 30px;"
    >
      <i class="fa-solid fa-envelope" aria-hidden="true"></i>
    </a>
    <a
      style="color: RGB(47, 137, 252); font-size: 15px;"
      v-if="item.address2 === null || item.address2 === ''"
    >
      <b>
        <span>{{ item.email1 }}</span>
      </b>
    </a>
    <a style="color: RGB(47, 137, 252); font-size: 15px;" v-else>
      <b>
        <span>{{ item.email1 }}</span>
      </b>
      <br />
      <span>{{ item.email2 }}</span>
    </a>
  </div>
  <div
    class="col-lg-12 col-md-12 col-sm-12 p-2"
    style="
      background-color: RGB(47, 137, 252);
      position: sticky;
      top: 0;
      z-index: 100;
    "
  >
    <ul class="nav justify-content-center">
      <li class="nav-item hover-underline-animation">
        <router-link
          to="/"
          class="nav-link"
          style="color: white; font-size: 12px; font-family: Helvetica;"
          data-toggle="collapse"
          active-class="active border-top border-white"
        >
          HOME
        </router-link>
      </li>
      <li class="nav-item hover-underline-animation">
        <a
          href="#"
          class="nav-link"
          data-bs-toggle="dropdown"
          style="color: white; font-size: 12px; font-family: Helvetica;"
          data-toggle="collapse"
          active-class="active border-top border-white"
        >
          ABOUT
        </a>
        <ul class="dropdown-menu">
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="/about/aboutus" class="dropdown-item">
              ABOUT US
            </router-link>
          </li>
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="/about/missionvision" class="dropdown-item">
              MISSION & VISION
            </router-link>
          </li>
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="/about/ourteam" class="dropdown-item">
              OUR TEAM
            </router-link>
          </li>
        </ul>
      </li>
      <li class="nav-item hover-underline-animation">
        <router-link
          to="/services"
          class="nav-link"
          style="color: white; font-size: 12px; font-family: Helvetica;"
          data-toggle="collapse"
          active-class="active border-top border-white"
        >
          SERVICES
        </router-link>
      </li>
      <li class="nav-item hover-underline-animation">
        <router-link
          to="/treatments"
          class="nav-link"
          style="color: white; font-size: 12px; font-family: Helvetica;"
          data-toggle="collapse"
          active-class="active border-top border-white"
        >
          TREATMENT
        </router-link>
      </li>
      <li class="nav-item hover-underline-animation">
        <a
          href="#"
          class="nav-link"
          data-bs-toggle="dropdown"
          style="color: white; font-size: 12px; font-family: Helvetica;"
          data-toggle="collapse"
        >
          MORE
        </a>
        <ul class="dropdown-menu">
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="/more/publications" class="dropdown-item">
              PUBLICATIONS
            </router-link>
          </li>
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="/more/presentations" class="dropdown-item">
              PRESENTATIONS
            </router-link>
          </li>
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="/more/involvement" class="dropdown-item">
              INVOLVEMENT
            </router-link>
          </li>
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="/more/specialization" class="dropdown-item">
              SPECIALIZATION
            </router-link>
          </li>
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="/more/socialwork" class="dropdown-item">
              SOCIAL WORK
            </router-link>
          </li>
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="/more/skills" class="dropdown-item">
              SKILLS
            </router-link>
          </li>
        </ul>
      </li>
      <li class="nav-item hover-underline-animation">
        <a
          href="#"
          class="nav-link"
          data-bs-toggle="dropdown"
          style="color: white; font-size: 12px; font-family: Helvetica;"
          data-toggle="collapse"
        >
          GALLERY
        </a>
        <ul class="dropdown-menu">
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="#" class="dropdown-item">
              PHOTO GALLERY
            </router-link>
          </li>
          <li style="color: white; font-size: 12px; font-family: Helvetica;">
            <router-link to="#" class="dropdown-item">
              VIDEO GALLERY
            </router-link>
          </li>
        </ul>
      </li>
      <li class="nav-item hover-underline-animation">
        <router-link
          to="/contactus"
          class="nav-link"
          style="color: white; font-size: 12px; font-family: Helvetica;"
          data-toggle="collapse"
          active-class="active border-top border-white"
        >
          CONTACT US
        </router-link>
      </li>
      <li class="nav-item hover-underline-animation">
        <router-link
          to="/articles"
          class="nav-link"
          style="color: white; font-size: 12px; font-family: Helvetica;"
          data-toggle="collapse"
          active-class="active border-top border-white"
        >
          ARTICLE
        </router-link>
      </li>
      <li class="nav-item hover-underline-animation">
        <router-link
          to="/appointment"
          class="nav-link"
          style="color: white; font-size: 12px; font-family: Helvetica;"
          data-toggle="collapse"
          active-class="active border-top border-white"
        >
          MAKE APPOINTMENT
        </router-link>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      settingsList: [],
    }
  },
  methods: {
    getSettingsList() {
      axios
        .post(`/show-settings`)
        .then((response) => {
          this.settingsList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    document.addEventListener('DOMContentLoaded', function () {
      // make it as accordion for smaller screens
      if (window.innerWidth > 992) {
        document
          .querySelectorAll('.nav .nav-item')
          .forEach(function (everyitem) {
            everyitem.addEventListener('mouseover', function (e) {
              let el_link = this.querySelector('a[data-bs-toggle]')

              if (el_link != null) {
                let nextEl = el_link.nextElementSibling
                el_link.classList.add('show')
                nextEl.classList.add('show')
              }
            })
            everyitem.addEventListener('mouseleave', function (e) {
              let el_link = this.querySelector('a[data-bs-toggle]')

              if (el_link != null) {
                let nextEl = el_link.nextElementSibling
                el_link.classList.remove('show')
                nextEl.classList.remove('show')
              }
            })
          })
      }
      // end if innerWidth
    })
    this.getSettingsList()
  },
}
</script>

<style>
.hover-underline-animation {
  display: inline-block;
  position: relative;
  color: #0087ca;
}

.hover-underline-animation:after {
  content: '';
  position: absolute;
  width: 100%;
  transform: scaleX(0);
  height: 2px;
  bottom: 0;
  left: 0;
  background-color: white;
  transform-origin: bottom top;
  transition: transform 0.25s ease-out;
}

.hover-underline-animation:hover:after {
  transform: scaleX(1);
  transform-origin: bottom top;
}

.nav1 {
  display: flex;
  flex-direction: row;
  gap: 5rem;
  justify-content: center;
  padding: 1rem;
  align-items: center;
}
.nav1logo {
  width: 3rem;
  height: 2rem;
  display: none;
}
.nav2 {
  display: flex;
  flex-direction: row;
  justify-content: center;
  padding: 1rem;
  gap: 0.5rem;
  align-items: center;
}
.nav2addressicon {
  margin-left: 5rem;
}
.nav2envelopeicon {
  margin-left: 5rem;
}

/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .nav1 {
    display: flex;
    flex-direction: row;
    justify-content: center;
    gap: 3rem;
    padding: 1rem;
  }
  .nav2 {
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
  }
  .nav2addressicon {
    margin-left: 1rem;
  }
  .nav2envelopeicon {
    margin-left: 1rem;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .nav1 {
    display: flex;
    flex-direction: row;
    justify-content: center;
    gap: 1rem;
    padding: 1rem;
  }
  .nav1logo {
    display: block;
  }
  .nav2 {
    display: none;
  }
}
</style>
