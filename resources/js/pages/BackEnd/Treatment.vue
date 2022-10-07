<template>
  <div class="card">
    <div class="card-header">
      <h3>Treatment Portfolio Entry</h3>
    </div>
    <form
      @submit.prevent
      method="post"
      id="myForm"
      enctype="multipart/form-data"
    >
      <div class="card-body">
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="form-group">
              <label for="name">Disease Name</label>
              <input class="form-control" v-model="formData.name" />
            </div>
            <div class="form-group">
              <label for="description">Description</label>
              <textarea
                name="description"
                class="form-control"
                v-model="formData.description"
                rows="7"
              ></textarea>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-3">
            <div>
              <div v-if="!bimageSelected">
                <img
                  :src="`/${formData.BeforeOperationImage}`"
                  class="img-fluid BeforeOperationImage"
                />
              </div>
              <div
                class="BeforeOperationImage"
                :class="!bimageSelected ? 'hidden' : ''"
              >
                <img src id="target1" class="img-fluid" />
              </div>
            </div>
            <div class="form-group">
              <div class="form-group">
                <label for="BeforeOperationImage">
                  Before Operation Image
                </label>
                <input
                  type="file"
                  class="form-control"
                  name="BeforeOperationImage"
                  id="src1"
                  @input="showBeforeOpImage"
                />
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-3">
            <div>
              <div v-if="!aimageSelected">
                <img
                  :src="`/${formData.AfterOperationImage}`"
                  class="img-fluid AfterOperationImage"
                />
              </div>
              <div
                class="AfterOperationImage"
                :class="!aimageSelected ? 'hidden' : ''"
              >
                <img src id="target2" class="img-fluid" />
              </div>
            </div>
            <div class="form-group">
              <div class="form-group">
                <label for="AfterOperationImage">
                  After Operation Image
                </label>
                <input
                  type="file"
                  class="form-control"
                  name="AfterOperationImage"
                  id="src2"
                  @input="showAfterOpImage"
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
        <th style="width: 5%; text-align: center;">SL No.</th>
        <th style="width: 10%; text-align: center;">Disease Title</th>
        <th style="width: 25%; text-align: center;">Description</th>
        <th style="width: 15%; text-align: center;">Before Operation</th>
        <th style="width: 15%; text-align: center;">After Operation</th>
        <th style="width: 25%; text-align: center;">Action</th>
      </tr>
      <tr v-for="(item, index) in treatmentsList" :key="index">
        <td style="text-align: center;">{{ index + 1 }}</td>
        <td style="text-align: center;">{{ item.name }}</td>
        <td style="text-align: center; text-align: justify;">
          {{ item.description }}
        </td>
        <td style="text-align: center;">
          <img
            :src="`storage/${item.beforeOperationImage}`"
            class="img-fluid BeforeOperationImageTable"
          />
        </td>
        <td style="text-align: center;">
          <img
            :src="`storage/${item.afterOperationImage}`"
            class="img-fluid AfterOperationImageTable"
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
            style="width: 5rem; height: 2rem; padding: 0;"
            class="btn btn-danger"
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
            <h4 class="card-header">Edit Treatment</h4>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="form-group">
                    <label for="name">Disease Name</label>
                    <input class="form-control" v-model="editingItem.name" />
                  </div>
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
                    <div v-if="!bimageSelectedEdit">
                      <img
                        :src="`storage/${editingItem.beforeOperationImage}`"
                        class="img-fluid BeforeOperationImage"
                      />
                    </div>
                    <div
                      class="BeforeOperationImage"
                      :class="!bimageSelectedEdit ? 'hidden' : ''"
                    >
                      <img
                        :src="`/${editingItem.BeforeOperationImageEdit}`"
                        id="target3"
                        class="img-fluid"
                      />
                    </div>
                    <label for="BeforeOperationImage">
                      Before Operation Image
                    </label>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div>
                    <div v-if="!aimageSelectedEdit">
                      <img
                        :src="`storage/${editingItem.afterOperationImage}`"
                        class="img-fluid AfterOperationImage"
                      />
                    </div>
                    <div
                      class="AfterOperationImage"
                      :class="!aimageSelectedEdit ? 'hidden' : ''"
                    >
                      <img
                        :src="`/${editingItem.AfterOperationImageEdit}`"
                        id="target4"
                        class="img-fluid"
                      />
                    </div>
                    <label for="AfterOperationImage">
                      After Operation Image
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
export default {
  data() {
    return {
      formData: {
        name: '',
        description: '',
        BeforeOperationImage: 'images/image-icon.jpg',
        AfterOperationImage: 'images/image-icon.jpg',
      },
      treatmentsList: [],
      bimageSelected: 0,
      bimageSelectedEdit: 0,
      aimageSelected: 0,
      aimageSelectedEdit: 0,
      editingItem: {
        name: '',
        description: '',
      },
    }
  },
  computed: {},
  methods: {
    showBeforeOpImage() {
      this.bimageSelected = 1
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
    showAfterOpImage() {
      this.aimageSelected = 1
      var src = document.getElementById('src2')
      var target = document.getElementById('target2')

      var fr = new FileReader()

      fr.onload = function (e) {
        target.src = this.result
      }
      src.addEventListener('change', function () {
        fr.readAsDataURL(src.files[0])
      })
    },
    submit() {
      let myForm = document.getElementById('myForm')
      let formData = new FormData(myForm)
      formData.append('name', this.formData.name)
      formData.append('description', this.formData.description)

      axios
        .post(`/save-treatments`, formData)
        .then((response) => {
          this.clear()
          window.alert('Data Saved!')
          this.isSubmitted = 0
          for (let key in this.formData) {
            if (key == 'BeforeOperationImage') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.bimageSelected = 0
            } else {
              this.formData[key] = ''
            }
            if (key == 'AfterOperationImage') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.aimageSelected = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src1 = document.getElementById('src1')
          var src2 = document.getElementById('src2')
          src1.value = ''
          src2.value = ''
          this.bimageSelected = 0
          this.aimageSelected = 0
          this.getTreatmentsList()
        })
        .catch((err) => {
          window.alert('Data Failed To Save!')
          this.bimageSelected = 0
          this.aimageSelected = 0
        })
    },
    edit(item) {
      for (let index in item) {
        this.editingItem[index] = item[index]
        this.bimageSelectedEdit = 0
        this.aimageSelectedEdit = 0
      }
      $('.modal').modal('toggle')
    },
    update() {
      axios
        .post(`/update-treatment/${this.editingItem.id}`, this.editingItem)
        .then((res) => {
          window.alert('Treatment Updated!')
          this.clear()
          this.getTreatmentsList()
        })
        .catch((err) => {
          window.alert('Data Failed To Save!')
        })
      $('.modal').modal('hide')
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
    clear() {
      ;(this.formData = {
        name: '',
        description: '',
      }),
        (this.editingItem = {
          name: '',
          description: '',
        })
    },
  },
  mounted() {
    this.getTreatmentsList()
  },
}
</script>

<style lang="scss" scoped>
.BeforeOperationImage,
.AfterOperationImage {
  padding: 15px;
  border: 1px solid #ededed;
  margin-bottom: 15px;
  width: 20rem;
  width: 20rem;
}
.BeforeOperationImageTable,
.AfterOperationImageTable {
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
