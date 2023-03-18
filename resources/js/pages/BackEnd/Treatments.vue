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
              <input
                class="form-control"
                :class="errors.hasOwnProperty('name') ? 'is-invalid' : ''"
                v-model="formData.name"
              />
              <span v-if="errors.hasOwnProperty('name')">
                {{ errors.name[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="description">Description</label>
              <textarea
                name="description"
                class="form-control"
                :class="
                  errors.hasOwnProperty('description') ? 'is-invalid' : ''
                "
                v-model="formData.description"
                rows="7"
              ></textarea>
              <span v-if="errors.hasOwnProperty('description')">
                {{ errors.description[0] }}
              </span>
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
    <table class="table table-dark table-striped table-responsive">
      <tr>
        <th style="text-align: center;">SL No.</th>
        <th style="text-align: center;">Disease Title</th>
        <th style="width: 30%; text-align: center;">Description</th>
        <th style="text-align: center;">Before Operation</th>
        <th style="text-align: center;">After Operation</th>
        <th style="text-align: center;">Action</th>
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
                      <img src id="target3" class="img-fluid" />
                    </div>
                    <input
                      type="file"
                      class="form-control"
                      name="BeforeOperationImage"
                      id="src3"
                      @input="showBeforeOpImageEdit"
                    />
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
                      <img src id="target4" class="img-fluid" />
                    </div>
                    <input
                      type="file"
                      class="form-control"
                      name="AfterOperationImage"
                      id="src4"
                      @input="showAfterOpImageEdit"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card-footer">
            <button
              class="btn btn-primary btn-sm"
              @click="updateTreatment(editingItem.id)"
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
            <h4 class="card-header">
              Delete Treatment {{ editingItem.name }}?
            </h4>
            <div class="card-footer">
              <button class="btn btn-success" data-dismiss="modal">
                No
              </button>
              <button
                class="btn btn-danger"
                @click="deleteTreatment(editingItem.id)"
              >
                Yes
              </button>
            </div>
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
        name: '',
        description: '',
        BeforeOperationImage: 'images/image-icon.jpg',
        AfterOperationImage: 'images/image-icon.jpg',
      },
      errors: {},
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
    showBeforeOpImageEdit() {
      this.bimageSelectedEdit = 1
      var src = document.getElementById('src3')
      var target = document.getElementById('target3')

      var fr = new FileReader()

      fr.onload = function (e) {
        target.src = this.result
      }
      src.addEventListener('change', function () {
        fr.readAsDataURL(src.files[0])
      })
    },
    showAfterOpImageEdit() {
      this.aimageSelectedEdit = 1
      var src = document.getElementById('src4')
      var target = document.getElementById('target4')

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
      formData.append('name', this.formData.name)
      formData.append('description', this.formData.description)

      axios
        .post(`/save-treatment`, formData)
        .then((response) => {
          this.clear()
          showSuccess('Treatment Saved')
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
          src1.value = 'images/image-icon.jpg'
          src2.value = 'images/image-icon.jpg'
          this.bimageSelected = 0
          this.aimageSelected = 0
          this.getTreatmentsList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
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
      $('#editModal').modal('toggle')
    },
    destroy(item) {
      for (let index in item) {
        this.editingItem[index] = item[index]
      }
      $('#deleteModal').modal('toggle')
    },
    updateTreatment(item) {
      this.errors = {}
      let myForm = document.getElementById('editForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      formData.append('name', this.editingItem.name)
      formData.append('description', this.editingItem.description)

      axios
        .post(`/update-treatment`, formData)
        .then((response) => {
          showSuccess('Treatment Updated')
          for (let key in this.formData) {
            if (key == 'BeforeOperationImage') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.bimageSelectedEdit = 0
            } else if (key == 'AfterOperationImage') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.aimageSelectedEdit = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src1 = document.getElementById('src3')
          var src2 = document.getElementById('src4')
          src1.value = ''
          src2.value = ''
          this.bimageSelectedEdit = 0
          this.aimageSelectedEdit = 0
          this.getTreatmentsList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
          this.bimageSelectedEdit = 0
          this.aimageSelectedEdit = 0
        })
      $('#editModal').modal('hide')
    },
    deleteTreatment(item) {
      this.errors = {}
      let myForm = document.getElementById('deleteForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      axios
        .post(`/delete-treatment`, formData)
        .then((response) => {
          showSuccess('Treatment Deleted!')
          this.getTreatmentsList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
        })
      $('#deleteModal').modal('hide')
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
