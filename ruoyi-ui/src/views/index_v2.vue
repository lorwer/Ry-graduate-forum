<template>
  <div class="dashboard-editor-container">

    <panel-group @handleSetLineChartData="handleSetLineChartData" />

    <el-row style="background:#fff;padding:16px 16px 0;margin-bottom:32px;">
      <line-chart :chart-data="lineChartData" />
    </el-row>

    <el-row :gutter="32">
      <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <raddar-chart />
        </div>
      </el-col>
      <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <pie-chart />
        </div>
      </el-col>
      <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <bar-chart />
        </div>
      </el-col>
    </el-row>


  </div>
</template>

<script>
import PanelGroup from './dashboard/PanelGroupCms'
import LineChart from './dashboard/LineChartCms'
import RaddarChart from './dashboard/TagChart'
import PieChart from './dashboard/PieChartCms'
import BarChart from './dashboard/BarChartCms'

const lineChartData = {
  views: {
    blogColor: 'rgba(243, 248, 255, 0)',
    commentColor: 'rgba(243, 248, 255, 0)',
    messageColor: 'rgba(243, 248, 255, 0)',
  },
  blog: {
    blogColor: 'rgba(56, 136, 250, 0.2)',
    commentColor: 'rgba(243, 248, 255, 0)',
    messageColor: 'rgba(243, 248, 255, 0)',
  },
  comment: {
    blogColor: 'rgba(243, 248, 255, 0)',
    commentColor: 'rgba(255, 0, 90, 0.2)',
    messageColor: 'rgba(243, 248, 255, 0)',
  },
  message: {
    blogColor: 'rgba(243, 248, 255, 0)',
    commentColor: 'rgba(243, 248, 255, 0)',
    messageColor: 'rgba(52, 191, 163, 0.2)',
  }
}

export default {
  name: 'Index',
  components: {
    PanelGroup,
    LineChart,
    RaddarChart,
    PieChart,
    BarChart
  },
  data() {
    return {
      lineChartData: lineChartData.views
    }
  },
  methods: {
    handleSetLineChartData(type) {
      this.lineChartData = lineChartData[type]
    }
  }
}
</script>

<style lang="scss" scoped>
.dashboard-editor-container {
  padding: 32px;
  background-color: rgb(240, 242, 245);
  position: relative;

  .chart-wrapper {
    background: #fff;
    padding: 16px 16px 0;
    margin-bottom: 32px;
  }
}

@media (max-width:1024px) {
  .chart-wrapper {
    padding: 8px;
  }
}
</style>
