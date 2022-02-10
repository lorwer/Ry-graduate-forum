<!--评论模块-->
<template>
  <div class="container">
    <div class="comment" v-for="item in comments">
      <div class="info" :id="item.id">
        <el-avatar v-if="item.avatar!==''&&item.avatar!=null" :src="item.avatar"></el-avatar>
        <el-avatar v-else icon="el-icon-user-solid"></el-avatar>
        <div class="right">
          <div class="name">{{item.createBy}}</div>
          <div class="date">{{item.createTime}}</div>
        </div>
      </div>
      <div class="content">{{item.content}}</div>
      <div class="control">
        <span class="like" :class="{active: item.isLike}" @click="likeClick(item)">
          <svg-icon icon-class="like" />
          <span class="like-num" style="margin-left: 5px;">{{item.likeNum > 0 ? item.likeNum + '人赞' : '赞'}}</span>
        </span>
        <span class="comment-reply" @click="showCommentInput(item)">
          <svg-icon icon-class="comment" />
          <span style="margin-left: 5px;">回复</span>
        </span>
      </div>
      <div class="reply">
        <div class="item" v-for="reply in item.children" :id="reply.id">
          <div class="reply-content">
            <span class="from-name">{{reply.createBy}}</span><span>: </span>
            <span class="to-name" v-show="reply.parentId!=reply.mainId">@{{reply.pcreateBy}}</span>
            <span v-show="reply.delFlag=='0'">{{reply.content}}</span>
            <span v-show="reply.delFlag=='1'" style="color: #909399;">该评论已被删除！</span>
          </div>
          <div class="reply-bottom">
            <span>{{reply.createTime}}</span>
            <span class="reply-text" @click="showCommentInput(item, reply)">
              <svg-icon icon-class="comment" />
              <span style="margin-left: 5px;">回复</span>
            </span>
          </div>
        </div>
        <div class="write-reply" v-if="item.children!=null" @click="showCommentInput(item)">
          <i class="el-icon-edit"></i>
          <span class="add-comment">添加新评论</span>
        </div>
        <input-component :show="showItemId === item.id"
                         :value="inputComment"
                         :toComment="name"
                         :toId="id"
                         @cancel="cancelInput"
                         @confirm="commitComment">
        </input-component>
        <!--<transition name="fade">-->
        <!--<div class="input-wrapper" v-if="showItemId === item.id">-->
        <!--<el-input class="gray-bg-input"-->
        <!--v-model="inputComment"-->
        <!--type="textarea"-->
        <!--:rows="3"-->
        <!--autofocus-->
        <!--placeholder="写下你的评论">-->
        <!--</el-input>-->
        <!--<div class="btn-control">-->
        <!--<span class="cancel" @click="cancel">取消</span>-->
        <!--<el-button class="btn" type="success" round @click="commitComment">确定</el-button>-->
        <!--</div>-->
        <!--</div>-->
        <!--</transition>-->
      </div>
    </div>
  </div>
</template>

