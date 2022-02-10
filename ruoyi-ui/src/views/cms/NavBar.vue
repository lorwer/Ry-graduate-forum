<template>
  <el-header :style="'margin-bottom:'+ headerBottom +'px'">
    <h2 class="logo"><svg-icon icon-class="EarOfWheat" />  Blog</h2>
    <div class="bg-purple-light">
      <el-menu :default-active="activeIndex" router class="el-menu-demo" mode="horizontal" style="border: none;"
        background-color="rgba(0,0,0,0)" text-color="#fff" active-text-color="#ffd04b">
        <el-menu-item index="/cms/main/cmsIndex"><i class="el-icon-s-home" style="color: rgba(255, 255, 255);"></i>首页
        </el-menu-item>
        <el-menu-item :index="item.path" v-for="item in menulist" :key="item.id">
          <!--                图标-->
          <i :class="item.icon" style="color: rgba(255, 255, 255);"></i>
          <!--                文本-->
          {{item.authName}}
        </el-menu-item>
      </el-menu>
    </div>
    <div class="bg-purple-light el-menu-hidden" v-if="menuHiddenVisiable">
      <el-menu :default-active="activeIndex" router background-color="rgba(84,92,100,0.5)" text-color="#fff"
        active-text-color="#ffd04b">
        <el-menu-item index="/cms/main/cmsIndex" @click="menuAway"><i class="el-icon-s-home"
            style="color: rgba(255, 255, 255);"></i>首页</el-menu-item>
        <el-menu-item :index="item.path" v-for="item in menulist" :key="item.id" @click="menuAway">
          <!--                图标-->
          <i :class="item.icon" style="color: rgba(255, 255, 255);"></i>
          <!--                文本-->
          {{item.authName}}
        </el-menu-item>
      </el-menu>
    </div>

    <div class="menu-expend" @click="menuExpend">
      <i class="el-icon-menu" style="color: rgba(255, 255, 255);"></i>
    </div>

    <div v-if="searchInput" class="search_input">
      <el-input @focus="checkInput" @blur="notSearching()" class="search" placeholder="搜索博客"
        prefix-icon="el-icon-search" v-model="queryInfo.query" size="mini">
      </el-input>
      <ul v-if="searching">
        <li class="animate__animated animate__fadeInDown search-blog" v-for="blog in searchList" :key="blog.id"
          @click="getBlogInfo(blog.id)">
          <a><span v-html="blog.title"></span></a>
        </li>
      </ul>
    </div>

    <div v-if="islogin" class="bg-purple">
      <el-dropdown class="avatar-container right-menu-item hover-effect" trigger="click">
        <div class="avatar-wrapper">
          <el-avatar class="user-avatar" :src="avatar" @error="errorHandler">
            <i class="el-icon-s-custom" />
          </el-avatar>
          <p class="avatar-Name">{{name}}</p>
        </div>
        <el-dropdown-menu slot="dropdown">
          <router-link target="_blank" to="/index">
            <el-dropdown-item>管理博客</el-dropdown-item>
          </router-link>
          <el-dropdown-item divided @click.native="logout">
            <span>退出登录</span>
          </el-dropdown-item>
        </el-dropdown-menu>
      </el-dropdown>
    </div>
    <div v-else class="bg-purple">
      <div class="avatar-wrapper">
        <!-- <el-avatar class="avatar" src="avatar" @error="errorHandler">
            <i class="el-icon-s-custom" @click="tologin"/>
          </el-avatar> -->
        <p class="avatar-Name" @click="tologin">登录|注册</p>
      </div>
    </div>
  </el-header>
</template>

