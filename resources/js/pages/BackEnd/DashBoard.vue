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
      </tr>
      <tr v-for="(item, index) in sliderList" :key="index">
        <td style="text-align: center;">{{ index + 1 }}</td>
        <td style="text-align: center;">
          <img
            :src="`../storage/${item.sliderPicture}`"
            class="img-fluid SliderPictureTable"
          />
        </td>
      </tr>
    </table>
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
      axios
        .post(`/save-slider-image`, formData)
        .then((response) => {
          this.clear()
          showSuccess('Slider Image Saved')
          this.isSubmitted = 0
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
  width: 20rem;
}
.SliderPictureTable {
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
