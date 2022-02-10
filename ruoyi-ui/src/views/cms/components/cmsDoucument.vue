<template>
  <el-container>
    <iframe src="/docs/index.html" id="qt" scrolling="no" frameborder="0"
      style="position:absolute;top:64px;left: 0px;right:0px;bottom:100px;opacity:1;"></iframe>
  </el-container>
</template>

<script>
  export default {
    name: 'cmsDoucument',
    data() {
      return {}
    },
    mounted() {
      /**
       * iframe-宽高自适应显示
       */
      function changeqtIframe() {
        const qt = document.getElementById('qt')
        const deviceWidth = document.body.clientWidth
        const deviceHeight = document.body.clientHeight
        qt.style.width = Number(deviceWidth) + 'px' // 数字是页面布局宽度差值
        qt.style.height = Number(deviceHeight) + 'px' // 数字是页面布局高度差
      }
      changeqtIframe()
      window.onresize = function() {
        changeqtIframe()
      }
    }
  }
   </script scoped>

  <style scoped rel = "stylesheet/scss"lang = "scss" >
  </style>
