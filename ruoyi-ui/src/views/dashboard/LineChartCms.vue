<template>
  <div :class="className" :style="{height:height,width:width}" />
</template>

<script>
import echarts from 'echarts'
require('echarts/theme/macarons') // echarts theme
import resize from './mixins/resize'
import {
    lineChart,
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
      default: '350px'
    },
    autoResize: {
      type: Boolean,
      default: true
    },
    chartData: {
      type: Object,
      required: true
    }
  },
  data() {
    return {
      chart: null,
      datex:['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
      blogData: [100, 120, 161, 134, 105, 160, 165],
      commentData: [120, 82, 91, 154, 162, 140, 145],
      messageData: [100, 72, 191, 54, 62, 100, 105]
    }
  },
  watch: {
    chartData: {
      deep: true,
      handler(val) {
        this.setOptions(val)
      }
    }
  },
  mounted() {
    this.$nextTick(() => {
      this.initChart()
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
    initChart() {
      this.getLineChartData();
    },
    getLineChartData(){
      lineChart().then(response => {
        this.datex = response.datex;
        this.blogData = response.blogData;
        this.commentData = response.commentData;
        this.messageData = response.messageData;
        this.chart = echarts.init(this.$el, 'macarons')
        this.setOptions(this.chartData)
      });
    },
    setOptions({ blogColor, commentColor, messageColor } = {}) {
      this.chart.setOption({
        xAxis: {
          data: this.datex,
          boundaryGap: false,
          axisTick: {
            show: false
          },
          // axisLabel: {
          //    interval:0,
          //    rotate:40
          // }
        },
        grid: {
          left: 10,
          right: 10,
          bottom: 20,
          top: 30,
          containLabel: true
        },
        tooltip: {
          trigger: 'axis',
          axisPointer: {
            type: 'cross'
          },
          padding: [5, 10]
        },
        yAxis: {
          axisTick: {
            show: false
          }
        },
        legend: {
          data: [ '文章','评论','留言']
        },
        series: [
        {
          name: '文章',
          smooth: true,
          type: 'line',
          itemStyle: {
            normal: {
              color: '#3888fa',
              lineStyle: {
                color: '#3888fa',
                width: 2
              },
              areaStyle: {
                color: blogColor
              }
            }
          },
          data: this.blogData,
          animationDuration: 2800,
          animationEasing: 'quadraticOut'
        },
        {
          name: '评论', itemStyle: {
            normal: {
              color: '#FF005A',
              lineStyle: {
                color: '#FF005A',
                width: 2
              },
              areaStyle: {
                color: commentColor
              }
            }
          },
          smooth: true,
          type: 'line',
          data: this.commentData,
          animationDuration: 2800,
          animationEasing: 'cubicInOut'
        },
        {
          name: '留言', itemStyle: {
            normal: {
              color: '#34bfa3',
              lineStyle: {
                color: '#34bfa3',
                width: 2
              },
              areaStyle: {
                color: messageColor
              }
            }
          },
          smooth: true,
          type: 'line',
          data: this.messageData,
          animationDuration: 2800,
          animationEasing: 'cubicInOut'
        }]
      })
    }
  }
}
</script>
