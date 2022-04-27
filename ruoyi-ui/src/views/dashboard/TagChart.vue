<template>
    <div class="com-container">
        <h3 class="title">标签</h3>
        <div class="com-chart" ref="tag_ref">
            <div class="tag" v-for="tag in randerList" :key="tag.id"
                 :style="{left:tag.x+'px',top:tag.y+'px',color:tag.color,opacity:tag.opacity,filter:tag.filter,fontSize:tag.fontSize+'px',transform: tag.transform}">
                {{tag.name}}
            </div>
        </div>
    </div>
</template>

<script>
import {
  tagChart,
} from "@/api/cms/charts";
export default {
    data() {
        return {
            tagList: [],
            randerList: [],
            radius:112,
            distance : 187
        }
    },
    created() {
        this.getData()
    },
    mounted() {
        window.addEventListener('resize', this.screenAdapter)
    },
    screenAdapter() {
        this.chartInstance.resize()
    },
    methods: {

        compare(property) {
            return function (a, b) {
                let value1 = a[property].length;
                let value2 = b[property].length;
                return value2 - value1;
            }
        },
        async getData() {
            tagChart().then(response => {
              this.tagList = response.tag;
              this.initPosition()
            });
        },
        // 生成tag的三维坐标
        initPosition() {
            let len = this.tagList.length
            let radius = this.radius//球体半径
            let distance = this.distance //焦距
            for (let i = 0; i < len; i++) {
                let k = (2 * (i + 1) - 1) / len - 1;
                let a = Math.acos(k)
                let b = a * Math.sqrt(len * Math.PI);
                let x = radius * Math.sin(a) * Math.cos(b);
                let y = radius * Math.sin(a) * Math.sin(b);
                let z = radius * Math.cos(a)
                let scale = distance / (distance - z);
                let fontSize = 12;
                let color = "rgb(" + parseInt(Math.random() * 255) + "," + parseInt(Math.random() * 255) + "," + parseInt(Math.random() * 255) + ")";
                let alpha = (z + radius) / (2 * radius)
                let opacity = alpha + 0.5
                let filter = "alpha(opacity = " + (alpha + 0.5) * 100 + ")";
                this.randerList = this.randerList.concat({
                    name: this.tagList[i],
                    x: x,
                    y: y,
                    z: z,
                    color: color,
                    opacity: opacity,
                    filter: filter,
                    fontSize: fontSize
                })
            }
            this.animate()
        },
        animate() {
            this.randerList.forEach(function (item) {
                let distance = 187
                let radius = 112
                let cx = 200
                let cy = 150
                let scale = distance / (distance - item.z);
                let alpha = (item.z + radius) / (2 * radius);
                let left = item.x + cx;
                let top = item.y + cy;
                let transform = 'translate(-50%,-50%) scale(' + scale + ')';
                item.opacity = alpha + 0.5;
                item.zIndex = parseInt(scale * 100);
                item.transform = transform;
                item.webkitTransform = transform;
            });
            this.rotateX();
            this.rotateY();
            // console.log(this.randerList)
            requestAnimationFrame(this.animate);
        },

        rotateX() {
            let angleX = Math.PI / 500
            let angleY = Math.PI / 500
            let cos = Math.cos(angleX)
            let sin = Math.sin(angleX)
            this.randerList.forEach(function(item) {
                let y1 = item.y * cos - item.z * sin;
                let z1 = item.z * cos + item.y * sin;
                item.y = y1;
                item.z = z1;
            })
        },
        rotateY() {
            let angleX = Math.PI / 500
            let angleY = Math.PI / 500
            let cos = Math.cos(angleY)
            let sin = Math.sin(angleY)
            this.randerList.forEach(function(item) {
                let x1 = item.x * cos - item.z * sin;
                let z1 = item.z * cos + item.x * sin;
                item.x = x1;
                item.z = z1;
            })
        }
    }
}
</script>

<style scoped>

    .com-container {
        width: 100%;
        height: 300px;
        position: relative;
    }

    .com-chart {
        position: absolute;
        left: 50%;
        top: 50%;
        width: 100%;
        height: 100%;
    }

    .tag {
        position: absolute;
    }

    .tag:hover {
        background-color: rgba(0, 0, 0, 0.2);
        border-radius: 5px;
    }

    .title{
        position: absolute;
        top: 0;
        left: 0;
        margin: 0;
        color: rgba(0, 0, 0, 0.45);
        font-size: 16px;
        font-weight:bold;
    }

    canvas {
        border-radius: 20px;
    }
</style>
