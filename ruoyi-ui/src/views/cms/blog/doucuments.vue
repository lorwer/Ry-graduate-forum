<template>
  <div class="app-container">
    <el-container>
        <el-aside width="200px">Aside</el-aside>
        <el-main>
          <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
            <el-form-item label="标题" prop="title">
              <el-input v-model="queryParams.title" placeholder="请输入标题" clearable size="small"
                @keyup.enter.native="handleQuery" />
            </el-form-item>
            <el-form-item label="状态" prop="status">
              <el-select v-model="queryParams.status" placeholder="请选择状态" clearable size="small">
                <el-option v-for="dict in dict.type.cms_blog_status" :key="dict.value" :label="dict.label"
                  :value="dict.value" />
              </el-select>
            </el-form-item>
            <el-form-item>
              <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
              <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
            </el-form-item>
          </el-form>

          <el-row :gutter="10" class="mb8">
            <el-col :span="1.5">
              <el-button type="primary" plain icon="el-icon-plus" size="mini" @click="handleAdd"
                v-hasPermi="['cms:blog:add']">新增</el-button>
            </el-col>
            <el-col :span="1.5">
              <el-button type="success" plain icon="el-icon-edit" size="mini" :disabled="single" @click="handleUpdate"
                v-hasPermi="['cms:blog:edit']">修改</el-button>
            </el-col>
            <el-col :span="1.5">
              <el-button type="danger" plain icon="el-icon-delete" size="mini" :disabled="multiple" @click="handleDelete"
                v-hasPermi="['cms:blog:remove']">删除</el-button>
            </el-col>
            <el-col :span="1.5">
              <el-button type="warning" plain icon="el-icon-download" size="mini" @click="handleExport"
                v-hasPermi="['cms:blog:export']">导出</el-button>
            </el-col>
            <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
          </el-row>

          <el-table v-loading="loading" :data="blogList" @selection-change="handleSelectionChange">
            <el-table-column type="selection" width="55" align="center" />
            <!-- <el-table-column label="ID" align="center" prop="id" /> -->
            <el-table-column label="标题" align="center" prop="title" />
            <!-- <el-table-column label="内容" align="center" prop="content" /> -->
            <!-- <el-table-column label="置顶" align="center" prop="top" /> -->
            <!-- <el-table-column label="阅读量" align="center" prop="views" /> -->
            <el-table-column label="状态" align="center" prop="status">
              <template slot-scope="scope">
                <dict-tag :options="dict.type.cms_blog_status" :value="scope.row.status" />
              </template>
            </el-table-column>
            <el-table-column label="创建者" align="center" prop="createBy" />
            <el-table-column label="创建时间" align="center" prop="createTime" width="100">
              <template slot-scope="scope">
                <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
              </template>
            </el-table-column>
            <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
              <template slot-scope="scope">
                <el-button size="mini" type="text" icon="el-icon-edit" @click="handleUpdate(scope.row)"
                  v-hasPermi="['cms:blog:edit']">修改</el-button>
                <el-button size="mini" type="text" icon="el-icon-delete" @click="handleDelete(scope.row)"
                  v-hasPermi="['cms:blog:remove']">删除</el-button>
                <el-button size="mini" type="text" icon="el-icon-folder-opened" @click="fileList(scope.row)"
                  v-hasPermi="['system:notice:query']">资源列表</el-button>
              </template>
            </el-table-column>
          </el-table>

          <pagination v-show="total>0" :total="total" :page.sync="queryParams.pageNum" :limit.sync="queryParams.pageSize"
            @pagination="getList" />
        </el-main>
      </el-container>


    <!-- 添加或修改文档管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" :before-close="cancel" width="1200px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="标题" prop="title">
          <el-input v-model="form.title" placeholder="请输入标题" />
        </el-form-item>
        <el-form-item label="内容">
          <!-- 图片用base64存储,url方式移动端会显示异常 -->
          <cmsEditor v-model="form.content" @getFileId="getFileId" type="base64" :min-height="192" />
        </el-form-item>
        <!-- <el-form-item>
          <el-checkbox v-model="top">置顶</el-checkbox>
        </el-form-item> -->
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="releaseForm">发 布</el-button>
        <el-button type="info" @click="saveForm">暂 存</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>

    <!-- 资源列表对话框 -->
    <el-dialog :title="title" :visible.sync="fileListOpen" width="1000px" append-to-body>
      <el-table class="file-list" :data="fileInfoList">
        <el-table-column type="selection" width="55" align="center" />
        <!-- <el-table-column label="文件主键id" align="center" prop="fileId" /> -->
        <el-table-column label="图片预览" align="center" prop="pic" >
          <template slot-scope="scope">
            <el-image
                style="width: 120px;height: 60px;"
                :src="scope.row.pic"
                lazy
                :preview-src-list="[scope.row.pic]">
              </el-image>
          </template>
        </el-table-column>
        <el-table-column label="文件名称" align="center" prop="fileOriginName" />
        <el-table-column label="文件类型" align="center" prop="fileSuffix" />
        <el-table-column label="文件大小" align="center" prop="fileSizeInfo" />
        <!-- <el-table-column label="存储文件名称" align="center" prop="fileObjectName" /> -->
        <!-- <el-table-column label="存储路径" align="center" prop="filePath" /> -->
        <!-- <el-table-column label="创建者" align="center" prop="createBy" /> -->
        <!-- <el-table-column label="创建时间" align="center" prop="createTime" width="100">
          <template slot-scope="scope">
            <span>{{ parseTime(scope.row.createTime, '{y}-{m}-{d} {h}:{i}:{s}') }}</span>
          </template>
        </el-table-column> -->
        <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
          <template slot-scope="scope">
            <el-button
              size="mini"
              type="text"
              icon="el-icon-download"
              @click="handleDownload(scope.row)"
            >下载</el-button>
          </template>
        </el-table-column>
      </el-table>
    </el-dialog>

  </div>
