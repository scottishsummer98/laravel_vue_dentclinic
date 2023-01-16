<template>
  <div class="card">
    <div class="card-header">
      <h3>Service Entry</h3>
    </div>
    <div class="card-body">
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="form-group">
            <label for="type">Service Type</label>
            <input
              class="form-control"
              type="text"
              :class="errors.hasOwnProperty('type') ? 'is-invalid' : ''"
              v-model="formData.type"
            />
            <span v-if="errors.hasOwnProperty('type')">
              {{ errors.type[0] }}
            </span>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="form-group">
            <label for="price">Service Price</label>
            <input
              class="form-control"
              type="text"
              :class="errors.hasOwnProperty('price') ? 'is-invalid' : ''"
              v-model="formData.price"
            />
            <span v-if="errors.hasOwnProperty('price')">
              {{ errors.price[0] }}
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
        <th style="text-align: center;">Service Title</th>
        <th style="text-align: center;">Price Range</th>
        <th style="text-align: center;">Action</th>
      </tr>
      <tr v-for="(item, index) in servicesList" :key="index">
        <td style="text-align: center;">{{ index + 1 }}</td>
        <td style="text-align: center;">{{ item.type }}</td>
        <td style="text-align: center;">{{ item.price }}</td>
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
          <h4 class="card-header">Edit Service</h4>
          <div class="card-body">
            <div class="row">
              <div class="col-md-4">
                <div class="form-group">
                  <label>Service Title</label>
                  <input
                    type="text"
                    class="form-control"
                    v-model="editingItem.type"
                  />
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label>Service Price</label>
                  <input
                    type="text"
                    class="form-control"
                    v-model="editingItem.price"
                  />
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
            <h4 class="card-header">Delete {{ editingItem.type }} Service?</h4>
            <div class="card-footer">
              <button class="btn btn-success" data-dismiss="modal">
                No
              </button>
              <button
                class="btn btn-danger"
                @click="deleteService(editingItem.id)"
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
        type: '',
        price: '',
      },
      errors: {},
      servicesList: [],
      editingItem: {
        type: '',
        price: '',
      },
    }
  },
  computed: {},
  methods: {
    save() {
      this.errors = {}
      axios
        .post(`/save-service`, this.formData)
        .then((res) => {
          this.clear()
          showSuccess('Service Saved')
          this.getServicesList()
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
        .post(`/update-service/${this.editingItem.id}`, this.editingItem)
        .then((res) => {
          showSuccess('Service Updated!')
          this.clear()
          this.getServicesList()
        })
        .catch((err) => {
          showError('Failed To Update Service')
        })
      $('#editModal').modal('hide')
    },
    deleteService(item) {
      this.errors = {}
      let myForm = document.getElementById('deleteForm')
      let formData = new FormData(myForm)
      formData.append('id', item)
      axios
        .post(`/delete-service`, formData)
        .then((response) => {
          showSuccess('Service Deleted!')
          this.getServicesList()
        })
        .catch((err) => {
          if (err.response.status == 422) {
            this.errors = err.response.data.errors
          }
          showError(err.response.data.message)
        })
      $('#deleteModal').modal('hide')
    },
    getServicesList() {
      axios
        .post(`/show-services`)
        .then((response) => {
          this.servicesList = response.data
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    clear() {
      ;(this.formData = {
        type: '',
        price: '',
      }),
        (this.editingItem = {
          type: '',
          price: '',
        })
    },
  },
  mounted() {
    this.getServicesList()
  },
}
</script>
