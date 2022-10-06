<template>
  <div class="wrapper">
    <TopbarComponent></TopbarComponent>

    <SidebarComponent></SidebarComponent>

    <div class="content-wrapper">
      <div class="content-header"></div>

      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <!-- @if (session('status'))
                  <div class="alert alert-success" role="alert">
                    {{ session('status') }}
                  </div>
                  @endif -->
                  <router-view></router-view>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <FooterComponent></FooterComponent>
  </div>
</template>

<script>
import TopbarComponent from '../BackEnd/Topbar.vue'
import SidebarComponent from '../BackEnd/Sidebar.vue'
import FooterComponent from '../BackEnd/Footer.vue'

export default {
  components: {
    TopbarComponent,
    SidebarComponent,
    FooterComponent,
  },
}
</script>
