<template>
  <section class="section" style="margin-top: 15px;">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
          <div class="page-wrapper">
            <div class="blog-list clearfix">
              <div
                class="blog-box row"
                v-for="(item, index) in articlesList.data"
                :key="index"
              >
                <div class="blog-meta big-meta">
                  <img
                    :src="`storage/${item.articleImage}`"
                    style="width: 55rem; height: 27rem;"
                    class="img-fluid ArticleImage"
                  />
                  <h4>
                    <router-link :to="`/articles/${item.id}`">
                      {{ item.title }}
                    </router-link>
                  </h4>
                  <h6>
                    👤 {{ item.author }} 📆
                    {{ dateFormat(item.created_at) }}
                  </h6>
                </div>
                <hr class="invis" />
              </div>
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
          </div>
        </div>

        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
          <div class="sidebar">
            <div class="widget">
              <input
                v-model="searchKey"
                @input="typing = true"
                class="app-search__input form-control"
                type="search"
                placeholder="Search"
              />
            </div>
            <div class="widget">
              <h2 class="widget-title">Popular Posts</h2>
              <div class="blog-list-widget">
                <div
                  class="list-group"
                  v-for="(item, index) in articlesListLatest"
                  :key="index"
                >
                  <router-link
                    :to="`/articles/${item.id}`"
                    class="list-group-item list-group-item-action flex-column align-items-start"
                  >
                    <div class="w-100 justify-content-between">
                      <h5 class="mb-1">{{ item.title }}</h5>
                      <h6>📆 {{ dateFormat(item.updated_at) }}</h6>
                    </div>
                  </router-link>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
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
      articlesListLatest: [],
      searchKey: '',
    }
  },
  computed: {},
  methods: {
    dateFormat(date) {
      return moment(date).format('MMMM d, YYYY')
    },
    getArticlesList(page = 1, searchKey = '') {
      axios
        .post(
          `/show-articles?page=${page}&type=frontendarticles&search=${searchKey}`,
        )
        .then((response) => {
          this.articlesList = response.data
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
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
  },
  mounted() {
    this.getArticlesList()
    this.getArticlesListLatest()
  },
  watch: {
    searchKey: _.debounce(function () {
      this.typing = false
      this.getArticlesList(1, this.searchKey)
    }, 700),
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
