<template>
  <transition name="fade">
    <div class="input-wrapper" v-if="show">
      <el-input class="gray-bg-input"
      maxlength="100" show-word-limit
                v-model="inputComment"
                type="textarea"
                :rows="3"
                @focus="inputFocus"
                :placeholder="name">
      </el-input>
      <!--enter-active-class="animated fadeInDown" leave-active-class="animated fadeOutUp"-->
      <transition name="fade2">
        <div class="btn-control" v-show="controlShow">
          <span class="cancel" @click="cancel">取消</span>
          <el-button class="btn" type="success" round @click="commitComment">确定</el-button>
        </div>
      </transition>
    </div>
  </transition>
</template>

<script>
  export default {
    props: {
      //控制整个组件是否显示
      show: {
        type: Boolean,
        required: true,
      },
      //传入input框的默认值
      value: {
        type: String
      },
      //传入input框的默认值
      toComment: {
        type: String
      },
      //传入input框的默认值
      toId: {
        type: Number
      },
      //类型，end(文章末尾处), comment(评论里),
      type: {
        type: String,
        // default: 'comment'
      }
    },
    components: {},
    data() {
      return {
        inputComment: '',
        name:'',
        id:'',
        //确定取消按钮是否显示
        controlShow: false
      }
    },
    computed: {},
    methods: {
      /**
       * 点击取消按钮
       */
      cancel() {
        if (this.type === 'end') {
          this.controlShow = false
        }
        this.$emit("cancel")
      },

      /**
       * 提交评论
       */
      commitComment() {
        this.$emit("confirm", {'inputComment':this.inputComment,'id':this.id})
        this.inputComment = ""
      },

      //input活得焦点时调用
      inputFocus() {
        // console.log("focus");
        if (this.type === 'end') {
          this.controlShow = true
        }
      },

    },
    watch: {
      //监听toComment更新，赋值给name
      toComment: function (newValue, oldValue) {
        this.name = newValue;
        this.inputComment = ''
      },
      toId: function (newValue, oldValue) {
        this.id = newValue;
        this.inputComment = ''
      }
    },
    mounted() {
      if (this.type === 'end') {
        this.controlShow = false
      } else {
        this.controlShow = true
      }
      // console.log(this.controlShow)
    }
  }
</script>

<style scoped rel="stylesheet/scss" lang="scss">

  .fade-enter-active, fade-leave-active {
    transition: opacity 0.5s;
  }

  .fade-enter, .fade-leave-to {
    opacity: 0;
  }

  .input-wrapper {
    padding: 10px;

    .fade2-enter-active, fade2-leave-active {
      transition: opacity 0.5s;
    }

    .fade2-enter, .fade2-leave-to {
      opacity: 0;
    }
    .gray-bg-input, .el-input__inner {
      /*background-color: #67C23A;*/
    }
    .btn-control {
      display: flex;
      justify-content: flex-end;
      align-items: center;
      padding-top: 10px;
      .cancel {
        font-size: 16px;
        color: #606266;
        margin-right: 20px;
        cursor: pointer;
        &:hover {
          color: #333;
        }
      }
      .confirm {
        font-size: 16px;
      }
    }
  }
</style>
