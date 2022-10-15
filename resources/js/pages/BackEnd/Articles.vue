<template>
  <div class="card">
    <div class="card-header">
      <h3>Article Entry</h3>
    </div>
    <form
      @submit.prevent
      method="post"
      id="myForm"
      enctype="multipart/form-data"
    >
      <div class="card-body">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
              <label for="author">Article Author</label>
              <input
                class="form-control"
                :class="errors.hasOwnProperty('author') ? 'is-invalid' : ''"
                v-model="formData.author"
              />
              <span v-if="errors.hasOwnProperty('author')">
                {{ errors.author[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="title">Article Title</label>
              <input
                class="form-control"
                :class="errors.hasOwnProperty('title') ? 'is-invalid' : ''"
                v-model="formData.title"
              />
              <span v-if="errors.hasOwnProperty('title')">
                {{ errors.title[0] }}
              </span>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
              <label for="description">Article Description</label>
              <textarea
                name="description"
                class="form-control"
                :class="
                  errors.hasOwnProperty('description') ? 'is-invalid' : ''
                "
                v-model="formData.description"
                rows="13"
              ></textarea>
              <span v-if="errors.hasOwnProperty('description')">
                {{ errors.description[0] }}
              </span>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div>
              <div v-if="!imageSelected">
                <img
                  :src="`/${formData.ArticleImage}`"
                  class="img-fluid ArticleImage"
                />
              </div>
              <div class="ArticleImage" :class="!imageSelected ? 'hidden' : ''">
                <img src id="target" class="img-fluid" />
              </div>
            </div>
            <div class="form-group">
              <div class="form-group">
                <label for="ArticleImage">
                  Article Image
                </label>
                <input
                  type="file"
                  class="form-control"
                  name="ArticleImage"
                  id="src"
                  @input="showImage"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="card-footer">
        <button class="float-right btn btn-primary btn-sm" @click="submit">
          Save
        </button>
        <button
          style="margin-right: 5px;"
          class="float-right btn btn-warning btn-sm"
          @click="clear"
        >
          Reset
        </button>
      </div>
    </form>
  </div>
  <div class="card">
    <table class="table table-dark table-striped">
      <tr>
        <th style="text-align: center;">SL No.</th>
        <th style="text-align: center;">Author</th>
        <th style="text-align: center;">Title</th>
        <th style="width: 30%; text-align: center;">Description</th>
        <th style="text-align: center;">Image</th>
        <th style="text-align: center;">Action</th>
      </tr>
      <tr v-for="(item, index) in articlesList.data" :key="index">
        <td style="text-align: center;">{{ serialNumber + index }}</td>
        <td style="text-align: center;">{{ item.author }}</td>
        <td style="text-align: center;">{{ item.title }}</td>
        <td style="text-align: center; text-align: justify;">
          {{ item.description.substring(0, 100) + '......' }}
        </td>
        <td style="text-align: center;">
          <img
            :src="`storage/${item.articleImage}`"
            class="img-fluid ArticleImageTable"
          />
        </td>
        <td style="text-align: center;">
          <button
            style="width: 5rem; height: 2rem; padding: 0; margin-right: 0.5rem;"
            class="btn btn-primary"
            @click="edit(item)"
          >
            Edit
          </button>
        </td>
      </tr>
    </table>
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
  <div
    class="modal fade bd-example-modal-lg"
    tabindex="-1"
    role="dialog"
    aria-labelledby="myLargeModalLabel"
    aria-hidden="true"
  >
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <form
          @submit.prevent
          method="post"
          id="myEditForm"
          enctype="multipart/form-data"
        >
          <div class="card">
            <h4 class="card-header">Edit Article</h4>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="name">Article Author</label>
                    <input class="form-control" v-model="editingItem.author" />
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="name">Article Title</label>
                    <input class="form-control" v-model="editingItem.title" />
                  </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="form-group">
                    <label for="description">Description</label>
                    <textarea
                      name="description"
                      class="form-control"
                      v-model="editingItem.description"
                      rows="5"
                    ></textarea>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div>
                    <div v-if="!imageSelectedEdit">
                      <img
                        :src="`storage/${editingItem.articleImage}`"
                        class="img-fluid ArticleImage"
                      />
                    </div>
                    <div
                      class="ArticleImage"
                      :class="!imageSelectedEdit ? 'hidden' : ''"
                    >
                      <img
                        :src="`/${editingItem.ArticleImage}`"
                        id="target3"
                        class="img-fluid"
                      />
                    </div>
                    <label for="BeforeOperationImage">
                      Article Image
                    </label>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card-footer">
            <button class="btn btn-primary btn-sm" @click="update">
              Update
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import { showSuccess, showError } from '../../helper'
import pagination from 'laravel-vue-pagination'
export default {
  components: {
    pagination,
  },
  data() {
    return {
      formData: {
        author: '',
        title: '',
        description: '',
        ArticleImage: 'images/image-icon.jpg',
      },
      errors: {},
      serialNumber: 1,
      articlesList: {},
      imageSelected: 0,
      imageSelectedEdit: 0,
      editingItem: {
        author: '',
        title: '',
        description: '',
      },
    }
  },
  computed: {},
  methods: {
    showImage() {
      this.imageSelected = 1
      var src = document.getElementById('src')
      var target = document.getElementById('target')

      var fr = new FileReader()

      fr.onload = function (e) {
        target.src = this.result
      }
      src.addEventListener('change', function () {
        fr.readAsDataURL(src.files[0])
      })
    },
    submit() {
      this.errors = {}
      let myForm = document.getElementById('myForm')
      let formData = new FormData(myForm)
      formData.append('author', this.formData.author)
      formData.append('title', this.formData.title)
      formData.append('description', this.formData.description)

      axios
        .post(`/save-articles`, formData)
        .then((response) => {
          this.clear()
          showSuccess('Article Saved')
          this.isSubmitted = 0
          for (let key in this.formData) {
            if (key == 'ArticleImage') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.imageSelected = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src = document.getElementById('src')
          src.value = ''
          this.imageSelected = 0
          this.getArticlesList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
          this.imageSelected = 0
        })
    },
    edit(item) {
      for (let index in item) {
        this.editingItem[index] = item[index]
        this.imageSelectedEdit = 0
      }
      $('.modal').modal('toggle')
    },
    update() {
      axios
        .post(`/update-article/${this.editingItem.id}`, this.editingItem)
        .then((res) => {
          showSuccess('Article Updated')
          this.clear()
          this.getArticlesList()
        })
        .catch((err) => {
          showError('Failed To Update Article')
        })
      $('.modal').modal('hide')
    },
    getArticlesList(page = 1) {
      axios
        .post(`/show-articles?page=${page}&type=backendarticles`)
        .then((response) => {
          this.articlesList = response.data
          this.serialNumber = parseInt(response.data.from)
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    clear() {
      ;(this.formData = {
        author: '',
        title: '',
        description: '',
      }),
        (this.editingItem = {
          author: '',
          title: '',
          description: '',
        })
    },
  },
  mounted() {
    this.getArticlesList()
  },
}
</script>

<style lang="scss" scoped>
.ArticleImage {
  padding: 15px;
  border: 1px solid #ededed;
  margin-bottom: 15px;
  width: 20rem;
  width: 20rem;
}
.ArticleImageTable {
  padding: 10px;
  border: 1px solid #ededed;
  margin-bottom: 15px;
  width: 10rem;
  width: 10rem;
}
.hidden {
  display: none;
}
</style>
