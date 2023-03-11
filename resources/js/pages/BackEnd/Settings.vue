<template>
  <div class="card">
    <div class="card-header">
      <h3>Settings</h3>
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
              <label for="contactno1">Contact No 1</label>
              <input
                class="form-control"
                type="text"
                :class="errors.hasOwnProperty('contactno1') ? 'is-invalid' : ''"
                v-model="formData.contactno1"
              />
              <span v-if="errors.hasOwnProperty('contactno1')">
                {{ errors.contactno1[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="contactno2">Contact No 2 (Optional)</label>
              <input
                class="form-control"
                type="text"
                :class="errors.hasOwnProperty('contactno2') ? 'is-invalid' : ''"
                v-model="formData.contactno2"
              />
              <span v-if="errors.hasOwnProperty('contactno2')">
                {{ errors.contactno2[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="address1">Address 1</label>
              <textarea
                class="form-control"
                type="text"
                rows="3"
                :class="errors.hasOwnProperty('address1') ? 'is-invalid' : ''"
                v-model="formData.address1"
              ></textarea>
              <span v-if="errors.hasOwnProperty('address1')">
                {{ errors.address1[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="address2">Address 2 (Optional)</label>
              <textarea
                class="form-control"
                type="text"
                rows="3"
                :class="errors.hasOwnProperty('address2') ? 'is-invalid' : ''"
                v-model="formData.address2"
              ></textarea>
              <span v-if="errors.hasOwnProperty('address2')">
                {{ errors.address2[0] }}
              </span>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
              <label for="email1">Email Address 1</label>
              <input
                class="form-control"
                type="text"
                :class="errors.hasOwnProperty('email1') ? 'is-invalid' : ''"
                v-model="formData.email1"
              />
              <span v-if="errors.hasOwnProperty('email1')">
                {{ errors.email1[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="email2">Email Address 2 (Optional)</label>
              <input
                class="form-control"
                type="text"
                :class="errors.hasOwnProperty('email2') ? 'is-invalid' : ''"
                v-model="formData.email2"
              />
              <span v-if="errors.hasOwnProperty('email2')">
                {{ errors.email2[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="twitterlink">Twitter Link</label>
              <input
                class="form-control"
                type="text"
                :class="
                  errors.hasOwnProperty('twitterlink') ? 'is-invalid' : ''
                "
                v-model="formData.twitterlink"
              />
              <span v-if="errors.hasOwnProperty('twitterlink')">
                {{ errors.twitterlink[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="fblink">Facebook Link</label>
              <input
                class="form-control"
                type="text"
                :class="errors.hasOwnProperty('fblink') ? 'is-invalid' : ''"
                v-model="formData.fblink"
              />
              <span v-if="errors.hasOwnProperty('fblink')">
                {{ errors.fblink[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="instagramlink">Instagram Link</label>
              <input
                class="form-control"
                type="text"
                :class="
                  errors.hasOwnProperty('instagramlink') ? 'is-invalid' : ''
                "
                v-model="formData.instagramlink"
              />
              <span v-if="errors.hasOwnProperty('instagramlink')">
                {{ errors.instagramlink[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="youtubelink">Youtube Link</label>
              <input
                class="form-control"
                type="text"
                :class="
                  errors.hasOwnProperty('youtubelink') ? 'is-invalid' : ''
                "
                v-model="formData.youtubelink"
              />
              <span v-if="errors.hasOwnProperty('youtubelink')">
                {{ errors.youtubelink[0] }}
              </span>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div>
              <div v-if="!imageSelected">
                <img
                  :src="`/${formData.LogoPicture}`"
                  class="img-fluid LogoPicture"
                />
              </div>
              <div class="LogoPicture" :class="!imageSelected ? 'hidden' : ''">
                <img src id="target" class="img-fluid" />
              </div>
            </div>
            <div class="form-group">
              <div class="form-group">
                <label for="LogoPicture">
                  Logo
                </label>
                <input
                  type="file"
                  class="form-control"
                  name="LogoPicture"
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
        <th style="text-align: center;">Logo</th>
        <th style="text-align: center;">Contact No</th>
        <th style="text-align: center;">Email</th>
        <th style="text-align: center;">Address</th>
        <th style="text-align: center;">Social Links</th>
        <th style="text-align: center;">Action</th>
      </tr>
      <tr v-for="(item, index) in settingsList" :key="index">
        <td style="text-align: center;">{{ index + 1 }}</td>
        <td style="text-align: center;">
          <img
            :src="`../storage/${item.logo}`"
            class="img-fluid LogoPicturePictureTable"
          />
        </td>
        <td style="text-align: center;">
          {{ item.contactno1 }} , {{ item.contactno2 }}
        </td>
        <td style="text-align: center;">
          {{ item.email1 }} , {{ item.email2 }}
        </td>
        <td style="text-align: center;">
          {{ item.address1 }} , {{ item.address2 }}
        </td>
        <td style="text-align: center;">
          {{ item.twitterlink }} - {{ item.fblink }} -
          {{ item.instagramlink }} -
          {{ item.youtubelink }}
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
            <h4 class="card-header">Edit Settings</h4>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3">
                  <div class="form-group">
                    <label for="contactno1">Contact No 1</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.contactno1"
                    />
                  </div>
                  <div class="form-group">
                    <label for="contactno2">Contact No 2 (Optional)</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.contactno2"
                    />
                  </div>
                  <div class="form-group">
                    <label for="address1">Address 1</label>
                    <textarea
                      class="form-control"
                      type="text"
                      rows="3"
                      v-model="editingItem.address1"
                    ></textarea>
                  </div>
                  <div class="form-group">
                    <label for="address2">Address 2 (Optional)</label>
                    <textarea
                      class="form-control"
                      type="text"
                      rows="3"
                      v-model="editingItem.address2"
                    ></textarea>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                  <div class="form-group">
                    <label for="email1">Email Address 1</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.email1"
                    />
                  </div>
                  <div class="form-group">
                    <label for="email2">Email Address 2 (Optional)</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.email2"
                    />
                  </div>
                  <div class="form-group">
                    <label for="twitterlink">Twitter Link</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.twitterlink"
                    />
                  </div>
                  <div class="form-group">
                    <label for="fblink">Facebook Link</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.fblink"
                    />
                  </div>
                  <div class="form-group">
                    <label for="instagramlink">Instagram Link</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.instagramlink"
                    />
                  </div>
                  <div class="form-group">
                    <label for="youtubelink">Youtube Link</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.youtubelink"
                    />
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4">
                  <div>
                    <div v-if="!imageSelectedEdit">
                      <img
                        :src="`../storage/${editingItem.logo}`"
                        class="img-fluid LogoPicture"
                      />
                    </div>
                    <div
                      class="LogoPicture"
                      :class="!imageSelectedEdit ? 'hidden' : ''"
                    >
                      <img src id="target1" class="img-fluid" />
                    </div>
                    <div class="form-group mt-5">
                      <input
                        type="file"
                        class="form-control"
                        name="LogoPicture"
                        id="src1"
                        @input="showImageEdit"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <button
                class="btn btn-primary btn-sm"
                @click="updateSettings(editingItem.id)"
              >
                Update
              </button>
            </div>
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
            <h4 class="card-header">Delete Settings?</h4>
            <div class="card-body">
              <div>
                <img
                  :src="`../storage/${editingItem.logo}`"
                  class="img-fluid LogoPicture"
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
              @click="deleteSettings(editingItem.id)"
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
        LogoPicture: 'images/image-icon.jpg',
        contactno1: '',
        contactno2: '',
        email1: '',
        email2: '',
        address1: '',
        address2: '',
        twitterlink: '',
        fblink: '',
        instagramlink: '',
        youtubelink: '',
      },
      errors: {},
      settingsList: [],
      imageSelected: 0,
      imageSelectedEdit: 0,
      editingItem: {
        contactno1: '',
        contactno2: '',
        email1: '',
        email2: '',
        address1: '',
        address2: '',
        twitterlink: '',
        fblink: '',
        instagramlink: '',
        youtubelink: '',
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
    showImageEdit() {
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
    submit() {
      this.errors = {}
      let myForm = document.getElementById('myForm')
      let formData = new FormData(myForm)
      formData.append('contactno1', this.formData.contactno1)
      formData.append('contactno2', this.formData.contactno2)
      formData.append('email1', this.formData.email1)
      formData.append('email2', this.formData.email2)
      formData.append('address1', this.formData.address1)
      formData.append('address2', this.formData.address2)
      formData.append('twitterlink', this.formData.twitterlink)
      formData.append('fblink', this.formData.fblink)
      formData.append('instagramlink', this.formData.instagramlink)
      formData.append('youtubelink', this.formData.youtubelink)
      axios
        .post(`/save-settings`, formData)
        .then((response) => {
          this.clear()
          showSuccess('Settings Saved')
          this.isSubmitted = 0
          for (let key in this.formData) {
            if (key == 'LogoPicture') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.imageSelected = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src = document.getElementById('src')
          src.value = ''
          this.imageSelected = 0
          this.getSettingsList()
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
      $('#editModal').modal('toggle')
    },
    destroy(item) {
      for (let index in item) {
        this.editingItem[index] = item[index]
      }
      $('#deleteModal').modal('toggle')
    },
    updateSettings(item) {
      this.errors = {}
      let myForm = document.getElementById('editForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      formData.append('contactno1', this.editingItem.contactno1)
      formData.append('contactno2', this.editingItem.contactno2)
      formData.append('email1', this.editingItem.email1)
      formData.append('email2', this.editingItem.email2)
      formData.append('address1', this.editingItem.address1)
      formData.append('address2', this.editingItem.address2)
      formData.append('twitterlink', this.editingItem.twitterlink)
      formData.append('fblink', this.editingItem.fblink)
      formData.append('instagramlink', this.editingItem.instagramlink)
      formData.append('youtubelink', this.editingItem.youtubelink)

      axios
        .post(`/update-settings`, formData)
        .then((response) => {
          showSuccess('Settings Updated')
          for (let key in this.formData) {
            if (key == 'LogoPicture') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.imageSelectedEdit = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src = document.getElementById('src1')
          src.value = ''
          this.imageSelectedEdit = 0
          this.getSettingsList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
          this.imageSelectedEdit = 0
        })
      $('#editModal').modal('hide')
    },
    deleteSettings(item) {
      this.errors = {}
      let myForm = document.getElementById('deleteForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      axios
        .post(`/delete-settings`, formData)
        .then((response) => {
          showSuccess('Settings Deleted!')
          this.getSettingsList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
        })
      $('#deleteModal').modal('hide')
    },
    getSettingsList() {
      axios
        .post(`/show-settings`)
        .then((response) => {
          this.settingsList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    clear() {
      ;(this.formData = {
        LogoPicture: 'images/image-icon.jpg',
        contactno1: '',
        contactno2: '',
        email1: '',
        email2: '',
        address1: '',
        address2: '',
        twitterlink: '',
        fblink: '',
        instagramlink: '',
        youtubelink: '',
      }),
        (this.editingItem = {
          contactno1: '',
          contactno2: '',
          email1: '',
          email2: '',
          address1: '',
          address2: '',
          twitterlink: '',
          fblink: '',
          instagramlink: '',
          youtubelink: '',
        })
    },
  },
  mounted() {
    this.getSettingsList()
  },
}
</script>

<style lang="scss" scoped>
.LogoPicture {
  padding: 15px;
  border: 1px solid #ededed;
  margin-bottom: 15px;
  width: 20rem;
  width: 20rem;
}
.LogoPictureTable {
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