</template>

<script>
  import {
    listBlog,
    getBlog,
    delBlog,
    addBlog,
    updateBlog
  } from "@/api/cms/blog";
  import {
    delFileInfo
  } from "@/api/cms/fileInfo";
  import {
    addFileBlogInfo,
    delFileBlogInfo,
    getFileList
  } from "@/api/cms/fileBlogInfo";
  import {
    Loading
  } from 'element-ui';

  export default {
    name: "Blog",
    dicts: ['cms_blog_status'],
    data() {
      return {
        // 遮罩层
        loading: true,
        // 选中数组
        ids: [],
        // 非单个禁用
        single: true,
        // 非多个禁用
        multiple: true,
        // 显示搜索条件
        showSearch: true,
        // 总条数
        total: 0,
        // 文档管理表格数据
        blogList: [],
        // 资源列表表格数据
        fileInfoList: [],
        // 弹出层标题
        title: "",
        // 是否显示弹出层
        open: false,
        fileListOpen: false,
        // 查询参数
        queryParams: {
          pageNum: 1,
          pageSize: 10,
          title: null,
          type: 3,
          content: null,
          top: null,
          views: null,
          status: null,
          createBy: null
        },
        // 表单参数
        form: {},
        top: false,
        // 表单校验
        rules: {
          title: [{
            required: true,
            message: "标题不能为空",
            trigger: "blur"
          }],
          type: [{
            required: true,
            message: "类型不能为空",
            trigger: "change"
          }],
        },
        fileIds: [],
      };
    },
    created() {
      this.getList();
    },
    methods: {
      /** 查询文档管理列表 */
      getList() {
        this.loading = true;
        listBlog(this.queryParams).then(response => {
          this.blogList = response.rows;
          this.total = response.total;
          this.loading = false;
        });
      },
      // 取消按钮
      cancel() {
        this.$confirm('是否放弃此次编辑？', '系统提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          let fileids = this.fileIds;
          if (fileids.length > 0) {
            delFileInfo(fileids);
          };
          this.fileIds.length = 0;
          this.top = false;
          this.open = false;
          this.reset();
        }).catch(() => {});
      },
      // 表单重置
      reset() {
        this.form = {
          id: null,
          createBy: null,
          createTime: null,
          updateBy: null,
          updateTime: null,
          title: null,
          type: 3,
          content: null,
          top: "0",
          views: null,
          status: "0"
        };
        this.resetForm("form");
      },
      /** 搜索按钮操作 */
      handleQuery() {
        this.queryParams.pageNum = 1;
        this.getList();
      },
      /** 重置按钮操作 */
      resetQuery() {
        this.resetForm("queryForm");
        this.handleQuery();
      },
      // 多选框选中数据
      handleSelectionChange(selection) {
        this.ids = selection.map(item => item.id)
        this.single = selection.length !== 1
        this.multiple = !selection.length
      },
      /** 新增按钮操作 */
      handleAdd() {
        this.reset();
        this.open = true;
        this.title = "添加文档";
      },
      /** 修改按钮操作 */
      handleUpdate(row) {
        this.reset();
        const id = row.id || this.ids
        getBlog(id).then(response => {
          this.form = response.data;
          if (this.form.top == 1) {
            this.top = true;
          };
          this.open = true;
          this.title = "修改文档";
        });
      },
      /** 发布按钮 */
      releaseForm() {
        this.$refs["form"].validate(valid => {
          if (valid) {
            this.form.type = 3;
            this.form.status = 1;
            if (this.top) {
              this.form.top = 1;
            } else {
              this.form.top = 0;
            }
            if (this.form.id != null) {
              updateBlog(this.form).then(response => {
                if(this.fileIds.length>0){
                  let fileBlogInfo = {
                    blogId: this.form.id,
                    fileIds: this.fileIds
                  };
                  addFileBlogInfo(fileBlogInfo).then(response => {});
                }
                this.$modal.msgSuccess("修改成功");
                this.fileIds.length = 0;
                this.open = false;
                this.getList();
              });
            } else {
              addBlog(this.form).then(response => {
                if(this.fileIds.length>0){
                  let fileBlogInfo = {
                    blogId: response.data,
                    fileIds: this.fileIds
                  };
                  addFileBlogInfo(fileBlogInfo).then(response => {});
                }
                this.$modal.msgSuccess("新增成功");
                this.fileIds.length = 0;
                this.open = false;
                this.getList();
              });
            }
          }
        });
      },
      /** 暂存按钮 */
      saveForm() {
        this.$refs["form"].validate(valid => {
          if (valid) {
            this.form.type = 3;
            this.form.status = 0;
            if (this.top) {
              this.form.top = 1;
            } else {
              this.form.top = 0;
            }
            if (this.form.id != null) {
              updateBlog(this.form).then(response => {
                if(this.fileIds.length>0){
                  let fileBlogInfo = {
                    blogId: this.form.id,
                    fileIds: this.fileIds
                  };
                  addFileBlogInfo(fileBlogInfo).then(response => {});
                }
                this.$modal.msgSuccess("修改成功");
                this.fileIds.length = 0;
                this.open = false;
                this.getList();
              });
            } else {
              addBlog(this.form).then(response => {
                if(this.fileIds.length>0){
                  let fileBlogInfo = {
                    blogId: response.data,
                    fileIds: this.fileIds
                  };
                  addFileBlogInfo(fileBlogInfo).then(response => {});
                }
                this.$modal.msgSuccess("新增成功");
                this.fileIds.length = 0;
                this.open = false;
                this.getList();
              });
            }
          }
        });
      },
      /** 删除按钮操作 */
      handleDelete(row) {
        const ids = row.id || this.ids;
        this.$modal.confirm('是否确认删除文档管理编号为"' + ids + '"的数据项？').then(function() {
          delFileBlogInfo(ids).then().then(response => {});
          return delBlog(ids);
        }).then(() => {
          this.getList();
          this.$modal.msgSuccess("删除成功");
        }).catch(() => {});
      },
      /** 导出按钮操作 */
      handleExport() {
        this.download('cms/blog/export', {
          ...this.queryParams
        }, `blog_${new Date().getTime()}.xlsx`)
      },
      getFileId(data) {
        this.fileIds.push(data);
      },
      /** 资源列表按钮操作 */
      fileList(row) {
        let loadingInstance = Loading.service({
          target: ".file-list"
        });
        this.reset();
        const blogId = row.id || this.ids
        getFileList(blogId).then(response => {
          for(let i = 0; i<response.data.length; i++){
            let fileInfo = response.data[i];
            switch (fileInfo.fileSuffix){
              case 'png': case 'jpg': case 'jpeg': case 'bmp': case 'gif':
                response.data[i].pic = process.env.VUE_APP_BASE_API + fileInfo.filePath;
                break;
              default:
                response.data[i].pic = image.bg1;
                break;
            };
          };
          this.fileInfoList = response.data;
          this.fileListOpen = true;
          this.title = "资源列表";
          setTimeout(() => {
            loadingInstance.close();
          }, 100);
        });
      },
      // 文件下载处理
      handleDownload(row) {
        var name = row.fileOriginName;
        var url = row.filePath;
        var suffix = url.substring(url.lastIndexOf("."), url.length);
        const a = document.createElement('a')
        a.setAttribute('download', name)
        a.setAttribute('target', '_blank')
        a.setAttribute('href', process.env.VUE_APP_BASE_API + url)
        a.click()
      },
    }
  };
</script>
