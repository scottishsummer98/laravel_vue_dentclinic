<template>
  <div class="article_front">
    <div class="col1_article_front">
      <div>
        <div class="searchbar_col1_article_front">
          <input
            v-model="searchKey"
            @input="typing = true"
            class="app-search__input form-control"
            type="search"
            placeholder="Search"
          />
        </div>
        <div
          style="border-bottom: 2px solid black; margin-bottom: 2rem;"
          v-for="(item, index) in articlesList.data"
          :key="index"
        >
          <div class="blog-meta big-meta">
            <img
              class="articleimage_col1_article_front"
              :src="`storage/${item.articleImage}`"
            />
            <h4>
              <router-link :to="`/articles/${item.id}`">
                {{ item.title }}
              </router-link>
            </h4>
            <h6>
              <i class="fa-solid fa-user"></i>
              {{ item.author }}
              <i class="fa-solid fa-clock"></i>
              {{ dateFormat(item.created_at) }}
            </h6>
          </div>
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
    <div class="col2_article_front">
      <div class="searchbar_col2_article_front">
        <input
          v-model="searchKey"
          @input="typing = true"
          class="app-search__input form-control"
          type="search"
          placeholder="Search"
        />
      </div>
      <div class="items_col2_article_front widget">
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
                <h6>
                  <i class="fa-solid fa-clock"></i>
                  {{ dateFormat(item.updated_at) }}
                </h6>
              </div>
            </router-link>
          </div>
        </div>
      </div>
    </div>
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
.articleimage_col1_article_front {
  width: 40rem;
  height: 20rem;
}
.article_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
  padding: 2rem 25rem;
}
.col1_article_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
  width: 65%;
}
.searchbar_col1_article_front {
  margin-bottom: 1rem;
  display: none;
}
.col2_article_front {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  width: 35%;
}
.items_col2_article_front {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}
/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .articleimage_col1_article_front {
    width: 25rem;
    height: 13rem;
  }
  .article_front {
    display: flex;
    flex-direction: row;
    gap: 1rem;
    padding: 2.5rem;
  }
  .col1_article_front {
    width: 55%;
  }
  .col2_article_front {
    width: 45%;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .articleimage_col1_article_front {
    width: 21.5rem;
    height: 13rem;
  }
  .article_front {
    display: flex;
    flex-direction: column;
    gap: 1rem;
    padding: 1.5rem;
  }
  .col1_article_front {
    width: 100%;
  }
  .col2_article_front {
    width: 100%;
  }
  .searchbar_col1_article_front {
    display: block;
  }
  .searchbar_col2_article_front {
    display: none;
  }
}
</style>
