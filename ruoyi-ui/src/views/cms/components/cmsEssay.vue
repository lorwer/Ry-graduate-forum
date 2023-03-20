<template>
  <el-row :gutter="20">
    <el-col :sm="3" class="hidden-xs-only" style="opacity:0;">左侧占位</el-col>
    <el-col :xs="24" :sm="18">
      <el-container>
        <el-timeline class="animate__animated animate__fadeInLeft">
          <el-timeline-item :color="color" v-for="essay in essayList" :key="essay.id" :timestamp="essay.createTime"
            placement="top">
            <el-card
              style="letter-spacing: 1px;border: 1px solid rgba(255,190,23,0.9); background-color: rgba(255,255,255,0.9);box-shadow: 0 0 30px -10px ">
              <h2 v-if="essay.title">{{essay.title}}</h2>
              <div class="typo ql-editor" v-html="essay.content"></div>
            </el-card>
          </el-timeline-item>
        </el-timeline>
      </el-container>
    </el-col>
    <el-col :sm="3" class="hidden-xs-only" style="opacity:0;">右侧占位</el-col>
    <!-- 设置底部距离的 -->
    <el-backtop :bottom="60">
          <div
          style="{
            height: 50px;
            width: 50px;
            background-color: rgba(240,239,241,1);
            box-shadow: 0 0 6px rgba(0,0,0, .12);
            text-align: center;
            line-height: 40px;
            border-radius:2px;
            color: #1989fa;
          }"
        >
          <svg-icon icon-class="top" />
        </div>
    </el-backtop>
  </el-row>
</template>

<script>
  import {
    cmsEssayList,
  } from "@/api/cms/post";
  export default {
    name: 'essay',
    data() {
      return {
        essayList: [],
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          title: null,
          type: 2,
          content: null,
          top: null,
          views: null,
          status: null,
        },
        color: "#ffd04b",
      }
    },
    created() {
      this.getEssayList()
    },
    methods: {
      async getEssayList() {
        cmsEssayList(this.queryParams).then(response => {
          this.essayList = response.rows;
        });
      },
    }
  }
</script>

<style scoped>
  .el-timeline {
    font: 16px/1.5 'Microsoft Yahei', 'PingFang SC', 'Hiragino Sans GB', sans-serif !important;

    width: 80%;
    margin: 0 auto;
  }

  .el-card {
    border-radius: 20px;
    box-shadow: 0 0 15px 5px white;
  }

  @media screen and (max-width: 768px) {
    .el-timeline {
      width: 98%;
      padding: 2px;
    }

    .el-timeline /deep/ .el-timeline-item__wrapper {
      padding-left: 15px !important;
    }
  }
</style>
