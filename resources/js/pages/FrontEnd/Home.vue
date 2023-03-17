<template>
  <div>
    <swiper
      :slides-per-view="1"
      :navigation="true"
      :modules="modules"
      :autoplay="{
        delay: 5000,
        disableOnInteraction: false,
      }"
      :effect="'fade'"
      :loop="true"
    >
      <swiper-slide v-for="(item, index) in sliderList" :key="index">
        <img class="MainSlider" :src="`../storage/${item.sliderPicture}`" />
      </swiper-slide>
    </swiper>
  </div>

  <!-- Article -->
  <div class="card">
    <div class="articleSection">
      <div>
        <h3 class="text-uppercase mb-3">
          ARTICLE
        </h3>
        <h6
          class="border-bottom p-3"
          v-for="(item, index) in articlesListLatestLimited"
          :key="index"
        >
          <router-link
            :to="`/articles/${item.id}`"
            class="text-reset"
            style="text-decoration: none;"
          >
            <i
              class="fa fa-paperclip"
              aria-hidden="true"
              style="font-size: 20px;"
            ></i>
            {{ item.title }}
          </router-link>
        </h6>
      </div>
      <div>
        <img
          class="article_image_home_front"
          src="../../../../public/images/Article_img.jpeg"
          alt=""
        />
      </div>
    </div>
    <div class="text-center">
      <p>
        <router-link
          to="/articles"
          class="btn btn-primary"
          style="text-decoration: none;"
        >
          View All
        </router-link>
      </p>
    </div>
  </div>

  <!-- Intro -->
  <div class="card">
    <div class="introSection">
      <div class="introSectioncol1">
        <h3 class="text-uppercase mb-5">
          Welcome to Prof. Dr Nasir Uddin
        </h3>
        <div style="text-align: justify;">
          <p>
            Prof. Dr. Nasir Uddin Obtained Master of Surgery in Oral and
            Maxillofacial Surgery degree from University of Dhaka, Bangladesh in
            2010. He completed Bachelor of Dental Surgery (BDS) course from
            Dhaka Dental College in 1985. Obtaining the Fellowship award from
            Japan Dental Association in 1990 he got admission in Advanced
            Surgical Study Program in the Department of Oral and Maxillofacial
            Surgery at Osaka University.
          </p>
          <p class="mt-5">
            After completion of Bangladesh Civil Service (BCS) Examination he
            joined in Government service in 1995 and worked as a Dental Surgeon
            at Upazilla Health Complex, Murad Nagar, Comilla and Upazilla Health
            Complex, Doulatpur, Manikganj. He joined as a lecturer in the Dept.
            of Oral and Maxillofacial..........
          </p>
          <p class="mt-4">
            <router-link
              to="/about/aboutus"
              class="btn btn-outline-primary"
              style="text-decoration: none;"
            >
              Read More
            </router-link>
          </p>
        </div>
      </div>
      <div>
        <img
          class="intro_image_home_front"
          src="../../../../public/images/Dr-Nasir_uddin.png"
          alt=""
        />
      </div>
    </div>
  </div>

  <!-- Services -->
  <div class="card sliderBottom">
    <h3 class="text-uppercase mt-3" style="text-align: center;">
      OUR SERVICE & PRICE
    </h3>
    <div class="card-body" style="margin-left: auto; margin-right: auto;">
      <div class="row">
        <div class="col-md-4">
          <table
            class="table table-bordered"
            style="background-color: RGB(47, 137, 252); color: white;"
          >
            <tr v-for="(item, index) in servicesListCol1" :key="index">
              <th class="service_table_header_home_front">{{ item.type }}</th>
              <td class="service_table_body_home_front">{{ item.price }}</td>
            </tr>
          </table>
        </div>
        <div class="col-md-4">
          <table
            class="table table-bordered"
            style="background-color: RGB(47, 137, 252); color: white;"
          >
            <tr v-for="(item, index) in servicesListCol2" :key="index">
              <th class="service_table_header_home_front">{{ item.type }}</th>
              <td class="service_table_body_home_front">{{ item.price }}</td>
            </tr>
          </table>
        </div>
        <div class="col-md-4">
          <table
            class="table table-bordered"
            style="background-color: RGB(47, 137, 252); color: white;"
          >
            <tr v-for="(item, index) in servicesListCol3" :key="index">
              <th class="service_table_header_home_front">{{ item.type }}</th>
              <td class="service_table_body_home_front">{{ item.price }}</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>

  <!-- Why Choose Us -->
  <div class="bg-image2 p-3">
    <h3
      class="text-center text-uppercase m-5 sliderRight"
      style="padding-left: 12%;"
    >
      WHY CHOOSE US?
    </h3>
    <div class="wcucol_home_front">
      <div class="wcurow_home_front">
        <div class="wcuitem_home_front">
          <i
            class="fa fa-briefcase"
            style="color: RGB(47, 137, 252); font-size: 60px;"
          ></i>
          <div>
            <p><b>FINANCE OPTION</b></p>
            <p style="text-align: justify;">
              There are many ways to get free financial help and information.
            </p>
          </div>
        </div>
        <div class="wcuitem_home_front">
          <i
            class="fa fa-users"
            style="color: RGB(47, 137, 252); font-size: 60px;"
          ></i>
          <div>
            <p><b>QUALIFIED STAFF</b></p>
            <p style="text-align: justify;">
              Prof Dr Nasir Uddin has qualified and very caring Dentist doctors
              for you.
            </p>
          </div>
        </div>
      </div>
      <div class="wcurow_home_front">
        <div class="wcuitem_home_front">
          <i
            class="fa-regular fa-face-smile"
            style="color: RGB(47, 137, 252); font-size: 60px;"
          ></i>
          <div>
            <p><b>CREATING SMILES</b></p>
            <p style="text-align: justify;">
              Prof Dr Nasir Uddin creates beautiful smiles on your faces with
              painless treatment.
            </p>
          </div>
        </div>
        <div class="wcuitem_home_front">
          <i
            class="fa fa-magic"
            style="color: RGB(47, 137, 252); font-size: 60px;"
          ></i>
          <div>
            <p class="mb-3"><b>LATEST TECHNOLOGY</b></p>
            <p style="text-align: justify;">
              Prof Dr Nasir Uddin using latest technologies for giving you the
              best services.
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Treatment -->
  <div class="card p-2 mb-5 sliderBottom">
    <h3 class="text-center text-uppercase m-4">
      Treatment Blog
    </h3>
    <div class="container">
      <swiper
        :space-between="10"
        :breakpoints="{
          300: { slidesPerView: 1 },
          600: { slidesPerView: 2 },
          900: { slidesPerView: 4 },
        }"
      >
        <swiper-slide v-for="(item, index) in treatmentsList" :key="index">
          <div class="blog-list-widget">
            <div class="list-group">
              <router-link
                :to="`/treatments`"
                class="list-group-item list-group-item-action flex-column align-items-start"
                style="height: 20rem;"
              >
                <div class="treatmentitem_home_front">
                  <img
                    :src="`../storage/${item.beforeOperationImage}`"
                    class="img-fluid ImageSlider mb-1"
                  />
                  <h5 class="mb-1">{{ item.name }}</h5>
                </div>
                <h6 style="position: absolute; bottom: 0;">
                  <i class="fa-solid fa-clock"></i>
                  {{ dateFormat(item.updated_at) }}
                </h6>
              </router-link>
            </div>
          </div>
        </swiper-slide>
      </swiper>
      <div class="text-center mt-4">
        <p>
          <router-link
            to="/treatments"
            class="btn btn-primary p-2"
            style="text-decoration: none;"
          >
            View All
          </router-link>
        </p>
      </div>
    </div>
  </div>

  <!-- Video Gallery -->
  <div class="card p-5 m-3 sliderBottom">
    <h3 class="text-center text-uppercase m-4">Video Gallery</h3>
    <div class="container">
      <swiper
        :space-between="10"
        :breakpoints="{
          300: { slidesPerView: 1 },
          600: { slidesPerView: 1 },
          900: { slidesPerView: 3 },
        }"
      >
        <swiper-slide>
          <iframe
            class="videogall_home_front"
            src="https://www.youtube.com/embed/2mgDmvYRUPg"
          ></iframe>
        </swiper-slide>
        <swiper-slide>
          <iframe
            class="videogall_home_front"
            src="https://www.youtube.com/embed/1fIiPErBxkY"
          ></iframe>
        </swiper-slide>
        <swiper-slide>
          <iframe
            class="videogall_home_front"
            src="https://www.youtube.com/embed/1fIiPErBxkY"
          ></iframe>
        </swiper-slide>
        <swiper-slide>
          <iframe
            class="videogall_home_front"
            src="https://www.youtube.com/embed/1fIiPErBxkY"
          ></iframe>
        </swiper-slide>
      </swiper>
    </div>
    <div class="text-center mt-4">
      <p>
        <router-link
          to="#"
          class="btn btn-primary p-2"
          style="text-decoration: none;"
        >
          View All
        </router-link>
      </p>
    </div>
  </div>
