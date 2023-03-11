<template>
  <div class="card">
    <div class="card-header">
      <h3>Team Entry</h3>
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
              <label for="name">Doctor Name</label>
              <input
                class="form-control"
                type="text"
                :class="errors.hasOwnProperty('name') ? 'is-invalid' : ''"
                v-model="formData.name"
              />
              <span v-if="errors.hasOwnProperty('name')">
                {{ errors.name[0] }}
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
              <label for="linkedinlink">Linkedin Link</label>
              <input
                class="form-control"
                type="text"
                :class="
                  errors.hasOwnProperty('linkedinlink') ? 'is-invalid' : ''
                "
                v-model="formData.linkedinlink"
              />
              <span v-if="errors.hasOwnProperty('linkedinlink')">
                {{ errors.linkedinlink[0] }}
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
              <label for="gmaillink">Gmail Link</label>
              <input
                class="form-control"
                type="text"
                :class="errors.hasOwnProperty('gmaillink') ? 'is-invalid' : ''"
                v-model="formData.gmaillink"
              />
              <span v-if="errors.hasOwnProperty('gmaillink')">
                {{ errors.gmaillink[0] }}
              </span>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="form-group">
              <label for="desig">Doctor Designation</label>
              <textarea
                class="form-control"
                type="text"
                rows="3"
                :class="errors.hasOwnProperty('desig') ? 'is-invalid' : ''"
                v-model="formData.desig"
              ></textarea>
              <span v-if="errors.hasOwnProperty('desig')">
                {{ errors.desig[0] }}
              </span>
            </div>
            <div class="form-group">
              <label for="bio">Short Bio</label>
              <textarea
                class="form-control"
                type="text"
                rows="10"
                :class="errors.hasOwnProperty('bio') ? 'is-invalid' : ''"
                v-model="formData.bio"
              ></textarea>
              <span v-if="errors.hasOwnProperty('bio')">
                {{ errors.bio[0] }}
              </span>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div>
              <div v-if="!imageSelected">
                <img
                  :src="`/${formData.ProfilePicture}`"
                  class="img-fluid ProfilePicture"
                />
              </div>
              <div
                class="ProfilePicture"
                :class="!imageSelected ? 'hidden' : ''"
              >
                <img src id="target" class="img-fluid" />
              </div>
            </div>
            <div class="form-group">
              <div class="form-group">
                <label for="ProfilePicture">
                  Profile Picture
                </label>
                <input
                  type="file"
                  class="form-control"
                  name="ProfilePicture"
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
        <th style="text-align: center;">Doctor Name</th>
        <th style="text-align: center;">Doctor Designation</th>
        <th style="text-align: center;">Image</th>
        <th style="text-align: center;">Short Bio</th>
        <th style="text-align: center;">Social Links</th>
        <th style="text-align: center;">Action</th>
      </tr>
      <tr v-for="(item, index) in teamList" :key="index">
        <td style="text-align: center;">{{ index + 1 }}</td>
        <td style="text-align: center;">{{ item.name }}</td>
        <td style="text-align: center;">{{ item.desig }}</td>
        <td style="text-align: center;">
          <img
            :src="`../storage/${item.profilePicture}`"
            class="img-fluid ProfilePictureTable"
          />
        </td>
        <td style="text-align: center;">
          {{ item.bio.substring(0, 100) + '......' }}
        </td>
        <td style="text-align: center;">
          {{ item.fblink }} - {{ item.twitterlink }} - {{ item.linkedinlink }} -
          {{ item.gmaillink }}
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
            <h4 class="card-header">Edit Team Member</h4>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="name">Doctor Name</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.name"
                    />
                  </div>
                  <div class="form-group">
                    <label for="desig">Doctor Designation</label>
                    <textarea
                      class="form-control"
                      type="text"
                      rows="7"
                      v-model="editingItem.desig"
                    ></textarea>
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div>
                    <div v-if="!imageSelectedEdit">
                      <img
                        :src="`../storage/${editingItem.profilePicture}`"
                        class="img-fluid ProfilePicture"
                      />
                    </div>
                    <div
                      class="ProfilePicture"
                      :class="!imageSelectedEdit ? 'hidden' : ''"
                    >
                      <img src id="target1" class="img-fluid" />
                    </div>
                    <div class="form-group mt-5">
                      <input
                        type="file"
                        class="form-control"
                        name="ProfilePicture"
                        id="src1"
                        @input="showImageEdit"
                      />
                    </div>
                  </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="form-group">
                    <label for="bio">Short Bio</label>
                    <textarea
                      class="form-control"
                      type="text"
                      rows="6"
                      v-model="editingItem.bio"
                    ></textarea>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="fblink">Facebook Link</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.fblink"
                    />
                  </div>
                  <div class="form-group">
                    <label for="linkedinlink">Linkedin Link</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.linkedinlink"
                    />
                  </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                  <div class="form-group">
                    <label for="twitterlink">Twitter Link</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.twitterlink"
                    />
                  </div>
                  <div class="form-group">
                    <label for="gmaillink">Gmail Link</label>
                    <input
                      class="form-control"
                      type="text"
                      v-model="editingItem.gmaillink"
                    />
                  </div>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <button
                class="btn btn-primary btn-sm"
                @click="updateTeam(editingItem.id)"
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
            <h4 class="card-header">Delete Team?</h4>
            <div class="card-body">
              <div>
                <img
                  :src="`../storage/${editingItem.profilePicture}`"
                  class="img-fluid ProfilePicture"
                />
              </div>
            </div>
          </div>
          <div class="card-footer">
            <button class="btn btn-success" data-dismiss="modal">
              No
            </button>
            <button class="btn btn-danger" @click="deleteTeam(editingItem.id)">
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
        name: '',
        desig: '',
        ProfilePicture: 'images/image-icon.jpg',
        bio: '',
        fblink: '',
        twitterlink: '',
        linkedinlink: '',
        gmaillink: '',
      },
      errors: {},
      teamList: [],
      imageSelected: 0,
      imageSelectedEdit: 0,
      editingItem: {
        name: '',
        desig: '',
        bio: '',
        fblink: '',
        twitterlink: '',
        linkedinlink: '',
        gmaillink: '',
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
      formData.append('name', this.formData.name)
      formData.append('desig', this.formData.desig)
      formData.append('bio', this.formData.bio)
      formData.append('fblink', this.formData.fblink)
      formData.append('twitterlink', this.formData.twitterlink)
      formData.append('linkedinlink', this.formData.linkedinlink)
      formData.append('gmaillink', this.formData.gmaillink)
      axios
        .post(`/save-team`, formData)
        .then((response) => {
          this.clear()
          showSuccess('Team Member Saved')
          this.isSubmitted = 0
          for (let key in this.formData) {
            if (key == 'ProfilePicture') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.imageSelected = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src = document.getElementById('src')
          src.value = ''
          this.imageSelected = 0
          this.getTeamsList()
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
    updateTeam(item) {
      this.errors = {}
      let myForm = document.getElementById('editForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      formData.append('name', this.editingItem.name)
      formData.append('desig', this.editingItem.desig)
      formData.append('bio', this.editingItem.bio)
      formData.append('fblink', this.editingItem.fblink)
      formData.append('linkedinlink', this.editingItem.linkedinlink)
      formData.append('twitterlink', this.editingItem.twitterlink)
      formData.append('gmaillink', this.editingItem.gmaillink)

      axios
        .post(`/update-team`, formData)
        .then((response) => {
          showSuccess('Team Member Updated')
          for (let key in this.formData) {
            if (key == 'ProfilePicture') {
              this.formData[key] = '../../images/image-icon.jpg'
              this.imageSelectedEdit = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src = document.getElementById('src1')
          src.value = ''
          this.imageSelectedEdit = 0
          this.getTeamsList()
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
    deleteTeam(item) {
      this.errors = {}
      let myForm = document.getElementById('deleteForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      axios
        .post(`/delete-team`, formData)
        .then((response) => {
          showSuccess('Team Member Deleted!')
          this.getTeamsList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
        })
      $('#deleteModal').modal('hide')
    },
    getTeamsList() {
      axios
        .post(`/show-teams`)
        .then((response) => {
          this.teamList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    clear() {
      ;(this.formData = {
        name: '',
        desig: '',
        bio: '',
        fblink: '',
        twitterlink: '',
        linkedinlink: '',
        gmaillink: '',
        ProfilePicture: 'images/image-icon.jpg',
      }),
        (this.editingItem = {
          name: '',
          desig: '',
          bio: '',
          fblink: '',
          twitterlink: '',
          linkedinlink: '',
          gmaillink: '',
        })
    },
  },
  mounted() {
    this.getTeamsList()
  },
}
</script>

<style lang="scss" scoped>
.ProfilePicture {
  padding: 15px;
  border: 1px solid #ededed;
  margin-bottom: 15px;
  width: 20rem;
  width: 20rem;
}
.ProfilePictureTable {
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
