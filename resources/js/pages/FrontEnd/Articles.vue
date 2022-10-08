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
    v-for="(item, index) in articlesList.data"
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
        <div class="col-lg-8 col-md-8 col-sm-8">
          <p style="text-align: justify;">{{ item.description }}</p>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <img
            :src="`storage/${item.articleImage}`"
            class="img-fluid ArticleImage"
          />
        </div>
      </div>
    </div>
  </div>
  <div
    class="card"
    style="
      width: 75%;
      margin-right: auto;
      margin-left: auto;
      margin-top: 10px;
      margin-bottom: 10px;
    "
  >
    <pagination
      :data="articlesList"
      :align="'right'"
      :limit="0"
      @pagination-change-page="getArticlesList"
    >
      <template #prev-nav>
        <span>Previous</span>
      </template>
      <template #next-nav>
        <span>Next</span>
      </template>
    </pagination>
  </div>
</template>

<script>
import moment from 'moment'
import pagination from 'laravel-vue-pagination'
export default {
  components: {
    pagination,
  },
  data() {
    return {
      articlesList: {},
    }
  },
  computed: {},
  methods: {
    dateFormat(date) {
      return moment(date).format('MMMM d, YYYY')
    },
    getArticlesList(page = 1) {
      axios
        .post(`/show-articles?page=${page}`)
        .then((response) => {
          this.articlesList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    this.getArticlesList()
  },
}
</script>

<style>
.ArticleImage {
  padding: 15px;
  border: 1px solid #ededed;
  width: 30rem;
  width: 30rem;
}
</style>
