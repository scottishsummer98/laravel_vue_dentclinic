<template>
  <div class="text-center text-lg-start text-light bg-image1">
    <div class="row1_footer_front">
      <div class="col1_row1_footer_front">
        <h6 class="text-center text-uppercase fw-bold mb-4 border-bottom pb-3">
          ABOUT US
        </h6>
        <p style="text-align: justify">
          Prof. Dr. Nasir Uddin Obtained Master of Surgery in Oral and Maxillofacial Surgery degree from University of
          Dhaka, Bangladesh in 2010. He completed Bachelor of Dental ............
        <p class="mt-2">
          <router-link to="/about/aboutus" class="text-reset" style="text-decoration: none;">Read More</router-link>
        </p>
        </p>
      </div>
      <div class="col2_row1_footer_front">
        <h6 class="text-center text-uppercase fw-bold mb-4 border-bottom pb-3">
          QUICK LINKS
        </h6>
        <p class="text-center"><router-link to="#" class="text-reset" style="text-decoration: none;">About
            Us</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset" style="text-decoration: none;">Mission &
            Vission</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset" style="text-decoration: none;">Our
            Services</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset" style="text-decoration: none;">Our
            Team</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset" style="text-decoration: none;">Image
            Gallery</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset" style="text-decoration: none;">Video
            Gallery</router-link></p>
      </div>
      <div class="col3_row1_footer_front">
        <h6 class="text-center text-uppercase fw-bold mb-4 border-bottom pb-3">
          OTHERS
        </h6>
        <p class="text-center"><router-link to="#" class="text-reset"
            style="text-decoration: none;">Treatment</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset"
            style="text-decoration: none;">Specialization</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset"
            style="text-decoration: none;">Publications</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset"
            style="text-decoration: none;">Presentations</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset"
            style="text-decoration: none;">Involvement</router-link></p>
        <p class="text-center"><router-link to="#" class="text-reset" style="text-decoration: none;">Social
            Work</router-link></p>

      </div>
      <div class="col4_row1_footer_front">
        <h6 class="text-center text-uppercase fw-bold mb-4 border-bottom pb-3">
          FOLLOW US
        </h6>
        <div class="text-center" v-for="(item, index) in settingsList" :key="index">
          <a :href="`${item.twitterlink}`"><i class="fa-brands fa-twitter me-3"
              style="font-size:35px;color: RGB(29, 161, 242);"></i></a>
          <a :href="`${item.fblink}`"><i class="fa-brands fa-facebook me-3"
              style="font-size:35px;color: RGB(29, 78, 155);"></i></a>
          <a :href="`${item.instagramlink}`"><i class="fa-brands fa-instagram me-3"
              style="font-size:35px;color: RGB(180, 53, 144);"></i></a>
          <a :href="`${item.youtubelink}`"><i class="fa-brands fa-youtube me-3"
              style="font-size:35px;color: RGB(242, 0, 0);"></i></a>
        </div>
      </div>
    </div>
    <div class="row2_footer_front">
      <div class="cols_row2_footer_front" v-for="(item, index) in contactsList" :key="index">
        <div class="row1_cols_row2_footer_front">
          <h6 class="text-center text-uppercase fw-bold">
            {{ item.name }}
          </h6>
        </div>
        <hr style="margin:1rem;height: 1px;background: white;opacity: 1;">
        <div class="row2_cols_row2_footer_front">
          <h6 class="fw-bold">Address</h6>
          <h6><span style="text-align:justify">{{ item.location }}</span></h6>
        </div>
        <hr>
        <div class="row3_cols_row2_footer_front">
          <h6 class="fw-bold">Phone</h6>
          <h6><span style="text-align:justify">{{ item.mobile }}</span></h6>
        </div>
        <hr>
        <div class="row4_cols_row2_footer_front">
          <h6 class="fw-bold">Email</h6>
          <h6><span style="text-align:justify">{{ item.email }}</span></h6>
        </div>
        <hr>
        <div class="row5_cols_row2_footer_front">
          <h6 class="fw-bold">Time</h6>
          <h6><span style="text-align:justify">{{ item.visitingtime }}</span></h6>
        </div>
      </div>
    <div>
  </div>
    </div>
    <div class="row3_footer_front">
      <i class="fa-solid fa-copyright"></i> 2022 Copyright. All Rights Reserved
      <p style="float:right">Designed & Developed By ScottishSummer98</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      contactsList: [],
      settingsList: [],
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
  },
  mounted() {
    this.getContactsList()
    this.getSettingsList()
  },
}
</script>

<style>
.bg-image1 {
  background-image: url('../../../../public/images/footer_bg.jpg');
  background-size: cover;
  background-color: rgba(207, 207, 216, 0.71)
}

.row1_footer_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
  justify-content: center;
  padding: 5rem 25rem;
}

.col1_row1_footer_front,
.col2_row1_footer_front,
.col3_row1_footer_front,
.col4_row1_footer_front {
  width: 25%;
}

.row2_footer_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
  justify-content: center;
  padding: 2rem 25rem;
}

.cols_row2_footer_front {
  display: flex;
  flex-direction: column;
  gap: 1rem;
  justify-content: center;
  width: 33%;
}

.row3_footer_front {
  padding: 2rem;
}

.row1_cols_row2_footer_front,
.row2_cols_row2_footer_front,
.row3_cols_row2_footer_front,
.row4_cols_row2_footer_front,
.row5_cols_row2_footer_front {
  height: 4rem;
}

/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .row1_footer_front {
    display: flex;
    flex-direction: row;
    gap: 1.5rem;
    justify-content: center;
    padding: 2rem 1rem;
  }

  .col1_row1_footer_front {
    width: 30%;
  }

  .col2_row1_footer_front {
    width: 20%;
  }

  .col3_row1_footer_front {
    width: 20%;
  }

  .col4_row1_footer_front {
    width: 30%;
  }

  .row2_footer_front {
    display: flex;
    flex-direction: row;
    gap: 2rem;
    justify-content: center;
    padding: 2rem 1rem;
  }

  .row3_cols_row2_footer_front {
    height: 6rem;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .row1_footer_front {
    display: flex;
    flex-direction: column;
    gap: .5rem;
    justify-content: center;
    padding: 1rem;
  }

  .col1_row1_footer_front,
  .col2_row1_footer_front,
  .col3_row1_footer_front,
  .col4_row1_footer_front {
    width: 100%;
  }

  .row2_footer_front {
    display: flex;
    flex-direction: column;
    gap: 4rem;
    justify-content: center;
    padding: 2rem 1rem;
  }

  .cols_row2_footer_front {
    width: 100%;
  }

  .row1_cols_row2_footer_front,
  .row2_cols_row2_footer_front,
  .row3_cols_row2_footer_front,
  .row4_cols_row2_footer_front,
  .row5_cols_row2_footer_front {
    height: 2.5rem;
  }
}
</style>