<template>
  <div :class="className" :style="{height:height,width:width}" >
    <h3 class="title">分类</h3>
    <div id="pieChartId" style="height: 280px;width: 100%;"></div>
  </div>
</template>

<script>
import echarts from 'echarts'
require('echarts/theme/macarons') // echarts theme
import resize from './mixins/resize'
import {
    pieChart,
  } from "@/api/cms/charts";
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
      type:['Industries', 'Technology', 'Forex', 'Gold', 'Forecasts'],
      data:[
              { value: 320, name: 'Industries' },
              { value: 240, name: 'Technology' },
              { value: 149, name: 'Forex' },
              { value: 100, name: 'Gold' },
              { value: 59, name: 'Forecasts' }
            ],
    }
  },
  mounted() {
    this.$nextTick(() => {
      this.getPieChart()
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
    getPieChart(){
      pieChart().then(response => {
        this.type = response.type;
        this.data = response.data;
        this.initChart()
      });
    },
    initChart() {
      this.chart = echarts.init(document.getElementById('pieChartId'), 'macarons')

      this.chart.setOption({
        // title: {
        //     text: '分类',
        //     // subtext: 'Fake Data',
        //     textStyle:{
        //       color: 'rgba(0, 0, 0, 0.45)',
        //       fontWeight: 'bold',
        //       fontSize: '16'
        //     }
        //   },
        tooltip: {
          trigger: 'item',
          formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
          left: 'center',
          bottom: '10',
          data: this.type
        },
        series: [
          {
            name: '分类',
            type: 'pie',
            roseType: 'radius',
            radius: [15, 75],
            center: ['50%', '38%'],
            data: this.data,
            animationEasing: 'cubicInOut',
            animationDuration: 2600
          }
        ]
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
