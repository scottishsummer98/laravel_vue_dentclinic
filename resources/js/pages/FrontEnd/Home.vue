<template>
  <!-- Slider -->
  <div
    id="carouselExampleFade"
    class="carousel slide carousel-fade"
    data-bs-ride="carousel"
    data-interval="1000"
  >
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img
          src="../../../../public/images/Slider1.png"
          class="d-block w-100"
          alt=""
        />
      </div>
      <div class="carousel-item">
        <img
          src="../../../../public/images/Slider2.png"
          class="d-block w-100"
          alt=""
        />
      </div>
      <div class="carousel-item">
        <img
          src="../../../../public/images/Slider3.png"
          class="d-block w-100"
          alt=""
        />
      </div>
      <div class="carousel-item">
        <img
          src="../../../../public/images/Slider4.png"
          class="d-block w-100"
          alt=""
        />
      </div>
      <div class="carousel-item">
        <img
          src="../../../../public/images/Slider5.png"
          class="d-block w-100"
          alt=""
        />
      </div>
    </div>
    <button
      class="carousel-control-prev"
      type="button"
      data-bs-target="#carouselExampleFade"
      data-bs-slide="prev"
    >
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button
      class="carousel-control-next"
      type="button"
      data-bs-target="#carouselExampleFade"
      data-bs-slide="next"
    >
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <!-- Article -->
  <div class="card">
    <div class="row m-5 p-0">
      <div class="col-lg-2 col-md-2 col-sm-2"></div>
      <div class="col-lg-4 col-md-4 col-sm-4 sliderLeft">
        <h3 class="text-uppercase mb-3">
          ARTICLE
        </h3>
        <h6 class="border-bottom p-3">
          <router-link to="#" class="text-reset" style="text-decoration: none;">
            <i
              class="fa fa-paperclip"
              aria-hidden="true"
              style="font-size: 20px;"
            ></i>
            স্কেলিং সম্পর্কে ৬ টি প্রচলিত ভুল ধারণা
          </router-link>
        </h6>
        <h6 class="border-bottom p-3">
          <router-link to="#" class="text-reset" style="text-decoration: none;">
            <i
              class="fa fa-paperclip"
              aria-hidden="true"
              style="font-size: 20px;"
            ></i>
            রুট ক্যানাল
          </router-link>
        </h6>
        <h6 class="border-bottom p-3">
          <router-link to="#" class="text-reset" style="text-decoration: none;">
            <i
              class="fa fa-paperclip"
              aria-hidden="true"
              style="font-size: 20px;"
            ></i>
            মুখের ক্যান্সার এর ৬ টি লক্ষণ
          </router-link>
        </h6>
        <h6 class="border-bottom p-3">
          <router-link to="#" class="text-reset" style="text-decoration: none;">
            <i
              class="fa fa-paperclip"
              aria-hidden="true"
              style="font-size: 20px;"
            ></i>
            দাঁত সাদা করার কার্যকরী ৩ পদ্ধতি
          </router-link>
        </h6>
        <h6 class="border-bottom p-3">
          <router-link to="#" class="text-reset" style="text-decoration: none;">
            <i
              class="fa fa-paperclip"
              aria-hidden="true"
              style="font-size: 20px;"
            ></i>
            দাঁত উত্তোলনের ৬ টি কারণ
          </router-link>
        </h6>
      </div>
      <div
        class="col-lg-4 col-md-4 col-sm-4 mt-5 sliderRight"
        style="display: flex;"
      >
        <img
          class="responsive1"
          src="../../../../public/images/Article_img.jpeg"
          alt=""
        />
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 m-2"></div>
      <div class="text-center">
        <p>
          <router-link
            to="#"
            class="btn btn-primary p-2"
            style="text-decoration: none;"
          >
            View All
          </router-link>
        </p>
      </div>
    </div>
  </div>

  <!-- Intro -->
  <div class="card">
    <div class="row m-5 p-0">
      <div class="col-lg-2 col-md-2 col-sm-2"></div>
      <div class="col-lg-4 col-md-4 col-sm-4 sliderLeft">
        <h3 class="text-uppercase mb-5">
          Welcome to Prof. Dr Nasir Uddin
        </h3>
        <div style="text-align: justify;">
          <p>
            Prof. Dr. Nasir Uddin Obtained Master of Surgery in Oral and
            Maxillofacial Surgery degree from University of Dhaka, Bangladesh in
            2010. He completed Bachelor of Dental Surgery (BDS) course from
            Dhaka Dental College in 1985. Obtaining the Fellowship award from
            Japan Dental Association in 1990 he got admission in Advanced
            Surgical Study Program in the Department of Oral and Maxillofacial
            Surgery at Osaka University.
          </p>
          <p class="mt-5">
            After completion of Bangladesh Civil Service (BCS) Examination he
            joined in Government service in 1995 and worked as a Dental Surgeon
            at Upazilla Health Complex, Murad Nagar, Comilla and Upazilla Health
            Complex, Doulatpur, Manikganj. He joined as a lecturer in the Dept.
            of Oral and Maxillofacial..........
          </p>
          <p class="mt-4">
            <router-link
              to="#"
              class="btn btn-outline-primary"
              style="text-decoration: none;"
            >
              Read More
            </router-link>
          </p>
        </div>
      </div>
      <div
        class="col-lg-4 col-md-4 col-sm-4 mt-3 sliderRight view overlay zoom"
        style="display: flex;"
      >
        <img
          class="img-fluid"
          src="../../../../public/images/Dr-Nasir_uddin.png"
          alt=""
        />
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 m-2"></div>
    </div>
  </div>

  <!-- Services -->
  <div class="card sliderBottom">
    <h3 class="text-uppercase mt-3" style="margin-left: 25%;">
      OUR SERVICE & PRICE
    </h3>
    <div class="card-body" style="margin-left: auto; margin-right: auto;">
      <div class="row">
        <div class="col-md-4">
          <table
            class="table table-bordered"
            style="background-color: RGB(47, 137, 252); color: white;"
          >
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
          </table>
        </div>
        <div class="col-md-4">
          <table
            class="table table-bordered"
            style="background-color: RGB(47, 137, 252); color: white;"
          >
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
          </table>
        </div>
        <div class="col-md-4">
          <table
            class="table table-bordered"
            style="background-color: RGB(47, 137, 252); color: white;"
          >
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
            <tr>
              <th>Root Canal Therapy</th>
              <td>BDT 5,000.00</td>
            </tr>
            <tr>
              <th>Ultrasonic Scaling</th>
              <td>BDT 3,000- 5,000</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>

  <!-- Why Choose Us -->
  <div class="bg-image2 p-5">
    <h3 class="text-uppercase m-5 sliderRight" style="padding-left: 12%;">
      WHY CHOOSE US?
    </h3>
    <div class="container sliderLeft">
      <div class="row mt-5 mb-5">
        <div class="col-1" style="padding: 0;">
          <i
            class="fa fa-briefcase mt-3"
            style="color: RGB(47, 137, 252); font-size: 60px;"
          ></i>
        </div>
        <div class="col-3" style="padding: 0;">
          <p class="mb-3"><b>FINANCE OPTION</b></p>
          <p>There are many ways to get free financial help and information.</p>
        </div>
        <div class="col-1" style="padding: 0;">
          <i
            class="fa-regular fa-face-smile mt-3"
            style="color: RGB(47, 137, 252); font-size: 60px;"
          ></i>
        </div>
        <div class="col-3" style="padding: 0;">
          <p class="mb-3"><b>CREATING SMILES</b></p>
          <p>
            Prof Dr Nasir Uddin creates beautiful smiles on your faces with
            painless treatment.
          </p>
        </div>
      </div>
      <div class="row mt-5 mb-5">
        <div class="col-1" style="padding: 0;">
          <i
            class="fa fa-users mt-3"
            style="color: RGB(47, 137, 252); font-size: 60px;"
          ></i>
        </div>
        <div class="col-3" style="padding: 0;">
          <p class="mb-3"><b>QUALIFIED STAFF</b></p>
          <p>
            Prof Dr Nasir Uddin has qualified and very caring Dentist doctors
            for you.
          </p>
        </div>
        <div class="col-1" style="padding: 0;">
          <i
            class="fa fa-magic mt-3"
            style="color: RGB(47, 137, 252); font-size: 60px;"
          ></i>
        </div>
        <div class="col-3" style="padding: 0;">
          <p class="mb-3"><b>LATEST TECHNOLOGY</b></p>
          <p>
            Prof Dr Nasir Uddin using latest technologies for giving you the
            best services.
          </p>
        </div>
      </div>
    </div>
  </div>

  <!-- Treatment -->
  <div class="card p-5 mb-5 sliderBottom">
    <h3 class="text-uppercase m-4" style="padding-left: 14%;">
      Treatment Blog
    </h3>
    <div class="container">
      <div
        id="carouselExampleIndicators"
        class="carousel slide"
        data-bs-ride="carousel"
      >
        <div class="carousel-indicators">
          <button
            type="button"
            class="active"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="0"
            aria-current="true"
            aria-label="Slide 1"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="1"
            aria-label="Slide 2"
          ></button>
          <button
            type="button"
            data-bs-target="#carouselExampleIndicators"
            data-bs-slide-to="2"
            aria-label="Slide 3"
          ></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="row">
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment1.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      July 13, 2022
                      <br />
                      ওরাল সার্জারি
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment2.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      August 05, 2022
                      <br />
                      মুখের টিউমার অপারেশন
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment1.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      February 25, 2022
                      <br />
                      আঁকাবাঁকা দাঁতের চিকিৎসা
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment2.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      February 25, 2022
                      <br />
                      ম্যাক্সিলোফেসিয়াল সার্জারি
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="row">
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment2.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      July 13, 2022
                      <br />
                      ওরাল সার্জারি
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment1.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      August 05, 2022
                      <br />
                      মুখের টিউমার অপারেশন
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment2.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      February 25, 2022
                      <br />
                      আঁকাবাঁকা দাঁতের চিকিৎসা
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment1.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      February 25, 2022
                      <br />
                      আঁকাবাঁকা দাঁতের চিকিৎসা
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="row">
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment1.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      July 13, 2022
                      <br />
                      ওরাল সার্জারি
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment2.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      August 05, 2022
                      <br />
                      মুখের টিউমার অপারেশন
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-3">
                <div class="img__wrap">
                  <img
                    class="img__img"
                    src="../../../../public/images/treatment1.jpg"
                  />
                  <div class="img__description_layer">
                    <p class="img__description">
                      <i class="fa-solid fa-clock" aria-hidden="true"></i>
                      February 25, 2022
                      <br />
                      আঁকাবাঁকা দাঁতের চিকিৎসা
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Video Gallery -->
  <div class="card p-5 m-3 sliderBottom">
    <h3 class="text-uppercase m-4" style="padding-left: 14%;">Video Gallery</h3>
    <div class="container">
      <div class="row">
        <div class="col-3">
          <div class="embed-responsive embed-responsive-16by9">
            <iframe
              class="embed-responsive-item"
              src="https://www.youtube.com/embed/1fIiPErBxkY"
            ></iframe>
          </div>
        </div>
        <div class="col-3">
          <div class="embed-responsive embed-responsive-16by9">
            <iframe
              class="embed-responsive-item"
              src="https://www.youtube.com/embed/2mgDmvYRUPg"
            ></iframe>
          </div>
        </div>
        <div class="col-3">
          <div class="embed-responsive embed-responsive-16by9">
            <iframe
              class="embed-responsive-item"
              src="https://www.youtube.com/embed/1fIiPErBxkY"
            ></iframe>
          </div>
        </div>
        <div class="col-3">
          <div class="embed-responsive embed-responsive-16by9">
            <iframe
              class="embed-responsive-item"
              src="https://www.youtube.com/embed/1fIiPErBxkY"
            ></iframe>
          </div>
        </div>
      </div>
    </div>
    <div class="text-center mt-4">
      <p>
        <router-link
          to="#"
          class="btn btn-primary p-2"
          style="text-decoration: none;"
        >
          View All
        </router-link>
      </p>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style>
