import{a as E,b as Q,u as Y,c as J,N as X,d as Z}from"./search-form.vue_vue_type_script_setup_true_lang-Hz521IbE.js";import{bm as T,o as L,b as I,e as ee,d as x,Q as B,R as z,c as C,w as r,f as o,h as a,$ as l,g as m,t as p,a9 as P,bY as V,P as q,a8 as te,C as ae,z as le,ad as oe,i as ne,ae as w,B as v,bh as re,O as se,ag as ie}from"./index-BztLELzb.js";import{e as de}from"./group-XSuFGJhJ.js";import{_ as ue}from"./select-group.vue_vue_type_script_setup_true_lang-DXA2Evh-.js";import{_ as ce}from"./select-scene.vue_vue_type_script_setup_true_lang-DZYcuyFp.js";import{_ as me,a as pe}from"./DescriptionsItem-gUlfoQM0.js";import{_ as ge}from"./Grid-DDhjb_3_.js";import"./retry-scene-y84vzAuY.js";function fe(s){return T({url:"/retry-dead-letter/list",method:"get",params:s})}function _e(s,g){return T({url:`/retry-dead-letter/${s}?groupName=${g}`,method:"get"})}function $(s){return T({url:"/retry-dead-letter/batch/rollback",method:"post",data:s})}function S(s){return T({url:"/retry-dead-letter/batch",method:"delete",data:s})}const ye={class:"inline-block",viewBox:"0 0 24 24",width:"1em",height:"1em"},be=ee("path",{fill:"currentColor",d:"M20.93 14A7 7 0 0 1 14 20H5.5v-2H14a5 5 0 1 0 0-10H6.914l2.5 2.5L8 11.914L3.086 7L8 2.086L9.414 3.5L6.914 6H14a7 7 0 0 1 7 7v1z"},null,-1),he=[be];function ke(s,g){return L(),I("svg",ye,[...he])}const Ne={name:"tdesign-rollback",render:ke},De=x({name:"RetryDeadLetterSearch",__name:"dead-letter-search",props:{model:{required:!0},modelModifiers:{}},emits:B(["reset","search"],["update:model"]),setup(s,{emit:g}){const i=g,d=z(s,"model");function u(){i("reset")}function N(){i("search")}return(b,f)=>{const e=E,y=Q;return L(),C(y,{model:d.value,onSearch:N,onReset:u},{default:r(()=>[o(e,{span:"24 s:12 m:6",label:a(l)("page.retryLog.groupName"),path:"groupName",class:"pr-24px"},{default:r(()=>[o(ue,{value:d.value.groupName,"onUpdate:value":f[0]||(f[0]=D=>d.value.groupName=D)},null,8,["value"])]),_:1},8,["label"]),o(e,{span:"24 s:12 m:6",label:a(l)("page.retryLog.sceneName"),path:"sceneName",class:"pr-24px"},{default:r(()=>[o(ce,{value:d.value.sceneName,"onUpdate:value":f[1]||(f[1]=D=>d.value.sceneName=D),"group-name":d.value.groupName},null,8,["value","group-name"])]),_:1},8,["label"])]),_:1},8,["model"])}}}),we=x({name:"RetryDeadLetterDetailDrawer",__name:"retry-letter-detail-drawer",props:B({rowData:{}},{visible:{type:Boolean,default:!1},visibleModifiers:{}}),emits:["update:visible"],setup(s){const g=z(s,"visible");return(i,d)=>{const u=me,N=q,b=pe,f=te;return L(),C(f,{modelValue:g.value,"onUpdate:modelValue":d[0]||(d[0]=e=>g.value=e),title:a(l)("page.retryDeadLetter.detail")},{default:r(()=>[o(b,{"label-placement":"top",bordered:"",column:3},{default:r(()=>[o(u,{label:a(l)("page.retryTask.uniqueId"),span:3},{default:r(()=>{var e;return[m(p((e=i.rowData)==null?void 0:e.uniqueId),1)]}),_:1},8,["label"]),o(u,{label:a(l)("page.retryTask.groupName"),span:3},{default:r(()=>{var e;return[m(p((e=i.rowData)==null?void 0:e.groupName),1)]}),_:1},8,["label"]),o(u,{label:a(l)("page.retryTask.sceneName"),span:3},{default:r(()=>{var e;return[m(p((e=i.rowData)==null?void 0:e.sceneName),1)]}),_:1},8,["label"]),o(u,{label:a(l)("page.retryTask.taskType"),span:1},{default:r(()=>{var e;return[o(N,{type:a(P)((e=i.rowData)==null?void 0:e.taskType)},{default:r(()=>{var y;return[m(p(a(l)(a(V)[(y=i.rowData)==null?void 0:y.taskType])),1)]}),_:1},8,["type"])]}),_:1},8,["label"]),o(u,{label:a(l)("page.retryTask.bizNo"),span:2},{default:r(()=>{var e;return[m(p((e=i.rowData)==null?void 0:e.bizNo),1)]}),_:1},8,["label"]),o(u,{label:a(l)("page.retryTask.idempotentId"),span:3},{default:r(()=>{var e;return[m(p((e=i.rowData)==null?void 0:e.idempotentId),1)]}),_:1},8,["label"]),o(u,{label:a(l)("page.retryTask.executorName"),span:3},{default:r(()=>{var e;return[m(p((e=i.rowData)==null?void 0:e.executorName),1)]}),_:1},8,["label"]),o(u,{label:a(l)("page.retryTask.argsStr"),span:3},{default:r(()=>{var e;return[m(p((e=i.rowData)==null?void 0:e.argsStr),1)]}),_:1},8,["label"]),o(u,{label:a(l)("common.createDt"),span:3},{default:r(()=>{var e;return[m(p((e=i.rowData)==null?void 0:e.createDt),1)]}),_:1},8,["label"])]),_:1})]),_:1},8,["modelValue","title"])}}}),ve={class:"min-h-500px flex-col-stretch gap-16px overflow-hidden lt-sm:overflow-auto"};function R(s){return typeof s=="function"||Object.prototype.toString.call(s)==="[object Object]"&&!ie(s)}const ze=x({name:"retry_dead-letter",__name:"index",setup(s){const g=ae(),i=le(),{bool:d,setTrue:u}=oe(!1),{columns:N,columnChecks:b,data:f,getData:e,loading:y,mobilePagination:D,searchParams:h,resetSearchParams:A}=Y({apiFn:fe,apiParams:{page:1,size:10,groupName:null,sceneName:null},columns:()=>[{type:"selection",align:"center",width:48},{key:"index",title:l("common.index"),align:"center",width:64},{key:"uniqueId",title:l("page.retryDeadLetter.uniqueId"),align:"left",minWidth:120,render:n=>{async function t(){await G(n),u()}return o(v,{text:!0,tag:"a",type:"primary",onClick:t,class:"ws-normal"},{default:()=>[n.uniqueId]})}},{key:"groupName",title:l("page.retryDeadLetter.groupName"),align:"left",minWidth:120},{key:"sceneName",title:l("page.retryDeadLetter.sceneName"),align:"left",minWidth:120},{key:"idempotentId",title:l("page.retryDeadLetter.idempotentId"),align:"left",minWidth:120},{key:"bizNo",title:l("page.retryDeadLetter.bizNo"),align:"left",minWidth:120},{key:"taskType",title:l("page.retryDeadLetter.taskType"),align:"left",minWidth:120,render:n=>{if(n.taskType===null)return null;const t=l(V[n.taskType]);return o(q,{type:P(n.taskType)},R(t)?t:{default:()=>[t]})}},{key:"createDt",title:l("page.retryDeadLetter.createDt"),align:"left",minWidth:120},{key:"operate",title:l("common.operate"),align:"center",width:130,render:n=>{let t;return o("div",{class:"flex-center gap-8px"},[o(v,{type:"primary",text:!0,ghost:!0,size:"small",onClick:()=>H(n)},R(t=l("common.rollback"))?t:{default:()=>[t]}),o(re,{vertical:!0},null),o(X,{onPositiveClick:()=>O(n)},{default:()=>l("common.confirmDelete"),trigger:()=>{let c;return o(v,{type:"error",text:!0,ghost:!0,size:"small"},R(c=l("common.delete"))?c:{default:()=>[c]})}})])}}]}),{handleAdd:M,checkedRowKeys:k}=J(f,e);async function U(){var t;const{error:n}=await S({ids:k.value,groupName:h.groupName});n||((t=window.$message)==null||t.success(l("common.deleteSuccess")),e())}async function W(){var t;const{error:n}=await $({ids:k.value,groupName:h.groupName});n||((t=window.$message)==null||t.success(l("common.rollbackSuccess")),e())}async function O(n){var c;const{error:t}=await S({ids:[n.id],groupName:n.groupName});t||((c=window.$message)==null||c.success(l("common.deleteSuccess")),e())}async function G(n){const t=await _e(n.id,n.groupName);i.value=t.data||null}async function H(n){var c;const{error:t}=await $({ids:[n.id],groupName:n.groupName});t||((c=window.$message)==null||c.success(l("common.rollbackSuccess")),e())}return ne(async()=>{const{error:n,data:t}=await de();!n&&t.length>0&&(h.groupName=t[0],e())}),(n,t)=>{const c=Ne,j=Z,F=ge,K=se;return L(),I("div",ve,[o(De,{model:a(h),"onUpdate:model":t[0]||(t[0]=_=>w(h)?h.value=_:null),onReset:a(A),onSearch:a(e)},null,8,["model","onReset","onSearch"]),o(K,{title:a(l)("page.retryDeadLetter.title"),bordered:!1,size:"small",class:"sm:flex-1-hidden card-wrapper","header-class":"view-card-header"},{"header-extra":r(()=>[o(j,{columns:a(b),"onUpdate:columns":t[1]||(t[1]=_=>w(b)?b.value=_:null),"disabled-delete":a(k).length===0,loading:a(y),"show-add":!1,onAdd:a(M),onDelete:U,onRefresh:a(e)},{addAfter:r(()=>[o(a(v),{size:"small",ghost:"",type:"primary",onClick:W},{icon:r(()=>[o(c,{class:"text-icon"})]),default:r(()=>[m(" "+p(a(l)("common.batchRollback")),1)]),_:1})]),_:1},8,["columns","disabled-delete","loading","onAdd","onRefresh"])]),default:r(()=>[o(F,{"checked-row-keys":a(k),"onUpdate:checkedRowKeys":t[2]||(t[2]=_=>w(k)?k.value=_:null),columns:a(N),data:a(f),"flex-height":!a(g).isMobile,"scroll-x":962,loading:a(y),remote:"","row-key":_=>_.id,pagination:a(D),class:"sm:h-full"},null,8,["checked-row-keys","columns","data","flex-height","loading","row-key","pagination"]),o(we,{visible:a(d),"onUpdate:visible":t[3]||(t[3]=_=>w(d)?d.value=_:null),"row-data":i.value},null,8,["visible","row-data"])]),_:1},8,["title"])])}}});export{ze as default};