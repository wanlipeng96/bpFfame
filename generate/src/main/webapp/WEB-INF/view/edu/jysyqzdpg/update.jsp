﻿<!DOCTYPE html>
<html>
<head >
    <title>教育适应期诊断评估</title>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/layuiadmin/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="/layuiadmin/style/admin.css" media="all"/>
    <link rel="stylesheet" href="/assets/css/layui_bp_css/common.css"/>
</head>
<body>
<form class="layui-form layui-form-pane" id="bpForm" style="padding: 25px 10px" lay-filter="bpForm">
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">戒毒机构编码</label>
            <div class="layui-input-block">
                <input type="text" name="jdjgbm" id="jdjgbm" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">所在大队</label>
            <div class="layui-input-block">
                <input type="text" name="szdd" id="szdd" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">戒毒人员编码</label>
            <div class="layui-input-block">
                <input type="text" name="jdrybm" id="jdrybm" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">口试得分</label>
            <div class="layui-input-block">
                <input type="text" name="ksdf" id="ksdf" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">电子试卷得分</label>
            <div class="layui-input-block">
                <input type="text" name="dzsjdf" id="dzsjdf" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">考核总得分</label>
            <div class="layui-input-block">
                <input type="text" name="khzdf" id="khzdf" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">诊断评估得分</label>
            <div class="layui-input-block">
                <input type="text" name="zdpgdf" id="zdpgdf" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">考核时间</label>
            <div class="layui-input-block">
                <input type="text" name="khsj" id="khsj" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">考核民警</label>
            <div class="layui-input-block">
                <input type="text" name="khmj" id="khmj" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
    <div class="layui-row layui-col-space10 layui-form-item">
        <div class="layui-col-lg6 layui-col-xs12 layui-col-sm6">
            <label class="layui-form-label">评估结论</label>
            <div class="layui-input-block">
                <input type="text" name="pgjl" id="pgjl" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
   <div class="layui-form-item layui-hide">
        <input type="button" lay-submit lay-filter="layuiadmin-app-form-submit" id="layuiadmin-app-form-submit"
               value="确认添加">
    </div>
   <input type="hidden" name="uuid">
</form>
</body>

<!-- jquery -->
<script src="/assets/libs/jquery/jquery-3.3.1.min.js"></script>
<!-- pace -->
<script src="/assets/libs/pace/pace.min.js"></script>
<!-- layui -->
<script src="/layuiadmin/layui/layui.js"></script>
<!-- layer -->
<script src="/assets/libs/layer/layer.js"></script>
<!-- 自定义 -->
<script src="/assets/js/common.js"></script>
<!--jq.js-->
<script src="/js/jq.js"></script>
<script>
    
    //请求数据
    var formData;
    $.ajax({
        type: "GET",
        url: basePath+"/edu/jysyqzdpg/"+GetRequest().uuid,
        async:false,
        beforeSend: function () {
            return loading();
        },
        success: function (data) {
            closeloading();
            console.log(data);
            formData = data.data;

        },
        error: function () {
            closeloading();
        }
    });

    layui.config({
        base: '/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'jquery'], function () {
        var form = layui.form;
        var element = layui.element;
        // 引入jquery
        var $ = jQuery = layui.$;
        var form = layui.form ,
            layer = layui.layer;

        //自定义表单验证校验
        form.verify({

        });

    	form.val('bpForm', {
            "jdjgbm": formData.jdjgbm,
            "szdd": formData.szdd,
            "jdrybm": formData.jdrybm,
            "ksdf": formData.ksdf,
            "dzsjdf": formData.dzsjdf,
            "khzdf": formData.khzdf,
            "zdpgdf": formData.zdpgdf,
            "khsj": formData.khsj,
            "khmj": formData.khmj,
            "pgjl": formData.pgjl,
        	"uuid":formData.uuid
        });

        //监听提交
        form.on('submit(layuiadmin-app-form-submit)', function (data) {
            //提交 Ajax 成功后，关闭当前弹层并重载表格
            $.ajax({
                contentType : 'application/json',
                type: "PUT",
                url: basePath+"/edu/jysyqzdpg",
                data: JSON.stringify($('#bpForm').serializeObject()),// 要提交的表单
                beforeSend: function () {
                    return loading();
                },
                success: function (rb) {
                    closeloading();
                    if (rb.code == 0) {
                        top.layer.msg(rb.msg);
                        var index = top.layer.getFrameIndex(window.name); //获取窗口索引
                        window.top.reloadDataTable();
                        parent.layer.close(index); //再执行关闭
                    } else {
                        top.layer.msg(rb.msg);
                    }
                },
                error: function () {
                    closeloading();
                }
            });
        });
    });
    //去除表单验证
    //$('input').attr('lay-verify','');
</script>
</body>
</html>