</template>

<script>
import moment from 'moment'
// Import Swiper Vue.js components
import { Swiper, SwiperSlide } from 'swiper/vue'
import { EffectFade, Autoplay, Navigation } from 'swiper'
// Import Swiper styles
// Import Swiper styles
import 'swiper/css'
import 'swiper/css/navigation'
import 'swiper/css/pagination'
import 'swiper/css/scrollbar'
import 'swiper/css'
import 'swiper/css/effect-fade'
export default {
  components: {
    Swiper,
    SwiperSlide,
  },
  setup() {
    return {
      modules: [EffectFade, Autoplay, Navigation],
    }
  },
  data() {
    return {
      sliderList: [],
      articlesListLatest: [],
      articlesListLatestLimited: [],
      servicesList: [],
      servicesListCol1: [],
      servicesListCol2: [],
      servicesListCol3: [],
      treatmentsList: [],
    }
  },
  methods: {
    dateFormat(date) {
      return moment(date).format('MMMM d, YYYY')
    },
    getSlidersList() {
      axios
        .post(`/show-slider-images`)
        .then((response) => {
          this.sliderList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    getArticlesListLatest() {
      axios
        .post(`/show-articles?type=frontendarticlessidebar`)
        .then((response) => {
          this.articlesListLatest = response.data
          this.articlesListLatestLimited = this.articlesListLatest.slice(0, 5)
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    getServicesList() {
      axios
        .post(`/show-services`)
        .then((response) => {
          this.servicesList = response.data
          this.servicesListCol1 = this.servicesList.slice(0, 10)
          this.servicesListCol2 = this.servicesList.slice(10, 17)
          this.servicesListCol3 = this.servicesList.slice(17, 21)
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    getTreatmentsList() {
      axios
        .post(`/show-treatments`)
        .then((response) => {
          this.treatmentsList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    this.getSlidersList()
    this.getArticlesListLatest()
    this.getServicesList()
    this.getTreatmentsList()
  },
}
</script>

<style>
@keyframes slideInFromLeft {
  0% {
    transform: translateX(-100%);
  }
  100% {
    transform: translateX(0);
  }
}
@keyframes slideInFromRight {
  0% {
    transform: translateX(200%);
  }
  100% {
    transform: translateX(0);
  }
}
@keyframes slideInFromBottom {
  0% {
    transform: translateY(200%);
  }
  100% {
    transform: translateY(0);
  }
}
.article_image_home_front,
.intro_image_home_front {
  width: 100%;
  height: 90%;
}
.btn-primary {
  color: white;
  background-color: RGB(19, 145, 208);
}
.btn-primary :hover {
  background-color: white;
}
.btn-outline-primary {
  font-weight: bold;
  color: black;
  border: 2px solid RGB(47, 137, 252);
  border-radius: 0;
  padding: 10px 30px;
}
.table-bordered td {
  background-color: white;
  color: black;
}
.table-bordered td:hover {
  background-color: RGB(47, 137, 252);
  color: white;
}
.bg-image2 {
  background-image: url('../../../../public/images/why_choose_us.jpg');
  background-size: cover;
  background-color: rgba(207, 207, 216, 0.71);
  border: none;
}
.ImageSlider {
  border: 1px solid #ededed;
  width: 16rem;
  height: 12rem;
}
.MainSlider {
  width: 100%;
}
.articleSection {
  padding: 3rem;
  display: flex;
  flex-direction: row;
  gap: 4rem;
  justify-content: center;
}
.introSection {
  padding: 3rem;
  display: flex;
  flex-direction: row;
  gap: 4rem;
  justify-content: center;
}
.introSectioncol1 {
  width: 30%;
}
.wcuitem_home_front {
  display: flex;
  flex-direction: row;
  gap: 1rem;
  align-items: center;
  width: 60%;
}
.wcurow_home_front {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  padding: 1rem;
}
.wcucol_home_front {
  display: flex;
  flex-direction: row;
  padding: 2rem;
}
.treatmentitem_home_front {
  display: flex;
  flex-direction: column;
  align-items: center;
}
.videogall_home_front {
  width: 25rem;
  height: 23rem;
}
/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .MainSlider {
    width: 100%;
  }
  .articleSection {
    padding: 1rem;
    display: flex;
    flex-direction: row;
    gap: 1rem;
    justify-content: center;
  }
  .introSection {
    padding: 1rem;
    display: flex;
    flex-direction: column;
    gap: 1rem;
    justify-content: center;
  }
  .introSectioncol1 {
    width: 100%;
  }
  .service_table_header_home_front {
    width: 65%;
  }
  .service_table_body_home_front {
    width: 35%;
  }
  .wcuitem_home_front {
    display: flex;
    flex-direction: row;
    gap: 1rem;
    align-items: center;
    width: 100%;
  }
  .videogall_home_front {
    width: 43rem;
    height: 30rem;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .MainSlider {
    width: 100%;
  }
  .articleSection {
    padding: 1rem;
    display: flex;
    flex-direction: column;
    gap: 1rem;
    justify-content: center;
  }
  .introSection {
    padding: 1rem;
    display: flex;
    flex-direction: column;
    gap: 1rem;
    justify-content: center;
  }
  .introSectioncol1 {
    width: 100%;
  }
  .service_table_header_home_front {
    width: 70%;
  }
  .service_table_body_home_front {
    width: 30%;
  }
  .wcucol_home_front {
    flex-direction: column;
    padding: 1rem;
  }
  .videogall_home_front {
    width: 17rem;
    height: 10rem;
  }
}
</style>