@keyframes slideInFromLeft {
  0% {
    transform: translateX(-100%);
  }
  100% {
    transform: translateX(0);
  }
}
@keyframes slideInFromRight {
  0% {
    transform: translateX(200%);
  }
  100% {
    transform: translateX(0);
  }
}
@keyframes slideInFromBottom {
  0% {
    transform: translateY(200%);
  }
  100% {
    transform: translateY(0);
  }
}
.sliderLeft {
  animation: 1s ease-out 0s 1 slideInFromLeft;
}
.sliderRight {
  animation: 1s ease-out 0s 1 slideInFromRight;
}
.sliderBottom {
  animation: 1s ease-out 0s 1 slideInFromBottom;
}
.responsive1 {
  width: 100%;
  height: 90%;
}
.responsive2 {
  width: 90%;
  height: 90%;
}
.btn-primary {
  color: white;
  background-color: RGB(19, 145, 208);
}
.btn-primary :hover {
  background-color: white;
}
.btn-outline-primary {
  font-weight: bold;
  color: black;
  border: 2px solid RGB(47, 137, 252);
  border-radius: 0;
  padding: 10px 30px;
}
.table-bordered td {
  background-color: white;
  color: black;
}
.table-bordered td:hover {
  background-color: RGB(47, 137, 252);
  color: white;
}
.bg-image2 {
  background-image: url('../../../../public/images/why_choose_us.jpg');
  background-size: cover;
  background-color: rgba(207, 207, 216, 0.71);
  border: none;
}
.card {
  border: none;
}
.img__wrap {
  position: relative;
  height: 200px;
  width: 220px;
}

.img__description_layer {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: black;
  color: #fff;
  visibility: hidden;
  opacity: 1;
  display: flex;
  align-items: center;
  justify-content: center;

  transition: opacity 1s, visibility 0s;
}

.img__wrap:hover .img__description_layer {
  animation: 0.2s ease-out 0s 1 slideInFromLeft;
  margin-top: 75px;
  visibility: visible;
  opacity: 0.8;
}

.img__description {
  transition: 0s;
  transform: translateY(1em);
}

.img__wrap:hover {
  transform: translateY(0);
}
.carousel-control-prev {
  left: -90px;
}
.carousel-control-prev-icon {
  background-color: black;
  opacity: 0.7;
}
.carousel-control-next {
  right: -90px;
}
.carousel-control-next-icon {
  background-color: black;
  opacity: 0.7;
}
.carousel-indicators {
  bottom: -70px;
}
.carousel-inner {
  margin-bottom: 50px;
}
.carousel .carousel-indicators button {
  background-color: RGB(170, 185, 233);
}
.carousel .carousel-indicators button.active {
  background-color: RGB(47, 137, 252);
}
</style>
