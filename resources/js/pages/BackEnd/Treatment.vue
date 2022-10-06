<template>
  <div class="dashboard-setting">
    <div class="row">
      <div class="col-md-12">
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
                      cols="3"
                    ></textarea>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                  <div>
                    <div v-if="!bimageSelected">
                      <img
                        :src="`/storage/${formData.BeforeOperationImage}`"
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
                        :src="`/storage/${formData.AfterOperationImage}`"
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
              <button
                class="float-right btn btn-primary btn-sm"
                @click="submit"
              >
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
        BeforeOperationImage: '../../images/image-icon.jpg',
        AfterOperationImage: '../../images/image-icon.jpg',
      },
      bimageSelected: 0,
      aimageSelected: 0,
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
      this.isSubmitted = 1
      this.errors = {}
      let myForm = document.getElementById('myForm')
      let formData = new FormData(myForm)
      formData.append('BankCode', this.formData.BankCode)
      formData.append('BranchCode', this.formData.BranchCode)
      formData.append('BankAccountNo', this.formData.BankAccountNo)
      formData.append('ScrollNo', this.formData.ScrollNo)
      formData.append('CollectionDate', this.formData.CollectionDate)
      formData.append('DepositAmount', this.formData.DepositAmount)
      formData.append('DepositDate', this.formData.DepositDate)

      axios
        .post(`${this.apiUrl}/submit-bank-deposit-slip`, formData)
        .then((response) => {
          showSuccess('Bank Deposit Ertry Created!')
          this.isSubmitted = 0
          for (let key in this.formData) {
            if (key == 'DepositSlipImage') {
              this.formData[key] = '/avatar.webp'
              this.imageSelected = 0
            } else {
              this.formData[key] = ''
            }
          }
          var src = document.getElementById('src')
          src.value = ''
        })
        .catch((err) => {
          if (err.response.status == '404') {
            showError(err.response.data.message)
            this.errors = this.err.response.errors
          } else if (err.response.status == '422') {
            this.isSubmitted = 0
            this.errors = err.response.data.errors
            showError('Please Fill Up All Data!')
          } else if (err.response.status == '403') {
            showError('You are not Permitted to do this action')
          } else {
            showError('Opps some error occured!')
          }
          this.isSubmitted = 0
        })
    },
    clear() {
      this.formData = {
        name: '',
        description: '',
      }
    },
  },
  mounted() {},
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
.hidden {
  display: none;
}
</style>
