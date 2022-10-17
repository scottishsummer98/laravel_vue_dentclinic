<template>
  <div class="card">
    <div class="card-header">
      <h3>More Details Entry</h3>
    </div>
    <div class="card-body">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8">
          <div class="form-group">
            <label for="topic">Topic</label>
            <input
              class="form-control"
              type="text"
              :class="errors.hasOwnProperty('topic') ? 'is-invalid' : ''"
              v-model="formData.topic"
            />
            <span v-if="errors.hasOwnProperty('topic')">
              {{ errors.topic[0] }}
            </span>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="form-group">
            <label for="type">Detail Type</label>
            <select
              name="type"
              :class="errors.hasOwnProperty('type') ? 'is-invalid' : ''"
              class="form-control"
              v-model="formData.type"
              id="type"
            >
              <option value="Publications">Publications</option>
              <option value="Presentations">Presentations</option>
              <option value="Involvement">Involvement</option>
              <option value="Specialization">Specialization</option>
              <option value="Social Work">Social Work</option>
            </select>
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
        <th style="text-align: center;">Topic</th>
        <th style="text-align: center;">Topic Type</th>
        <th style="text-align: center;">Action</th>
      </tr>
      <tr v-for="(item, index) in moreTopicList.data" :key="index">
        <td style="text-align: center;">{{ serialNumber + index }}</td>
        <td style="text-align: center;">{{ item.topic }}</td>
        <td style="text-align: center;">{{ item.type }}</td>
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
      :data="moreTopicList"
      :align="'right'"
      :limit="0"
      @pagination-change-page="getmoreTopicList"
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
        <div class="card">
          <h4 class="card-header">Edit More Details</h4>
          <div class="card-body">
            <div class="row">
              <div class="col-md-4">
                <div class="form-group">
                  <label>Topic</label>
                  <input
                    type="text"
                    class="form-control"
                    v-model="editingItem.topic"
                  />
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label>Type</label>
                  <select
                    name="type"
                    class="form-control"
                    v-model="editingItem.type"
                    id="type"
                  >
                    <option value="Publications">Publications</option>
                    <option value="Presentations">Presentations</option>
                    <option value="Involvement">Involvement</option>
                    <option value="Specialization">Specialization</option>
                    <option value="Social Work">Social Work</option>
                  </select>
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
import { showSuccess, showError } from '../../helper'
import pagination from 'laravel-vue-pagination'
export default {
  components: {
    pagination,
  },
  data() {
    return {
      formData: {
        topic: '',
        type: '',
      },
      errors: {},
      serialNumber: 1,
      moreTopicList: {},
      editingItem: {
        topic: '',
        type: '',
      },
    }
  },
  computed: {},
  methods: {
    save() {
      this.errors = {}
      axios
        .post(`/save-moreDetail`, this.formData)
        .then((res) => {
          this.clear()
          showSuccess('Detail Topic Saved')
          this.getmoreTopicList()
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
      $('.modal').modal('toggle')
    },
    update() {
      axios
        .post(`/update-moreDetail/${this.editingItem.id}`, this.editingItem)
        .then((res) => {
          showSuccess('Detail Topic Updated!')
          this.clear()
          this.getmoreTopicList()
        })
        .catch((err) => {
          showError('Failed To Update Detail Topic')
        })
      $('.modal').modal('hide')
    },
    getmoreTopicList(page = 1) {
      axios
        .post(`/show-moreDetails?page=${page}`)
        .then((response) => {
          this.moreTopicList = response.data
          this.serialNumber = parseInt(response.data.from)
        })
        .catch((err) => {
          // console.log(err.response);
        })
    },
    clear() {
      ;(this.formData = {
        topic: '',
        type: '',
      }),
        (this.editingItem = {
          topic: '',
          type: '',
        })
    },
  },
  mounted() {
    this.getmoreTopicList()
  },
}
</script>
