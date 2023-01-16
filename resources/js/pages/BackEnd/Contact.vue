<template>
  <div class="card">
    <div class="card-header">
      <h3>Contact Entry</h3>
    </div>
    <div class="card-body">
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="form-group">
            <label for="name">Chamber/Hospital Name</label>
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
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="form-group">
            <label for="location">Chamber/Hospital Location</label>
            <input
              class="form-control"
              type="text"
              :class="errors.hasOwnProperty('location') ? 'is-invalid' : ''"
              v-model="formData.location"
            />
            <span v-if="errors.hasOwnProperty('location')">
              {{ errors.location[0] }}
            </span>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="form-group">
            <label for="mobile">Contact No.</label>
            <input
              class="form-control"
              type="text"
              :class="errors.hasOwnProperty('mobile') ? 'is-invalid' : ''"
              v-model="formData.mobile"
            />
            <span v-if="errors.hasOwnProperty('mobile')">
              {{ errors.mobile[0] }}
            </span>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="form-group">
            <label for="email">Email</label>
            <input
              class="form-control"
              type="text"
              :class="errors.hasOwnProperty('email') ? 'is-invalid' : ''"
              v-model="formData.email"
            />
            <span v-if="errors.hasOwnProperty('email')">
              {{ errors.email[0] }}
            </span>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="form-group">
            <label for="visitingtime">Visiting Time</label>
            <input
              class="form-control"
              type="text"
              :class="errors.hasOwnProperty('visitingtime') ? 'is-invalid' : ''"
              v-model="formData.visitingtime"
            />
            <span v-if="errors.hasOwnProperty('visitingtime')">
              {{ errors.visitingtime[0] }}
            </span>
          </div>
        </div>
      </div>
    </div>
    <div class="card-footer">
      <button class="float-right btn btn-success btn-sm" @click="save">
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
  </div>
  <div class="card">
    <table class="table table-dark table-striped">
      <tr>
        <th style="text-align: center;">SL No.</th>
        <th style="text-align: center;">Chamber/Hospital Name</th>
        <th style="text-align: center;">Chamber/Hospital Location</th>
        <th style="text-align: center;">Contact No</th>
        <th style="text-align: center;">Email</th>
        <th style="text-align: center;">Visiting Time</th>
        <th style="text-align: center;">Action</th>
      </tr>
      <tr v-for="(item, index) in contactsList" :key="index">
        <td style="text-align: center;">{{ index + 1 }}</td>
        <td style="text-align: center;">{{ item.name }}</td>
        <td style="text-align: center;">{{ item.location }}</td>
        <td style="text-align: center;">{{ item.mobile }}</td>
        <td style="text-align: center;">{{ item.email }}</td>
        <td style="text-align: center;">{{ item.visitingtime }}</td>
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
        <div class="card">
          <h4 class="card-header">Edit Contact</h4>
          <div class="card-body">
            <div class="row">
              <div class="col-md-4">
                <div class="form-group">
                  <label>Chamber/Hospital Name</label>
                  <textarea
                    type="text"
                    class="form-control"
                    rows="5"
                    v-model="editingItem.name"
                  ></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label>Chamber/Hospital Location</label>
                  <textarea
                    type="text"
                    class="form-control"
                    rows="5"
                    v-model="editingItem.location"
                  ></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label>Contact No.</label>
                  <textarea
                    type="text"
                    class="form-control"
                    rows="5"
                    v-model="editingItem.mobile"
                  ></textarea>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="form-group">
                  <label>Email</label>
                  <textarea
                    type="text"
                    class="form-control"
                    rows="5"
                    v-model="editingItem.email"
                  ></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label>Visiting Time</label>
                  <textarea
                    type="text"
                    class="form-control"
                    rows="5"
                    v-model="editingItem.visitingtime"
                  ></textarea>
                </div>
              </div>
            </div>
          </div>
          <div class="card-footer">
            <button class="btn btn-primary btn-sm" @click="update">
              Update
            </button>
          </div>
        </div>
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
            <h4 class="card-header">Delete Contact {{ editingItem.name }}?</h4>
            <div class="card-footer">
              <button class="btn btn-success" data-dismiss="modal">
                No
              </button>
              <button
                class="btn btn-danger"
                @click="deleteContact(editingItem.id)"
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
        location: '',
        mobile: '',
        email: '',
        visitingtime: '',
      },
      errors: {},
      contactsList: [],
      editingItem: {
        name: '',
        location: '',
        mobile: '',
        email: '',
        visitingtime: '',
      },
    }
  },
  computed: {},
  methods: {
    save() {
      this.errors = {}
      axios
        .post(`/save-contact`, this.formData)
        .then((res) => {
          this.clear()
          showSuccess('Contact Saved')
          this.getContactsList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
          this.clear()
        })
    },
    edit(item) {
      for (let index in item) {
        this.editingItem[index] = item[index]
      }
      $('#editModal').modal('toggle')
    },
    destroy(item) {
      for (let index in item) {
        this.editingItem[index] = item[index]
      }
      $('#deleteModal').modal('toggle')
    },
    update() {
      axios
        .post(`/update-contact/${this.editingItem.id}`, this.editingItem)
        .then((res) => {
          showSuccess('Contact Updated!')
          this.clear()
          this.getContactsList()
        })
        .catch((err) => {
          showError('Failed To Update Contact')
        })
      $('.modal').modal('hide')
    },
    deleteContact(item) {
      this.errors = {}
      let myForm = document.getElementById('deleteForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      axios
        .post(`/delete-contact`, formData)
        .then((response) => {
          showSuccess('Contact Deleted!')
          this.getContactsList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
        })
      $('#deleteModal').modal('hide')
    },
    getContactsList() {
      axios
        .post(`/show-contacts`)
        .then((response) => {
          this.contactsList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    clear() {
      ;(this.formData = {
        name: '',
        location: '',
        mobile: '',
        email: '',
        visitingtime: '',
      }),
        (this.editingItem = {
          name: '',
          location: '',
          mobile: '',
          email: '',
          visitingtime: '',
        })
    },
  },
  mounted() {
    this.getContactsList()
  },
}
</script>
