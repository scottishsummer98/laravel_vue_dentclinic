<template>
  <div
    class="col-lg-12 col-md-12 col-sm-12 p-2"
    style="background-color: RGB(47, 137, 252);"
  >
    <ul class="nav justify-content-center">
      <li class="nav-item">
        <a
          class="nav-link"
          style="color: white; font-size: 17px; font-family: Helvetica;"
          href="#"
        >
          <i class="fa fa-phone" aria-hidden="true"></i>
          +8801611606095
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="color: white;" href="https://twitter.com/">
          <i class="fa-brands fa-twitter" aria-hidden="true"></i>
        </a>
      </li>
      <li class="nav-item">
        <a
          class="nav-link"
          style="color: white;"
          href="https://www.facebook.com/"
        >
          <i class="fa-brands fa-facebook" aria-hidden="true"></i>
        </a>
      </li>
      <li class="nav-item">
        <a
          class="nav-link"
          style="color: white;"
          href="https://www.instagram.com/"
        >
          <i class="fa-brands fa-instagram" aria-hidden="true"></i>
        </a>
      </li>
      <li class="nav-item">
        <a
          class="nav-link"
          style="color: white;"
          href="https://www.youtube.com/"
        >
          <i class="fa-brands fa-youtube" aria-hidden="true"></i>
        </a>
      </li>
    </ul>
  </div>
  <div class="col-lg-12 col-md-12 col-sm-12 p-2">
    <ul class="nav justify-content-center">
      <li class="nav-item">
        <img
          src="../../../../public/images/nasir-logo.png"
          alt=""
          style="width: 120px; height: 80px;"
        />
      </li>
      <li class="nav-item">
        <a
          class="nav-link active"
          style="color: RGB(47, 137, 252); font-size: 25px;"
          href="#"
        >
          <i class="fa-solid fa-location-dot" aria-hidden="true"></i>
        </a>
      </li>
      <li class="nav-item mt-2">
        <p style="color: RGB(47, 137, 252); font-size: 13px;">
          <b>
            Address : Avenue Dental Care 3A, Satmasjid Road (Opposite Bank Asia,
            Lalmatia) Dhaka 1205
          </b>
          <br />
          Bangladesh ENT Hospital Ltd. 4/1-A , Sobhanbag, Mirpur Road, Dhaka
          1207
        </p>
      </li>
      <li class="nav-item">
        <a
          class="nav-link active"
          style="color: RGB(47, 137, 252); font-size: 25px;"
          href="#"
        >
          <i class="fa-solid fa-envelope" aria-hidden="true"></i>
        </a>
      </li>
      <li class="nav-item mt-2">
        <p style="color: RGB(47, 137, 252); font-size: 13px;">
          <b>
            nasiruddin200@yahoo.com
            <br />
            info@drnasiruddin.com
          </b>
        </p>
      </li>
    </ul>
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
          <i
            class="fa-solid fa-calendar-days"
            style="color: white; font-size: 30px;"
          ></i>
          <p style="float: right; padding-left: 20px;">
            <b>MAKE AN APPOINTMENT</b>
            <br />
            IT'S SO FAST
          </p>
        </router-link>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
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
</style>
