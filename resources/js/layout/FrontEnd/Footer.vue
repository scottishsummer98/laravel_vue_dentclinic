<template>
    <!-- Footer -->
      <div class="text-center text-lg-start text-light bg-image1">
        <section>
          <div class="container text-center text-md-start mt-5">
            <div class="row mt-3">
              <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mb-4">
                <!-- Content -->
                <h6 class="text-center text-uppercase fw-bold mb-4 border-bottom pb-3">
                  ABOUT US
                </h6>
                <p style="text-align: justify">
                  Prof. Dr. Nasir Uddin Obtained Master of Surgery in Oral and Maxillofacial Surgery degree from University of Dhaka, Bangladesh in 2010. He completed Bachelor of Dental ............
                  <p class="mt-2">
                    <router-link to = "/about/aboutus" class="text-reset" style="text-decoration: none;">Read More</router-link>
                  </p>
                </p>
              </div>
              <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mb-4">
                <!-- Links -->
                <h6 class="text-center text-uppercase fw-bold mb-4 border-bottom pb-3">
                  QUICK LINKS
                </h6>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">About Us</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Mission & Vission</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Our Services</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Our Team</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Image Gallery</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Video Gallery</router-link></p>
              </div>
              <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mb-4">
                <!-- Links -->
                <h6 class="text-center text-uppercase fw-bold mb-4 border-bottom pb-3">
                  OTHERS
                </h6>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Treatment</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Specialization</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Publications</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Presentations</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Involvement</router-link></p>
                <p class="text-center"><router-link to = "#" class="text-reset" style="text-decoration: none;">Social Work</router-link></p>
              </div>
              <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                <!-- Links -->
                <h6 class="text-center text-uppercase fw-bold mb-4 border-bottom pb-3">
                  FOLLOW US
                </h6>
                <div class="text-center">
                  <a href="https://twitter.com/"><i class="fa-brands fa-twitter me-3" style="font-size:35px;color: RGB(29, 161, 242);"></i></a>
                  <a href="https://www.facebook.com/"><i class="fa-brands fa-facebook me-3" style="font-size:35px;color: RGB(29, 78, 155);"></i></a>
                  <a href="https://www.instagram.com/"><i class="fa-brands fa-instagram me-3" style="font-size:35px;color: RGB(180, 53, 144);"></i></a>
                  <a href="https://www.youtube.com/"><i class="fa-brands fa-youtube me-3" style="font-size:35px;color: RGB(242, 0, 0);"></i></a>
                </div>
                
              </div>
            </div>
          </div>
        </section>
        <section>
          <div class="container text-center text-md-start mt-3">
            <div class="row mt-3">
              <div class="col-md-4 col-lg-4 col-xl-4 mx-auto mb-4"
              v-for="(item, index) in contactsList"
            :key="index">
                <h6 class="text-center text-uppercase fw-bold mb-4 border-bottom pb-3" style="height:4rem">
                  {{ item.name }}
                </h6>
                <div class="row" style="height:4rem">
                  <div class="col-lg-3 text-center fw-bold">Address:</div>
                  <div class="col-lg-8" style="text-align:justify">{{ item.location }}</div>
                </div>
                <div class="row mt-2" style="height:4rem">
                  <div class="col-lg-3 text-center fw-bold">Phone:</div>
                  <div class="col-lg-8" style="text-align:justify">{{ item.mobile }}<br>
                  </div>
                </div>
                <div class="row mt-2" style="height:4rem">
                  <div class="col-lg-3 text-center fw-bold">Email:</div>
                  <div class="col-lg-8" style="text-align:justify">{{ item.email }}
                  </div>
                </div>
                <div class="row mt-2" style="height:4rem">
                  <div class="col-lg-3 text-center fw-bold">Time:</div>
                  <div class="col-lg-8" style="text-align:justify">{{ item.visitingtime }}
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section>
          <div class="container text-center text-md-start mt-3 border-top pt-3">
            <i class="fa-solid fa-copyright"></i> 2022 Copyright. All Rights Reserved
            <p style="float:right">Designed & Developed By ScottishSummer98</p>
          </div>
        </section>
        
      </div>
</template>

<script>
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

<style>
.bg-image1 {
  background-image:url('../../../../public/images/footer_bg.jpg');
  background-size: cover;
  background-color: rgba(207, 207, 216, 0.71)
}
</style>