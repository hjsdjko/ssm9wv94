(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-zhuhuxinxi-add-or-update"],{"062d":function(r,e,t){var i=t("24fb");e=i(!1),e.push([r.i,'@charset "UTF-8";\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */.container[data-v-2921e6d1]{padding:%?20?%}.content[data-v-2921e6d1]:after{position:fixed;top:0;right:0;left:0;bottom:0;content:"";background-attachment:fixed;background-size:cover;background-position:50%}uni-textarea[data-v-2921e6d1]{border:%?1?% solid #eee;border-radius:%?20?%;padding:%?20?%}.title[data-v-2921e6d1]{width:%?180?%}.avator[data-v-2921e6d1]{width:%?150?%;height:%?60?%}.right-input[data-v-2921e6d1]{-webkit-box-flex:1;-webkit-flex:1;flex:1;text-align:left;padding:0 %?24?%}.cu-form-group.active[data-v-2921e6d1]{-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between}.btn[data-v-2921e6d1]{display:-webkit-box;display:-webkit-flex;display:flex;-webkit-box-align:center;-webkit-align-items:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-flex-wrap:wrap;flex-wrap:wrap;padding:%?20?% 0}.cu-form-group[data-v-2921e6d1]{padding:0 %?24?%;background-color:initial;min-height:inherit}.cu-form-group + .cu-form-group[data-v-2921e6d1]{border:0}.cu-form-group uni-input[data-v-2921e6d1]{padding:0 %?30?%}.uni-input[data-v-2921e6d1]{padding:0 %?30?%}.cu-form-group uni-textarea[data-v-2921e6d1]{padding:%?30?%;margin:0}.cu-form-group uni-picker[data-v-2921e6d1]::after{line-height:%?88?%}.select .uni-input[data-v-2921e6d1]{line-height:%?88?%}.input .right-input[data-v-2921e6d1]{line-height:%?60?%}',""]),r.exports=e},"0917":function(r,e,t){"use strict";var i=t("4ea4");Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0,t("ac6a"),t("28a5"),t("96cf");var n=i(t("3b8d")),o=i(t("e2b1")),a={data:function(){return{ruleForm:{fangwumingcheng:"",louceng:"",danyuanhao:"",shifouruzhu:"",ruzhushijian:"",huzhuxingming:"",xingbie:"",nianling:"",zhiye:"",gongzuodanwei:"",jiatingrenshu:"",beizhu:""},fangwumingchengOptions:[],fangwumingchengIndex:0,shifouruzhuOptions:[],shifouruzhuIndex:0,xingbieOptions:[],xingbieIndex:0,user:{},ro:{fangwumingcheng:!1,louceng:!1,danyuanhao:!1,shifouruzhu:!1,ruzhushijian:!1,huzhuxingming:!1,xingbie:!1,nianling:!1,zhiye:!1,gongzuodanwei:!1,jiatingrenshu:!1,beizhu:!1}}},components:{wPicker:o.default},computed:{},onLoad:function(){var r=(0,n.default)(regeneratorRuntime.mark((function r(e){var t,i,n,o;return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:return t=uni.getStorageSync("nowTable"),r.next=3,this.$api.session(t);case 3:return i=r.sent,this.user=i.data,r.next=7,this.$api.option("fangwuxinxi","fangwumingcheng",{});case 7:if(i=r.sent,this.fangwumingchengOptions=i.data,this.shifouruzhuOptions="已入住,未入住".split(","),this.xingbieOptions="男,女".split(","),this.ruleForm.userid=uni.getStorageSync("userid"),e.refid&&(this.ruleForm.refid=e.refid,this.ruleForm.nickname=uni.getStorageSync("nickname")),!e.id){r.next=19;break}return this.ruleForm.id=e.id,r.next=17,this.$api.info("zhuhuxinxi",this.ruleForm.id);case 17:i=r.sent,this.ruleForm=i.data;case 19:if(!e.cross){r.next=74;break}n=uni.getStorageSync("crossObj"),r.t0=regeneratorRuntime.keys(n);case 22:if((r.t1=r.t0()).done){r.next=74;break}if(o=r.t1.value,"fangwumingcheng"!=o){r.next=28;break}return this.ruleForm.fangwumingcheng=n[o],this.ro.fangwumingcheng=!0,r.abrupt("continue",22);case 28:if("louceng"!=o){r.next=32;break}return this.ruleForm.louceng=n[o],this.ro.louceng=!0,r.abrupt("continue",22);case 32:if("danyuanhao"!=o){r.next=36;break}return this.ruleForm.danyuanhao=n[o],this.ro.danyuanhao=!0,r.abrupt("continue",22);case 36:if("shifouruzhu"!=o){r.next=40;break}return this.ruleForm.shifouruzhu=n[o],this.ro.shifouruzhu=!0,r.abrupt("continue",22);case 40:if("ruzhushijian"!=o){r.next=44;break}return this.ruleForm.ruzhushijian=n[o],this.ro.ruzhushijian=!0,r.abrupt("continue",22);case 44:if("huzhuxingming"!=o){r.next=48;break}return this.ruleForm.huzhuxingming=n[o],this.ro.huzhuxingming=!0,r.abrupt("continue",22);case 48:if("xingbie"!=o){r.next=52;break}return this.ruleForm.xingbie=n[o],this.ro.xingbie=!0,r.abrupt("continue",22);case 52:if("nianling"!=o){r.next=56;break}return this.ruleForm.nianling=n[o],this.ro.nianling=!0,r.abrupt("continue",22);case 56:if("zhiye"!=o){r.next=60;break}return this.ruleForm.zhiye=n[o],this.ro.zhiye=!0,r.abrupt("continue",22);case 60:if("gongzuodanwei"!=o){r.next=64;break}return this.ruleForm.gongzuodanwei=n[o],this.ro.gongzuodanwei=!0,r.abrupt("continue",22);case 64:if("jiatingrenshu"!=o){r.next=68;break}return this.ruleForm.jiatingrenshu=n[o],this.ro.jiatingrenshu=!0,r.abrupt("continue",22);case 68:if("beizhu"!=o){r.next=72;break}return this.ruleForm.beizhu=n[o],this.ro.beizhu=!0,r.abrupt("continue",22);case 72:r.next=22;break;case 74:this.styleChange();case 75:case"end":return r.stop()}}),r,this)})));function e(e){return r.apply(this,arguments)}return e}(),methods:{styleChange:function(){this.$nextTick((function(){}))},fangwumingchengChange:function(){var r=(0,n.default)(regeneratorRuntime.mark((function r(e){var t;return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:return this.fangwumingchengIndex=e.target.value,this.ruleForm.fangwumingcheng=this.fangwumingchengOptions[this.fangwumingchengIndex],r.next=4,this.$api.follow("fangwuxinxi","fangwumingcheng",{columnValue:this.ruleForm.fangwumingcheng});case 4:t=r.sent,t.data.louceng&&(this.ruleForm.louceng=t.data.louceng),t.data.danyuanhao&&(this.ruleForm.danyuanhao=t.data.danyuanhao);case 7:case"end":return r.stop()}}),r,this)})));function e(e){return r.apply(this,arguments)}return e}(),ruzhushijianChange:function(r){this.ruleForm.ruzhushijian=r.target.value,this.$forceUpdate()},shifouruzhuChange:function(r){this.shifouruzhuIndex=r.target.value,this.ruleForm.shifouruzhu=this.shifouruzhuOptions[this.shifouruzhuIndex]},xingbieChange:function(r){this.xingbieIndex=r.target.value,this.ruleForm.xingbie=this.xingbieOptions[this.xingbieIndex]},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var r=(0,n.default)(regeneratorRuntime.mark((function r(){return regeneratorRuntime.wrap((function(r){while(1)switch(r.prev=r.next){case 0:if(this.ruleForm.fangwumingcheng){r.next=3;break}return this.$utils.msg("房屋名称不能为空"),r.abrupt("return");case 3:if(this.ruleForm.huzhuxingming){r.next=6;break}return this.$utils.msg("户主姓名不能为空"),r.abrupt("return");case 6:if(this.ruleForm.jiatingrenshu){r.next=9;break}return this.$utils.msg("家庭人数不能为空"),r.abrupt("return");case 9:if(!this.ruleForm.id){r.next=14;break}return r.next=12,this.$api.update("zhuhuxinxi",this.ruleForm);case 12:r.next=16;break;case 14:return r.next=16,this.$api.add("zhuhuxinxi",this.ruleForm);case 16:this.$utils.msgBack("提交成功");case 17:case"end":return r.stop()}}),r,this)})));function e(){return r.apply(this,arguments)}return e}(),optionsChange:function(r){this.index=r.target.value},bindDateChange:function(r){this.date=r.target.value},getDate:function(r){var e=new Date,t=e.getFullYear(),i=e.getMonth()+1,n=e.getDate();return"start"===r?t-=60:"end"===r&&(t+=2),i=i>9?i:"0"+i,n=n>9?n:"0"+n,"".concat(t,"-").concat(i,"-").concat(n)},toggleTab:function(r){this.$refs[r].show()}}};e.default=a},"0972":function(r,e,t){"use strict";var i=t("40b0"),n=t.n(i);n.a},"40b0":function(r,e,t){var i=t("062d");"string"===typeof i&&(i=[[r.i,i,""]]),i.locals&&(r.exports=i.locals);var n=t("4f06").default;n("30267428",i,!0,{sourceMap:!1,shadowMode:!1})},"5f29":function(r,e,t){"use strict";t.r(e);var i=t("d6b6"),n=t("b8e5");for(var o in n)"default"!==o&&function(r){t.d(e,r,(function(){return n[r]}))}(o);t("0972");var a,u=t("f0c5"),s=Object(u["a"])(n["default"],i["b"],i["c"],!1,null,"2921e6d1",null,!1,i["a"],a);e["default"]=s.exports},b8e5:function(r,e,t){"use strict";t.r(e);var i=t("0917"),n=t.n(i);for(var o in i)"default"!==o&&function(r){t.d(e,r,(function(){return i[r]}))}(o);e["default"]=n.a},d6b6:function(r,e,t){"use strict";var i,n=function(){var r=this,e=r.$createElement,t=r._self._c||e;return t("v-uni-view",{staticClass:"content"},[t("v-uni-form",{staticClass:"app-update-pv"},[t("v-uni-view",{staticClass:"cu-form-group select",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("房屋名称")]),t("v-uni-picker",{attrs:{value:r.fangwumingchengIndex,range:r.fangwumingchengOptions},on:{change:function(e){arguments[0]=e=r.$handleEvent(e),r.fangwumingchengChange.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"uni-input",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(0,0,0,.6)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"}},[r._v(r._s(r.fangwumingchengOptions[r.fangwumingchengIndex]))])],1)],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"88rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("楼层")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(205, 205, 205, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"26rpx",borderStyle:"solid",height:"60rpx"},attrs:{disabled:r.ro.louceng,placeholder:"楼层"},model:{value:r.ruleForm.louceng,callback:function(e){r.$set(r.ruleForm,"louceng",e)},expression:"ruleForm.louceng"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"88rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("单元号")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(205, 205, 205, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"26rpx",borderStyle:"solid",height:"60rpx"},attrs:{disabled:r.ro.danyuanhao,placeholder:"单元号"},model:{value:r.ruleForm.danyuanhao,callback:function(e){r.$set(r.ruleForm,"danyuanhao",e)},expression:"ruleForm.danyuanhao"}})],1),t("v-uni-view",{staticClass:"cu-form-group select",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("是否入住")]),t("v-uni-picker",{attrs:{value:r.shifouruzhuIndex,range:r.shifouruzhuOptions},on:{change:function(e){arguments[0]=e=r.$handleEvent(e),r.shifouruzhuChange.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"uni-input",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(0,0,0,.6)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"}},[r._v(r._s(r.ruleForm.shifouruzhu?r.ruleForm.shifouruzhu:"请选择是否入住"))])],1)],1),t("v-uni-view",{staticClass:"cu-form-group select",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("入住时间")]),t("v-uni-picker",{attrs:{mode:"date",value:r.ruleForm.ruzhushijian},on:{change:function(e){arguments[0]=e=r.$handleEvent(e),r.ruzhushijianChange.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"uni-input",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(0,0,0,.6)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"}},[r._v(r._s(r.ruleForm.ruzhushijian?r.ruleForm.ruzhushijian:"请选择入住时间"))])],1)],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"88rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("户主姓名")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(205, 205, 205, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"26rpx",borderStyle:"solid",height:"60rpx"},attrs:{disabled:r.ro.huzhuxingming,placeholder:"户主姓名"},model:{value:r.ruleForm.huzhuxingming,callback:function(e){r.$set(r.ruleForm,"huzhuxingming",e)},expression:"ruleForm.huzhuxingming"}})],1),t("v-uni-view",{staticClass:"cu-form-group select",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("性别")]),t("v-uni-picker",{attrs:{value:r.xingbieIndex,range:r.xingbieOptions},on:{change:function(e){arguments[0]=e=r.$handleEvent(e),r.xingbieChange.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"uni-input",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(0,0,0,.6)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"}},[r._v(r._s(r.ruleForm.xingbie?r.ruleForm.xingbie:"请选择性别"))])],1)],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"88rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("年龄")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(205, 205, 205, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"26rpx",borderStyle:"solid",height:"60rpx"},attrs:{disabled:r.ro.nianling,placeholder:"年龄"},model:{value:r.ruleForm.nianling,callback:function(e){r.$set(r.ruleForm,"nianling",e)},expression:"ruleForm.nianling"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"88rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("职业")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(205, 205, 205, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"26rpx",borderStyle:"solid",height:"60rpx"},attrs:{disabled:r.ro.zhiye,placeholder:"职业"},model:{value:r.ruleForm.zhiye,callback:function(e){r.$set(r.ruleForm,"zhiye",e)},expression:"ruleForm.zhiye"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"88rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("工作单位")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(205, 205, 205, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"26rpx",borderStyle:"solid",height:"60rpx"},attrs:{disabled:r.ro.gongzuodanwei,placeholder:"工作单位"},model:{value:r.ruleForm.gongzuodanwei,callback:function(e){r.$set(r.ruleForm,"gongzuodanwei",e)},expression:"ruleForm.gongzuodanwei"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"88rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("家庭人数")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(205, 205, 205, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"26rpx",borderStyle:"solid",height:"60rpx"},attrs:{disabled:r.ro.jiatingrenshu,placeholder:"家庭人数"},model:{value:r.ruleForm.jiatingrenshu,callback:function(e){r.$set(r.ruleForm,"jiatingrenshu",e)},expression:"ruleForm.jiatingrenshu"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 2rpx rgba(0,0,0,.8)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0",borderWidth:"0",borderStyle:"solid",height:"auto"}},[t("v-uni-view",{staticClass:"title",style:{width:"22%",fontSize:"24rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left"}},[r._v("备注")]),t("v-uni-textarea",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(205, 205, 205, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"200rpx"},attrs:{placeholder:"备注"},model:{value:r.ruleForm.beizhu,callback:function(e){r.$set(r.ruleForm,"beizhu",e)},expression:"ruleForm.beizhu"}})],1),t("v-uni-view",{staticClass:"btn"},[t("v-uni-button",{staticClass:"bg-red",style:{boxShadow:"0 0 0px rgba(0,0,0,0) inset",backgroundColor:"rgba(242, 199, 68, 1)",borderColor:"rgba(57, 78, 99, 1)",borderRadius:"40rpx",color:"rgba(0, 0, 0, 1)",borderWidth:"0",width:"40%",fontSize:"28rpx",borderStyle:"solid",height:"76rpx"},on:{click:function(e){arguments[0]=e=r.$handleEvent(e),r.onSubmitTap.apply(void 0,arguments)}}},[r._v("提交")])],1)],1)],1)},o=[];t.d(e,"b",(function(){return n})),t.d(e,"c",(function(){return o})),t.d(e,"a",(function(){return i}))}}]);