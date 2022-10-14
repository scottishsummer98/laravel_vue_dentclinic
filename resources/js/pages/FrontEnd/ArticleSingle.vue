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
</template>

<script>
import moment from 'moment'
export default {
  props: ['id'],
  data() {
    return {
      article: [],
    }
  },
  methods: {
    dateFormat(date) {
      return moment(date).format('MMMM d, YYYY')
    },
    getArticle() {
      axios
        .post(`/show-articles?type=singlearticle&id=${this.$route.params.id}`)
        .then((response) => {
          this.article = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    this.getArticle()
  },
}
</script>

<style>
.ArticleImage {
  padding: 2rem;
  border: 1px solid #ededed;
  width: 50rem;
}
</style>
