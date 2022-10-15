<template>
  <div
    class="card"
    style="
      width: 75%;
      margin-right: auto;
      margin-left: auto;
      margin-top: 10px;
      margin-bottom: 10px;
    "
    v-for="(item, index) in article"
    :key="index"
  >
    <div class="card-header fa-2x text-primary border-bottom">
      <h3>{{ item.title }}</h3>

      <h5>
        👤 {{ item.author }} 📆
        {{ dateFormat(item.created_at) }}
      </h5>
    </div>
    <div class="card-body text-center">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
          <p style="text-align: justify;">{{ item.description }}</p>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6">
          <img
            :src="`../storage/${item.articleImage}`"
            class="img-fluid ArticleImage"
          />
        </div>
      </div>
    </div>
  </div>

  <div class="card p-2 mb-5 sliderBottom">
    <h3 class="text-uppercase m-4" style="padding-left: 12%;">
      More Articles
    </h3>
    <div class="container">
      <swiper :slides-per-view="4" :space-between="10">
        <swiper-slide v-for="(item, index) in articlesListLatest" :key="index">
          <div class="blog-list-widget">
            <div class="list-group">
              <router-link
                :to="`/articles/${item.id}`"
                class="list-group-item list-group-item-action flex-column align-items-start"
                style="height: 15rem;"
              >
                <img
                  :src="`../storage/${item.articleImage}`"
                  class="img-fluid ArticleImageSlider mb-1"
                />
                <h5 class="mb-1">{{ item.title }}</h5>
                <h6>📆 {{ dateFormat(item.updated_at) }}</h6>
              </router-link>
            </div>
          </div>
        </swiper-slide>
      </swiper>
    </div>
  </div>
</template>

<script>
import moment from 'moment'
// Import Swiper Vue.js components
import { Swiper, SwiperSlide } from 'swiper/vue'
// Import Swiper styles
// Import Swiper styles
import 'swiper/css'
import 'swiper/css/navigation'
import 'swiper/css/pagination'
import 'swiper/css/scrollbar'
import 'swiper/css'
export default {
  components: {
    Swiper,
    SwiperSlide,
  },
  setup() {
    return {}
  },
  props: ['id'],
  data() {
    return {
      article: [],
      articlesListLatest: [],
    }
  },
  methods: {
    dateFormat(date) {
      return moment(date).format('MMMM d, YYYY')
    },
    getArticle() {
      axios
        .post(
          `/show-articles?type=frontendsinglearticle&id=${this.$route.params.id}`,
        )
        .then((response) => {
          this.article = response.data
          this.getArticle()
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    getArticlesListSlider() {
      axios
        .post(`/show-articles?type=frontendarticleslider`)
        .then((response) => {
          this.articlesListLatest = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    this.getArticle()
    this.getArticlesListSlider()
  },
}
</script>

<style>
.ArticleImage {
  padding: 2rem;
  border: 1px solid #ededed;
  width: 50rem;
}
.ArticleImageSlider {
  border: 1px solid #ededed;
  width: 16rem;
  height: 8rem;
}
</style>
