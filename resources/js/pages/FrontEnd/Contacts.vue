<template>
  <section class="section" style="margin-top: 15px;">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
          <h2 class="mb-3">
            Contact Us
          </h2>
          <div
            style="
              border-bottom: 3px solid black;
              border-top: 3px solid black;
              display: flex;
            "
          >
            <img
              class="img-fluid"
              style="margin: 1rem;"
              src="../../../../public/images/Dr-Nasir_uddin(2).jpg"
              alt=""
            />
            <p
              style="
                text-align: justify;
                margin: 1rem;
                font-size: large;
                font-family: Tahoma;
              "
            >
              PROF. DR. NASIR UDDIN IS ONE OF THE BEST DENTAL SURGEON IN DHAKA,
              BANGLADESH. HE IS HEAD OF THE DEPARTMENT OF ORAL AND MAXILLOFACIAL
              SURGERY, SHAHEED SUHRAWARDY MEDICAL COLLEGE AND HOSPITAL AND ONE
              OF THE LEADING ORAL AND MAXILLOFACIAL SURGEONS.
            </p>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
          <div class="sidebar">
            <div class="widget">
              <div
                class="blog-list-widget"
                style="height: 28rem; background-color: #eeeeee;"
              >
                <form action="" style="padding: 2rem;">
                  <h5 class="mb-2">FEEDBACK FORM</h5>
                  <h6>
                    Name
                    <span class="text-danger">*</span>
                  </h6>
                  <input
                    type="text"
                    style="
                      border-bottom: 2px solid black;
                      color: grey;
                      width: 100%;
                      padding: 0.5rem;
                    "
                  />
                  <h6 class="mt-2">
                    Phone
                    <span class="text-danger">*</span>
                  </h6>
                  <input
                    type="text"
                    style="
                      border-bottom: 2px solid black;
                      color: grey;
                      width: 100%;
                      padding: 0.5rem;
                    "
                  />
                  <h6 class="mt-2">
                    Address
                    <span class="text-danger">*</span>
                  </h6>
                  <input
                    type="text"
                    style="
                      border-bottom: 2px solid black;
                      color: grey;
                      width: 100%;
                      padding: 0.5rem;
                    "
                  />
                  <h6 class="mt-2">
                    Message
                    <span class="text-danger">*</span>
                  </h6>
                  <input
                    type="text"
                    style="
                      border-bottom: 2px solid black;
                      color: grey;
                      width: 100%;
                      padding: 0.5rem;
                    "
                  />
                  <button class="btn btn-primary mt-4" style="width: 100%;">
                    SEND MESSAGE
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>

        <div class="row mt-5 mb-5">
          <div
            class="col-md-4"
            v-for="(item, index) in contactsList"
            :key="index"
          >
            <div
              style="height: 7rem; background-color: gainsboro; padding: 1rem;"
            >
              <h5 style="text-align: justify;">
                {{ item.name }}
              </h5>
            </div>

            <div style="border: 1px solid black; padding: 1rem; height: 22rem;">
              <h6>
                <h5>🏢</h5>
                {{ item.location }}
              </h6>
              <h6>
                <h5>📞</h5>
                {{ item.mobile }}
              </h6>
              <h6>
                <h5>✉</h5>
                {{ item.email }}
              </h6>
              <h6>
                <h5>🕜</h5>
                {{ item.visitingtime }}
              </h6>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <iframe
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7303.627684756733!2d90.36675132503694!3d23.75401693835033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe0b8d0db2e09450a!2sAvenue%20Dental%20Care!5e0!3m2!1sen!2sbd!4v1619258721916!5m2!1sen!2sbd"
    height="400"
    allowfullscreen
  ></iframe>
</template>

<script>
import moment from 'moment'
export default {
  data() {
    return {
      contactsList: [],
    }
  },
  computed: {},
  methods: {
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
  },
  mounted() {
    this.getContactsList()
  },
}
</script>

<style></style>