<script>
  import {
    mapGetters
  } from 'vuex'
  import {
    getToken
  } from '@/utils/auth'
  import 'element-ui/lib/theme-chalk/display.css'
  import {
    cmsListBlog,
  } from "@/api/cms/blog";
  export default {
    name: 'cmsNavBar',
    data() {
      return {
        activeIndex: 'this.$router.path',
        islogin: false,
        searchInput: true,
        menuHiddenVisiable: false,
        headerBottom: 0,
        queryInfo: {
          query: '',
          timer: null
        },
        searchList: [],
        searching: false,
        menulist: [{
            id: 1,
            authName: '随笔',
            path: '/cms/main/essay',
            icon: 'el-icon-edit',
          },
          {
            id: 2,
            authName: '留言',
            path: '/cms/main/message',
            icon: 'el-icon-chat-dot-round',
          },
          {
            id: 3,
            authName: '文档',
            path: '/cms/doucument',
            icon: 'el-icon-document',
          },
        ],
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          title: null,
          type: 1,
          content: null,
          top: null,
          views: null,
          status: null,
        },
      };
    },
    computed: {
      ...mapGetters([
        'avatar',
        'name'
      ]),
    },
    watch: {
      'queryInfo.query': {
        handler(value) {
          if (this.timer) {
            clearTimeout(this.timer)
          }
          this.timer = setTimeout(() => {
            this.searchBlog()
          }, 300)
        }
      }
    },
    created() {
      this.login();
      // this.ResponsiveLayout();
    },
    methods: {
      menulistAdd() {
        //push()方法一般是添加到数组的最后的位置；unshift()方法是往最前面的位置添加。
        // this.menulist.push({id:"",authName:""})
        this.menulist.unshift({
          id: "",
          authName: ""
        })
      },
      //响应式布局
      ResponsiveLayout() {
        //浏览器窗口的内部高度
        var w = window.innerWidth ||
          document.body.clientWidth;
        //浏览器窗口的内部宽度
        var h = window.innerHeight ||
          document.body.clientHeight;
        console.log(w, h);
      },
      // 展开菜单栏
      menuExpend() {
        this.menuHiddenVisiable = !this.menuHiddenVisiable
        if (this.menuHiddenVisiable === true) {
          this.headerBottom = (this.menulist.length + 1) * 56
        } else {
          this.headerBottom = 0
        }
      },
      //收起菜单
      menuAway() {
        this.menuHiddenVisiable = false;
        this.headerBottom = 0;
      },
      notSearching() {
        setTimeout(() => {
          this.searching = false
        }, 100)
      },
      checkInput() {
        this.searching = this.queryInfo.query !== '';
      },
      tologin() {
        this.$router.push({
          path: "/cmsLogin"
        });
      },
      login() {
        let token = getToken();
        if (token == null || token == '') {
          this.islogin = false;
        } else {
          this.islogin = true;
        }
      },
      errorHandler() {
        return true
      },
      async searchBlog() {
        if (this.queryInfo.query === '') {
          this.searching = false
          return
        }
        this.queryParams.title = this.queryInfo.query;
        cmsListBlog(this.queryParams).then(response => {
          let lsitSize = response.rows.length;
          if(lsitSize>0){
            for(let i = 0;i<lsitSize;i++){
              let redTitle = this.brightenKeyword(response.rows[i].title,this.queryInfo.query);
              response.rows[i].title = redTitle;
            }
          };
          this.searchList = response.rows;
          if (this.searchList.length !== 0) {
            this.searching = true
          }
        });
      },
      //搜索关建字标红
      brightenKeyword(val, keyword) {
        const Reg = new RegExp(keyword, 'i');
        let res = '';
        if (val) {
          res = val.replace(Reg, `<span style="color: red;">${keyword}</span>`);
          return res;
        }
      },
      // 跳转到博客详情页
      getBlogInfo(blogId) {
        let routeUrl = this.$router.resolve({
          path: '/cms/main/blog',
          query: {
            id: blogId
          }
        });
        window.open(routeUrl.href, '_blank');
      },
      async logout() {
        this.$confirm('确定注销并退出系统登录吗？', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$store.dispatch('LogOut').then(() => {
            location.href = '/cms/main/cmsIndex';
          })
        }).catch(() => {});
      }
    }
  }
</script>

<style scoped>
  .el-header {
    display: flex;
    justify-content: space-between;
    background-color: rgba(0, 0, 0, 0.2);
    align-items: center;
    transition: .2s;
  }

  .el-header:hover {
    opacity: 1 !important;
  }

  .el-menu {
    flex-shrink: 0;
    background-color: rgba(0, 0, 0, 0) !important;
  }

  .el-menu /deep/ .el-menu-item {
    background-color: rgba(0, 0, 0, 0) !important;
  }


  .el-menu /deep/ .el-menu-item i {
    color: rgba(255, 255, 255);
  }

  .el-menu /deep/ .el-menu-item:hover i {
    color: white;
  }

  .el-menu /deep/ .el-menu-item:hover {
    background-color: rgba(0, 0, 0, 0.5) !important;
  }

  .search_input {
    position: relative;
    box-sizing: border-box;
  }


  .search_input ul {
    position: absolute;
    top: 30px;
    width: 100%;
    border: 1px solid #e5e9ef;
    margin-top: 1px;
    background: #fff;
    z-index: 10000;
    border-radius: 2px;
    box-shadow: 0 2px 4px rgba(58, 118, 142, 0.16);
    padding: 10px 0;
    font-size: 14px;
    box-sizing: border-box;
  }

  .search_input ul li {
    padding: 0 16px;
    height: 32px;
    line-height: 32px;
    cursor: pointer;
    word-wrap: break-word;
    word-break: break-all;
    display: block;
    color: #222;
    position: relative;
    /*transition: .2 ease;*/
  }

  .search_input ul li:hover {
    background-color: #e8f3ff;
  }


  .search-blog {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    padding-left: 20px;
    padding-right: 20px;
  }

  .bg-purple-light {
    float: right;
  }

  .bg-purple {
    float: right;
  }

  .user-avatar {
    float: left;
    cursor: pointer;
    border: dashed rgba($color: #ffff7f, $alpha: 0.5);
  }

  .avatar-container {
    margin-right: 30px;
  }

  .avatar-wrapper {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .avatar-Name {
    margin-left: 10px;
    cursor: pointer;
    float: right;
    font-size: 16px;
    color: #ffffff;
  }

  .logo {
    float: left;
    color: #ffd04b;
    font-weight: bold;
  }

  .logo:hover {
    cursor: pointer;
  }

  .el-menu-hidden {
    /*display: none;*/
    position: absolute;
    top: 60px;
    left: 0;
    border-top: 1px solid #ccc;
    border-right: none;
    width: 100%;
  }

  .menu-expend {
    display: none !important;
  }

  /* 窗口可视区域小于1000隐藏搜索框 */
  @media screen and (max-width: 1000px) {
    .search_input {
      display: none;
    }
  }

  @media screen and (max-width: 768px) {
    .el-menu /deep/ .el-menu-item {
      background-color: rgba(0, 0, 0, 0.3) !important;
    }

    .el-menu-demo {
      display: none;
    }

    .menu-expend {
      display: block !important;
      float: right;
    }

    .menu-expend:hover {
      color: #ffd04b;
      cursor: pointer;
    }
  }
</style>
