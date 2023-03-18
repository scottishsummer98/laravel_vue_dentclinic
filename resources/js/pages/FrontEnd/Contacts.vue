<template>
  <div class="contact_front">
    <h3>
      Contact Us
    </h3>
    <div class="row1_contact_front">
      <div class="col1_row1_contact_front">
        <img
          class="image_col1_row1_contact_front"
          src="../../../../public/images/Dr-Nasir_uddin(2).jpg"
          alt=""
        />
        <p style="text-align: justify; font-size: large; font-family: Tahoma;">
          PROF. DR. NASIR UDDIN IS ONE OF THE BEST DENTAL SURGEON IN DHAKA,
          BANGLADESH. HE IS HEAD OF THE DEPARTMENT OF ORAL AND MAXILLOFACIAL
          SURGERY, SHAHEED SUHRAWARDY MEDICAL COLLEGE AND HOSPITAL AND ONE OF
          THE LEADING ORAL AND MAXILLOFACIAL SURGEONS.
        </p>
      </div>
      <div class="col2_row1_contact_front">
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
    <div class="row2_contact_front">
      <div
        class="items_row2_contact_front"
        v-for="(item, index) in contactsList"
        :key="index"
      >
        <div class="itemheader_items_row2_contact_front">
          <h5 style="text-align: justify;">
            {{ item.name }}
          </h5>
        </div>

        <div class="itembody_items_row2_contact_front">
          <h6>
            <h5><i class="fa-solid fa-building"></i></h5>
            {{ item.location }}
          </h6>
          <h6>
            <h5><i class="fa-solid fa-phone"></i></h5>
            {{ item.mobile }}
          </h6>
          <h6>
            <h5><i class="fa-solid fa-envelope"></i></h5>
            {{ item.email }}
          </h6>
          <h6>
            <h5><i class="fa-solid fa-clock"></i></h5>
            {{ item.visitingtime }}
          </h6>
        </div>
      </div>
    </div>
  </div>
  <iframe
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7303.627684756733!2d90.36675132503694!3d23.75401693835033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe0b8d0db2e09450a!2sAvenue%20Dental%20Care!5e0!3m2!1sen!2sbd!4v1619258721916!5m2!1sen!2sbd"
    height="400"
    allowfullscreen
  ></iframe>
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
.contact_front {
  display: flex;
  flex-direction: column;
  gap: 3rem;
  padding: 2rem 25rem;
}
.row1_contact_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
}
.col1_row1_contact_front {
  display: flex;
  flex-direction: row;
  gap: 1rem;
  align-items: center;
  border-bottom: 3px solid black;
  border-top: 3px solid black;
  width: 70%;
}
.image_col1_row1_contact_front {
  width: 25rem;
  height: 25rem;
}
.col2_row1_contact_front {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  width: 30%;
}
.row2_contact_front {
  display: flex;
  flex-direction: row;
  gap: 2rem;
}
.items_row2_contact_front {
  width: 33%;
}
.itemheader_items_row2_contact_front {
  height: 7rem;
  background-color: gainsboro;
  padding: 1rem;
}
.itembody_items_row2_contact_front {
  border: 1px solid black;
  padding: 1rem;
  height: 22rem;
}
/* Media Queries Medium Devices*/
@media screen and (max-width: 1024px) {
  .contact_front {
    display: flex;
    flex-direction: column;
    gap: 3rem;
    padding: 2rem;
  }
  .row1_contact_front {
    display: flex;
    flex-direction: column;
    gap: 2rem;
  }
  .col1_row1_contact_front {
    width: 100%;
  }
  .col2_row1_contact_front {
    width: 100%;
  }
  .itemheader_items_row2_contact_front {
    height: 12rem;
  }
  .itembody_items_row2_contact_front {
    height: 24rem;
  }
}

/* Media Queries Small Devices*/
@media screen and (max-width: 600px) {
  .col1_row1_contact_front {
    flex-direction: column;
    width: 100%;
  }
  .image_col1_row1_contact_front {
    width: 20rem;
    height: 20rem;
  }
  .row2_contact_front {
    flex-direction: column;
    gap: 1rem;
  }
  .items_row2_contact_front {
    width: 100%;
  }
  .itemheader_items_row2_contact_front {
    height: 7.5rem;
  }
  .itembody_items_row2_contact_front {
    height: 19rem;
  }
}
</style>