<script>

  import Vue from 'vue'
  import InputComponent from './InputComponent'
  import {
    getToken
  } from '@/utils/auth'
  import {
    addCmsCommentLike,
    delCmsCommentLike,
  } from "@/api/cms/comment"

  export default {
    props: {
      comments: {
        type: Array,
        required: true
      }
    },
    components: {
      "input-component": InputComponent
    },
    data() {
      return {
        inputComment: '',
        name: '',
        id: null,
        showItemId: '',
        commentLikeForm: {},
      }
    },
    computed: {},
    methods: {
      // 表单重置
      reset() {
        this.commentLikeForm = {
          commentId: null,
          userId: null,
          likeNum: null,
          createBy: null,
          createTime: null,
          updateBy: null,
          updateTime: null
        };
        this.resetForm("commentLikeForm");
      },
      /**
       * 新增点赞
       */
      addCommentLike(item){
        let token = getToken();
        this.reset();
        if (token==null || token == '') {
          this.commentLikeForm.createBy = "匿名用户"
          this.commentLikeForm.commentId = item.id
          this.commentLikeForm.likeNum = item.likeNum
        } else {
          this.commentLikeForm.createBy = this.$store.getters.name
          this.commentLikeForm.commentId = item.id
          this.commentLikeForm.likeNum = item.likeNum
        }
        addCmsCommentLike(this.commentLikeForm).then(response => {
          this.reset();
        });
      },
      /**
       * 删除点赞
       */
      delCommentLike(item){
        let token = getToken();
        this.reset();
        if (token==null || token == '') {
          this.commentLikeForm.createBy = "匿名用户"
          this.commentLikeForm.commentId = item.id
          this.commentLikeForm.likeNum = item.likeNum
        } else {
          this.commentLikeForm.createBy = this.$store.getters.name
          this.commentLikeForm.commentId = item.id
          this.commentLikeForm.likeNum = item.likeNum
        }
        delCmsCommentLike(this.commentLikeForm).then(response => {
          this.reset();
        });
      },
      /**
       * 点赞
       */
      likeClick(item) {
        if (item.isLike === null) {
          Vue.$set(item, "isLike", true);
          item.likeNum++
          this.addCommentLike(item)
        } else {
          if (item.isLike) {
            item.likeNum--
            this.delCommentLike(item)
          } else {
            item.likeNum++
            this.addCommentLike(item)
          }
          item.isLike = !item.isLike;
        }
      },

      /**
       * 点击取消按钮
       */
      cancelInput() {
        this.showItemId = ''
      },

      /**
       * 提交评论
       */
      commitComment(value) {
        this.$emit("replyConfirm", value)
        // console.log(value);
      },

      /**
       * 点击评论按钮显示输入框
       * item: 当前大评论
       * reply: 当前回复的评论
       */
      showCommentInput(item, reply) {
        if (reply) {
          this.inputComment = ""
          this.name = "回复@" + reply.createBy + ":"
          this.id = reply.id
        } else {
          this.inputComment = ''
          this.name = '写下你的评论'
          this.id = item.id
        }
        this.showItemId = item.id
      }
    },
    created() {
      // console.log(this.comments)
    }
  }
</script>

<style scoped rel="stylesheet/scss"  lang="scss">

  .container {
    padding: 0 10px;
    box-sizing: border-box;
    .comment {
      display: flex;
      flex-direction: column;
      padding: 10px;
      border-bottom: 1px solid #F2F6FC;
      .info {
        display: flex;
        align-items: center;
        .right {
          display: flex;
          flex-direction: column;
          margin-left: 10px;
          .name {
            font-size: 16px;
            color: #303133;
            margin-bottom: 5px;
            font-weight: 500;
          }
          .date {
            font-size: 12px;
            color: #909399;
          }
        }
      }
      .content {
        font-size: 16px;
        color: #303133;
        line-height: 20px;
        padding: 10px 0;
      }
      .control {
        display: flex;
        align-items: center;
        font-size: 14px;
        color: #909399;
        .like {
          display: flex;
          align-items: center;
          margin-right: 20px;
          cursor: pointer;
          &.active, &:hover {
            color: #409EFF;
          }
          .iconfont {
            font-size: 14px;
            margin-right: 5px;
          }
        }
        .comment-reply {
          display: flex;
          align-items: center;
          cursor: pointer;
          &:hover {
            color: #333;
          }
          .iconfont {
            font-size: 16px;
            margin-right: 5px;
          }
        }

      }
      .reply {
        margin: 10px 0;
        border-left: 2px solid #DCDFE6;
        .item {
          margin: 0 10px;
          padding: 10px 0;
          border-bottom: 1px dashed #EBEEF5;
          .reply-content {
            display: flex;
            align-items: center;
            font-size: 14px;
            color: #303133;
            .from-name {
              color: #409EFF;
            }
            .to-name {
              color: #409EFF;
              margin-left: 5px;
              margin-right: 5px;
            }
          }
          .reply-bottom {
            display: flex;
            align-items: center;
            margin-top: 6px;
            font-size: 12px;
            color: #909399;
            .reply-text {
              display: flex;
              align-items: center;
              margin-left: 10px;
              cursor: pointer;
              &:hover {
                color: #333;
              }
              .icon-comment {
                margin-right: 5px;
              }
            }
          }
        }
        .write-reply {
          display: flex;
          align-items: center;
          font-size: 14px;
          color: #909399;
          padding: 10px;
          cursor: pointer;
          &:hover {
            color: #303133;
          }
          .el-icon-edit {
            margin-right: 5px;
          }
        }
        .fade-enter-active, fade-leave-active {
          transition: opacity 0.5s;
        }
        .fade-enter, .fade-leave-to {
          opacity: 0;
        }
        .input-wrapper {
          padding: 10px;
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
      }
    }
  }
</style>
