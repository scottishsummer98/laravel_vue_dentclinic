<template>
  <div class="card">
    <div class="card-header">
      <h3>Service Entry</h3>
    </div>
    <div class="card-body">
      <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="form-group">
            <label for="title">Service Type</label>
            <input class="form-control" type="text" v-model="formData.title" />
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="form-group">
            <label for="price">Service Price</label>
            <input class="form-control" type="text" v-model="formData.price" />
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
        <th style="width: 10%; text-align: center;">SL No.</th>
        <th style="width: 30%; text-align: center;">Service Title</th>
        <th style="width: 30%; text-align: center;">Price Range</th>
        <th style="width: 30%; text-align: center;">Action</th>
      </tr>
      <tr v-for="(item, index) in servicesList" :key="index">
        <td style="text-align: center;">{{ index + 1 }}</td>
        <td style="text-align: center;">{{ item.title }}</td>
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
                    v-model="editingItem.title"
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
</template>

<script>
export default {
  data() {
    return {
      formData: {
        title: '',
        price: '',
      },
      servicesList: [],
      editingItem: {
        title: '',
        price: '',
      },
    }
  },
  computed: {},
  methods: {
    save() {
      axios
        .post(`/save-services`, this.formData)
        .then((res) => {
          this.clear()
          window.alert('Data Saved!')
          this.getServicesList()
        })
        .catch((err) => {
          this.clear()
          window.alert('Data Failed To Save!')
        })
    },
    edit(item) {
      for (let index in item) {
        this.editingItem[index] = item[index]
      }
      $('.modal').modal('toggle')
    },
    update() {
      axios
        .post(`/update-service/${this.editingItem.id}`, this.editingItem)
        .then((res) => {
          window.alert('Service Updated!')
          this.clear()
          this.getServicesList()
        })
        .catch((err) => {
          window.alert('Data Failed To Save!')
        })
      $('.modal').modal('hide')
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
        title: '',
        price: '',
      }),
        (this.editingItem = {
          title: '',
          price: '',
        })
    },
  },
  mounted() {
    this.getServicesList()
  },
}
</script>
