<template>
  <div class="card">
    <div class="card-header">
      <h3>Slider Image Entry</h3>
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
            <div>
              <div v-if="!imageSelected">
                <img
                  :src="`/${formData.SliderPicture}`"
                  class="img-fluid SliderPicture"
                />
              </div>
              <div
                class="SliderPicture"
                :class="!imageSelected ? 'hidden' : ''"
              >
                <img src id="target" class="img-fluid" />
              </div>
            </div>
            <div class="form-group">
              <div class="form-group">
                <label for="SliderPicture">
                  Slider Picture
                </label>
                <input
                  type="file"
                  class="form-control"
                  name="SliderPicture"
                  id="src"
                  @input="showImage"
                />
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="card-footer">
        <button class="float-right btn btn-success btn-sm" @click="submit">
          Save
        </button>
      </div>
    </form>
  </div>
  <div class="card">
    <table class="table table-dark table-striped">
      <tr>
        <th style="text-align: center;">SL No.</th>
        <th style="text-align: center;">Slider Image</th>
        <th style="text-align: center;">Action</th>
      </tr>
      <tr v-for="(item, index) in sliderList" :key="index">
        <td style="text-align: center;">{{ index + 1 }}</td>
        <td style="text-align: center;">
          <img
            :src="`../storage/${item.sliderPicture}`"
            class="img-fluid SliderPictureTable"
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
          <button
            style="width: 5rem; height: 2rem; padding: 0; margin-right: 0.5rem;"
            class="btn btn-danger"
            @click="destroy(item)"
          >
            Delete
          </button>
        </td>
      </tr>
    </table>
  </div>
  <div
    class="modal fade bd-example-modal-lg"
    tabindex="-1"
    role="dialog"
    aria-labelledby="myLargeModalLabel"
    aria-hidden="true"
    id="editModal"
  >
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <form
          @submit.prevent
          method="post"
          id="editForm"
          enctype="multipart/form-data"
        >
          <div class="card">
            <h4 class="card-header">Edit Slider Image</h4>
            <div class="card-body">
              <div v-if="!imageSelectedEdit">
                <img
                  :src="`storage/${editingItem.sliderPicture}`"
                  class="img-fluid SliderPictureEdit"
                />
              </div>
              <div
                class="SliderPictureEdit"
                :class="!imageSelectedEdit ? 'hidden' : ''"
              >
                <img src id="target1" class="img-fluid" />
              </div>
              <div class="form-group mt-5">
                <input
                  type="file"
                  class="form-control"
                  name="SliderPictureEdit"
                  id="src1"
                  @input="showSliderImage"
                />
              </div>
            </div>
          </div>
          <div class="card-footer">
            <button
              class="btn btn-primary btn-sm"
              @click="updateSliderImage(editingItem.id)"
            >
              Update
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div
    class="modal fade bd-example-modal-lg"
    tabindex="-1"
    role="dialog"
    aria-labelledby="myLargeModalLabel"
    aria-hidden="true"
    id="deleteModal"
  >
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <form
          @submit.prevent
          method="post"
          id="deleteForm"
          enctype="multipart/form-data"
        >
          <div class="card">
            <h4 class="card-header">Delete Slider Image?</h4>
            <div class="card-body">
              <div>
                <img
                  :src="`storage/${editingItem.sliderPicture}`"
                  class="img-fluid SliderPictureEdit"
                />
              </div>
            </div>
          </div>
          <div class="card-footer">
            <button class="btn btn-success" data-dismiss="modal">
              No
            </button>
            <button
              class="btn btn-danger"
              @click="deleteSliderImage(editingItem.id)"
            >
              Yes
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import { showSuccess, showError } from '../../helper'
export default {
  data() {
    return {
      formData: {
        SliderPicture: 'images/image-icon.jpg',
      },
      errors: {},
      sliderList: [],
      imageSelected: 0,
      imageSelectedEdit: 0,
      editingItem: {},
    }
  },
  computed: {},
  methods: {
    edit(item) {
      for (let index in item) {
        this.editingItem[index] = item[index]
        this.imageSelectedEdit = 0
      }
      $('#editModal').modal('toggle')
    },
    destroy(item) {
      for (let index in item) {
        this.editingItem[index] = item[index]
      }
      $('#deleteModal').modal('toggle')
    },
    showSliderImage() {
      this.imageSelectedEdit = 1
      var src = document.getElementById('src1')
      var target = document.getElementById('target1')
      var fr = new FileReader()
      fr.onload = function (e) {
        target.src = this.result
      }
      src.addEventListener('change', function () {
        fr.readAsDataURL(src.files[0])
      })
    },
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
    updateSliderImage(item) {
      this.errors = {}
      let myForm = document.getElementById('editForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      axios
        .post(`/update-slider-image`, formData)
        .then((response) => {
          showSuccess('Slider Image Updated')
          for (let key in this.formData) {
            if (key == 'sliderPicture') {
              this.formData[key] = 'images/image-icon.jpg'
              this.imageSelected = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src = document.getElementById('src1')
          src.value = ''
          this.imageSelected = 0
          this.getSlidersList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
          this.imageSelected = 0
        })
      $('#editModal').modal('hide')
    },
    deleteSliderImage(item) {
      this.errors = {}
      let myForm = document.getElementById('deleteForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      axios
        .post(`/delete-slider-image`, formData)
        .then((response) => {
          window.location.reload()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
          this.getSlidersList()
        })
      $('#deleteModal').modal('hide')
    },
    submit() {
      this.errors = {}
      let myForm = document.getElementById('myForm')
      let formData = new FormData(myForm)
      axios
        .post(`/save-slider-image`, formData)
        .then((response) => {
          window.location.reload()
          for (let key in this.formData) {
            if (key == 'SliderPicture') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.imageSelected = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src = document.getElementById('src')
          src.value = ''
          this.imageSelected = 0
          this.getSlidersList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
          this.imageSelected = 0
        })
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
  },
  mounted() {
    this.getSlidersList()
  },
}
</script>

<style lang="scss" scoped>
.SliderPicture {
  padding: 15px;
  border: 1px solid #ededed;
  margin-bottom: 15px;
  width: 20rem;
}
.SliderPictureEdit {
  padding: 15px;
  border: 1px solid #ededed;
  margin-bottom: 15px;
  width: 40rem;
}
.SliderPictureTable {
  padding: 10px;
  border: 1px solid #ededed;
  margin-bottom: 15px;
  width: 10rem;
}
.hidden {
  display: none;
}
</style>
