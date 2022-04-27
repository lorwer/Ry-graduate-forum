<template>
  <div :class="className" :style="{height:height,width:width}" >
    <h3 class="title">随笔 总:{{total}}篇</h3>
    <div id="barChartId" style="height: 280px;width: 100%;"></div>
  </div>
</template>

<script>
import echarts from 'echarts'
require('echarts/theme/macarons') // echarts theme
import resize from './mixins/resize'
import {
    essayChart,
  } from "@/api/cms/charts";
const animationDuration = 6000

export default {
  mixins: [resize],
  props: {
    className: {
      type: String,
      default: 'chart'
    },
    width: {
      type: String,
      default: '100%'
    },
    height: {
      type: String,
      default: '300px'
    }
  },
  data() {
    return {
      chart: null,
      date: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
      data: [79, 52, 200, 334, 390, 330, 220],
      total: 0,
    }
  },
  mounted() {
    this.$nextTick(() => {
      this.getEssayChartData()
    })
  },
  beforeDestroy() {
    if (!this.chart) {
      return
    }
    this.chart.dispose()
    this.chart = null
  },
  methods: {
    getEssayChartData(){
      essayChart().then(response => {
        this.date = response.datex;
        this.data = response.essayData;
        this.total = response.total;
        this.initChart()
      });
    },
    initChart() {
      this.chart = echarts.init(document.getElementById('barChartId'), 'macarons')

      this.chart.setOption({
        tooltip: {
          trigger: 'axis',
          axisPointer: { // 坐标轴指示器，坐标轴触发有效
            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
          }
        },
        grid: {
          top: 10,
          left: '2%',
          right: '2%',
          bottom: '3%',
          containLabel: true
        },
        xAxis: [{
          type: 'category',
          data: this.date,
          axisTick: {
            alignWithLabel: true
          },
          axisLabel: {
             interval:0,
             rotate:40
          }
        }],
        yAxis: [{
          type: 'value',
          axisTick: {
            show: false
          }
        }],
        series: [{
          name: '随笔',
          type: 'bar',
          stack: 'vistors',
          barWidth: '60%',
          data: this.data,
          animationDuration
        }]
      })
    }
  }
}
</script>

<style scoped>
  .title{
    top: 0;
    left: 0;
    margin: 0;
    color: rgba(0, 0, 0, 0.45);
    font-size: 16px;
    font-weight:bold;
  }
</style>
