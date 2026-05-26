<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>DPS Jabalpur — Digital Infrastructure Register</title>

<!-- PWA Meta Tags -->
<meta name="application-name" content="DPS IT Register">
<meta name="description" content="Delhi Public School Jabalpur — IT Infrastructure Management">
<meta name="theme-color" content="#0d2e5c">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="DPS IT Register">
<meta name="msapplication-TileColor" content="#0d2e5c">
<meta name="msapplication-tap-highlight" content="no">

<!-- PWA Manifest -->
<link rel="manifest" href="manifest.json">

<!-- Apple Touch Icons -->
<link rel="apple-touch-icon" href="icon-152.svg">
<link rel="apple-touch-icon" sizes="192x192" href="icon-192.svg">
<link rel="icon" type="image/svg+xml" href="icon-96.svg">
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{font-family:'Segoe UI',Arial,sans-serif;background:#f0f4fa;min-height:100vh}
:root{--navy:#0d2e5c;--navy2:#1a4a8a;--accent:#e8a020;--light:#eaf1fb;--white:#fff;--gray:#f4f7fb;--border:#dde3ee;--text:#2c2c2a;--muted:#6b7280}
.app-header{background:var(--navy);color:#fff;padding:0 20px;display:flex;align-items:center;gap:12px;height:56px;box-shadow:0 2px 8px rgba(0,0,0,.2);position:sticky;top:0;z-index:50}
.logo{width:36px;height:36px;background:var(--accent);border-radius:7px;display:flex;align-items:center;justify-content:center;font-weight:700;font-size:13px;color:#fff;flex-shrink:0}
.app-header h1{font-size:15px;font-weight:600}
.app-header small{font-size:11px;opacity:.6;display:block}
.tabs{display:flex;background:#fff;border-bottom:2px solid var(--border);padding:0 12px;overflow-x:auto;gap:2px;position:sticky;top:56px;z-index:40;box-shadow:0 1px 4px rgba(0,0,0,.06)}
.tab{padding:10px 14px;font-size:12px;font-weight:500;cursor:pointer;border:none;background:none;color:var(--muted);border-bottom:3px solid transparent;white-space:nowrap;transition:.15s}
.tab:hover{color:var(--navy2);background:#f4f8ff}
.tab.active{color:var(--navy2);border-bottom-color:var(--navy2)}
.content{max-width:1200px;margin:0 auto;padding:16px}
.section-card{background:#fff;border-radius:10px;padding:16px;margin-bottom:14px;border:1px solid var(--border);box-shadow:0 1px 3px rgba(0,0,0,.04)}
.toolbar{display:flex;gap:8px;margin-bottom:14px;flex-wrap:wrap;align-items:center}
.toolbar select{font-size:12px;padding:6px 10px;border:1px solid var(--border);border-radius:7px;background:#fff;color:var(--text);height:32px;outline:none}
.btn{padding:6px 12px;font-size:12px;border:1px solid var(--border);border-radius:7px;cursor:pointer;background:#fff;color:var(--text);display:inline-flex;align-items:center;gap:4px;height:32px;white-space:nowrap;transition:.15s;font-family:inherit;font-weight:500}
.btn:hover{background:#f4f8ff;border-color:var(--navy2);color:var(--navy2)}
.btn-primary{background:var(--navy);color:#fff;border-color:var(--navy)}
.btn-primary:hover{background:var(--navy2);color:#fff;border-color:var(--navy2)}
.btn-edit{background:#eff6ff;border-color:#3b82f6;color:#1d4ed8}
.btn-del{background:#fff;border-color:#fca5a5;color:#b91c1c}
.btn-del:hover{background:#fef2f2}
.btn-print{background:#047857;color:#fff;border-color:#047857}
.btn-print:hover{background:#065f46}
.btn-sm{padding:2px 8px;font-size:11px;height:24px;border-radius:5px}
.tbl-wrap{overflow-x:auto;border:1px solid var(--border);border-radius:8px}
table{width:100%;border-collapse:collapse;font-size:12px;min-width:580px}
thead th{background:var(--navy);color:#fff;padding:9px 10px;font-weight:500;text-align:left;font-size:11px;white-space:nowrap}
tbody tr:nth-child(even){background:#f8faff}
tbody tr:hover{background:#edf2ff}
td{padding:8px 10px;border-bottom:1px solid var(--border);color:var(--text);vertical-align:middle}
tr:last-child td{border-bottom:none}
.badge{display:inline-block;padding:2px 8px;border-radius:20px;font-size:10px;font-weight:600}
.b-green{background:#dcfce7;color:#166534}
.b-gray{background:#f3f4f6;color:#4b5563}
.b-amber{background:#fef3c7;color:#92400e}
.b-blue{background:#dbeafe;color:#1e40af}
.b-red{background:#fee2e2;color:#991b1b}
.stat-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(130px,1fr));gap:10px;margin-bottom:16px}
.stat-card{background:#fff;border:1px solid var(--border);border-radius:9px;padding:14px;text-align:center}
.stat-num{font-size:24px;font-weight:700;color:var(--navy2)}
.stat-lbl{font-size:11px;color:var(--muted);margin-top:2px}
.floor-hdr{background:var(--navy2);color:#fff;padding:7px 12px;font-size:11px;font-weight:600;border-radius:7px;margin:12px 0 5px}
.modal-bg{display:none;position:fixed;inset:0;background:rgba(0,0,0,.45);z-index:200;align-items:center;justify-content:center;padding:14px}
.modal-bg.open{display:flex}
.modal{background:#fff;border-radius:12px;padding:20px;width:100%;max-width:560px;max-height:92vh;overflow-y:auto;box-shadow:0 8px 32px rgba(0,0,0,.18)}
.modal h3{font-size:15px;font-weight:600;margin-bottom:16px;color:var(--navy);border-bottom:2px solid var(--light);padding-bottom:8px}
.form-grid{display:grid;grid-template-columns:1fr 1fr;gap:10px}
.ff{display:flex;flex-direction:column;gap:3px}
.ff.full{grid-column:1/-1}
.ff label{font-size:11px;color:var(--muted);font-weight:500}
.ff input,.ff select{font-size:12px;padding:6px 9px;border:1px solid var(--border);border-radius:7px;background:#fff;color:var(--text);outline:none;font-family:inherit}
.ff input:focus,.ff select:focus{border-color:var(--navy2)}
.modal-footer{display:flex;gap:8px;justify-content:flex-end;margin-top:16px;padding-top:12px;border-top:1px solid var(--border)}
.empty{text-align:center;padding:32px;color:var(--muted);font-size:13px}
.info-box{background:var(--light);border-radius:7px;padding:9px 12px;font-size:11px;color:var(--navy2);margin-top:10px;border-left:3px solid var(--navy2)}
.act-btns{display:flex;gap:4px}
@media print{
  body{background:#fff}
  .app-header,.tabs,.toolbar,.act-btns,.no-print{display:none!important}
  .content{padding:0;max-width:100%}
  .section-card{box-shadow:none;border:1px solid #ccc;border-radius:0;page-break-inside:avoid}
  .tbl-wrap{border:none}
  table{font-size:10px}
  thead th{background:#0d2e5c!important;color:#fff!important;-webkit-print-color-adjust:exact;print-color-adjust:exact}
  .floor-hdr{background:#1a4a8a!important;color:#fff!important;-webkit-print-color-adjust:exact;print-color-adjust:exact;border-radius:0}
  .print-header{display:block!important}
}
.print-header{display:none;text-align:center;margin-bottom:14px;border-bottom:2px solid #0d2e5c;padding-bottom:10px}
.print-header h2{font-size:18px;color:#0d2e5c;font-weight:700}
.print-header p{font-size:12px;color:#555;margin-top:4px}
@media(max-width:600px){.form-grid{grid-template-columns:1fr}.stat-grid{grid-template-columns:1fr 1fr}}

/* ── LOGIN ── */
#login-screen{display:none;position:fixed;inset:0;background:linear-gradient(135deg,#0d2e5c 0%,#1a4a8a 60%,#1a6a3a 100%);z-index:999;align-items:center;justify-content:center;padding:20px}
#login-screen.show{display:flex}
.login-box{background:#fff;border-radius:16px;padding:36px 32px;width:100%;max-width:380px;box-shadow:0 20px 60px rgba(0,0,0,.3)}
.login-logo{width:60px;height:60px;background:var(--accent);border-radius:12px;display:flex;align-items:center;justify-content:center;font-weight:700;font-size:20px;color:#fff;margin:0 auto 12px}
.login-title{text-align:center;font-size:17px;font-weight:700;color:var(--navy);margin-bottom:3px}
.login-sub{text-align:center;font-size:11px;color:var(--muted);margin-bottom:24px;line-height:1.5}
.lf{display:flex;flex-direction:column;gap:5px;margin-bottom:14px}
.lf label{font-size:12px;font-weight:600;color:var(--text)}
.lf input{padding:10px 12px;border:1.5px solid var(--border);border-radius:8px;font-size:14px;outline:none;font-family:inherit;transition:.15s}
.lf input:focus{border-color:var(--navy2);box-shadow:0 0 0 3px rgba(26,74,138,.1)}
.login-err{background:#fef2f2;color:#b91c1c;border-radius:7px;padding:8px 12px;font-size:12px;margin-bottom:12px;display:none;border:1px solid #fca5a5}
.login-err.show{display:block}
.btn-login{width:100%;background:var(--navy);color:#fff;border:none;border-radius:8px;padding:11px;font-size:14px;font-weight:600;cursor:pointer;font-family:inherit;margin-top:4px;transition:.15s}
.btn-login:hover{background:var(--navy2)}
.login-hint{text-align:center;font-size:11px;color:var(--muted);margin-top:14px}
.pwd-modal{display:none;position:fixed;inset:0;background:rgba(0,0,0,.45);z-index:600;align-items:center;justify-content:center;padding:16px}
.pwd-modal.open{display:flex}
.pwd-box{background:#fff;border-radius:12px;padding:24px;width:100%;max-width:380px;box-shadow:0 8px 32px rgba(0,0,0,.18)}
.pwd-box h3{font-size:15px;font-weight:600;color:var(--navy);margin-bottom:16px;border-bottom:2px solid var(--light);padding-bottom:8px}
.user-badge{background:rgba(255,255,255,.15);border-radius:20px;padding:4px 12px;font-size:12px;color:#fff;display:flex;align-items:center;gap:5px;cursor:pointer;border:1px solid rgba(255,255,255,.2);white-space:nowrap}
.user-badge:hover{background:rgba(255,255,255,.25)}
.user-menu{position:absolute;top:52px;right:16px;background:#fff;border-radius:10px;box-shadow:0 8px 24px rgba(0,0,0,.15);border:1px solid var(--border);min-width:180px;z-index:100;display:none}
.user-menu.open{display:block}
.user-menu-item{padding:10px 16px;font-size:13px;cursor:pointer;color:var(--text);display:flex;align-items:center;gap:8px;transition:.1s}
.user-menu-item:hover{background:#f4f8ff;color:var(--navy2)}
.user-menu-item.danger{color:#b91c1c}
.user-menu-item.danger:hover{background:#fef2f2}
.um-divider{height:1px;background:var(--border);margin:4px 0}
</style>
</head>
<body>

<!-- LOGIN SCREEN -->
<div id="login-screen" class="show">
  <div class="login-box">
    <div class="login-logo">DPS</div>
    <div class="login-title">Digital Infrastructure Register</div>
    <div class="login-sub">Delhi Public School, Jabalpur<br>IT Management System — Secure Login</div>
    <div class="login-err" id="login-err">❌ Galat Username ya Password!</div>
    <div class="lf"><label>👤 Username</label><input id="li-user" type="text" placeholder="Username daalo" autocomplete="username" onkeydown="if(event.key==='Enter')doLogin()"></div>
    <div class="lf"><label>🔒 Password</label><input id="li-pass" type="password" placeholder="Password daalo" autocomplete="current-password" onkeydown="if(event.key==='Enter')doLogin()"></div>
    <button class="btn-login" onclick="doLogin()">🔓 Login</button>
    <div class="login-hint">Default: admin / dps@2025</div>
  </div>
</div>

<!-- CHANGE PASSWORD MODAL -->
<div class="pwd-modal" id="pwd-modal">
  <div class="pwd-box">
    <h3>🔑 Password Change Karo</h3>
    <div id="pwd-err" style="display:none;background:#fef2f2;color:#b91c1c;border-radius:7px;padding:8px 12px;font-size:12px;margin-bottom:12px;border:1px solid #fca5a5"></div>
    <div id="pwd-ok" style="display:none;background:#dcfce7;color:#166534;border-radius:7px;padding:8px 12px;font-size:12px;margin-bottom:12px;border:1px solid #86efac"></div>
    <div class="lf"><label>Purana Password</label><input id="pw-old" type="password" placeholder="Purana password"></div>
    <div class="lf"><label>Naya Password</label><input id="pw-new" type="password" placeholder="Naya password (min 6 characters)"></div>
    <div class="lf"><label>Naya Password Confirm</label><input id="pw-con" type="password" placeholder="Dobara daalo"></div>
    <div style="display:flex;gap:8px;justify-content:flex-end;margin-top:16px;padding-top:12px;border-top:1px solid var(--border)">
      <button class="btn" onclick="closePwdModal()">Cancel</button>
      <button class="btn btn-primary" onclick="changePassword()">✔ Save Password</button>
    </div>
  </div>
</div>

<!-- USER MENU DROPDOWN -->
<div class="user-menu" id="user-menu">
  <div class="user-menu-item" id="menu-usermgmt" style="display:none" onclick="setTab('users',document.getElementById('tab-users'))">👥 User Management</div>
  <div class="user-menu-item" onclick="openPwdModal()">🔑 Password Change Karo</div>
  <div class="um-divider"></div>
  <div class="user-menu-item danger" onclick="doLogout()">🚪 Logout</div>
</div>

<div class="app-header">
  <div class="logo">DPS</div>
  <div style="flex:1">
    <h1>Digital Infrastructure Register</h1>
    <small>Delhi Public School, Jabalpur — IT Management System</small>
  </div>
  <button class="btn btn-print no-print" onclick="window.print()">🖨️ Print Report</button>
  <div class="user-badge" onclick="toggleUserMenu()" id="user-badge">👤 <span id="badge-name">Admin</span> ▾</div>
</div>

<div class="tabs">
  <button class="tab active" onclick="setTab('overview',this)">🏠 Overview</button>
  <button class="tab" onclick="setTab('cctv',this)">📷 Surveillance</button>
  <button class="tab" onclick="setTab('smart',this)">🖥️ Smart Class</button>
  <button class="tab" onclick="setTab('labs',this)">💻 Labs</button>
  <button class="tab" onclick="setTab('ups',this)">⚡ UPS</button>
  <button class="tab" onclick="setTab('equip',this)">🖨️ Equipment</button>
  <button class="tab" onclick="setTab('office',this)">🏢 Office Depts</button>
  <button class="tab" onclick="setTab('maint',this)">🔧 Maintenance</button>
  <button class="tab" onclick="setTab('amc',this)">📋 AMC Register</button>
  <button class="tab" id="tab-users" style="display:none" onclick="setTab('users',this)">👥 User Management</button>
</div>

<div class="content" id="content"></div>

<div class="modal-bg" id="modal-bg" onclick="if(event.target===this)closeModal()">
  <div class="modal" id="modal-inner"></div>
</div>

<script>
const FLOORS=['Ground Floor','1st Floor','2nd Floor','3rd Floor','Outdoor'];
const WINGS=['Primary','Middle','Senior'];
const NVRS=['NVR 1','NVR 2','NVR 3','NVR 4'];
const UPS_T=['5 KVA','3 KVA','2 KVA','1 KVA','Other'];
const DEPTS=['MD 1','MD 2','Principal','Admin','Accounts','Store','Hostel'];
const DEPT_ICONS={'MD 1':'👔','MD 2':'👔','Principal':'🎓','Admin':'🗂️','Accounts':'💰','Store':'📦','Hostel':'🏠'};
const MAINT_DEPTS=['Labs','CCTV','Smart Class','UPS','Office','Equipment','Hostel','Other'];

let DB={
  tab:'overview',
  cctv:[
    {id:1,floor:'Ground Floor',room:'101',cls:'Nursery',sec:'A',brand:'Hikvision',ip:'192.168.1.10',nvr:'NVR 1',speaker:'Yes',loc:'Classroom'},
    {id:2,floor:'Ground Floor',room:'GF-C',cls:'—',sec:'—',brand:'Dahua',ip:'192.168.1.11',nvr:'NVR 1',speaker:'No',loc:'Corridor'},
    {id:3,floor:'1st Floor',room:'201',cls:'Class 1',sec:'A',brand:'Hikvision',ip:'192.168.1.20',nvr:'NVR 2',speaker:'Yes',loc:'Classroom'},
    {id:4,floor:'Outdoor',room:'—',cls:'—',sec:'—',brand:'Hikvision',ip:'192.168.1.50',nvr:'NVR 4',speaker:'No',loc:'Front Gate'},
    {id:5,floor:'Outdoor',room:'—',cls:'—',sec:'—',brand:'Dahua',ip:'192.168.1.51',nvr:'NVR 4',speaker:'No',loc:'Bus Parking'},
  ],
  smart:[
    {id:1,wing:'Primary',room:'101',cls:'Nursery',sec:'A',bcomp:'Promethean',bpn:'ActivPanel-75',btype:'Smart Board',bsize:'75"',cau:'Intel NUC',os:'Windows 11',upsno:'UPS-P01',pen:'Yes',teacher:'Mrs. Sharma',hdate:'2024-04-01'},
    {id:2,wing:'Middle',room:'301',cls:'Class 6',sec:'A',bcomp:'Samsung',bpn:'WA75C',btype:'Smart Board',bsize:'75"',cau:'Dell Optiplex',os:'Windows 10',upsno:'UPS-M01',pen:'Yes',teacher:'Mr. Gupta',hdate:'2024-04-01'},
  ],
  labs:[
    {id:1,name:'Computer Lab Sr',room:'L-01',pcs:40,brand:'Dell',proc:'i5 10th Gen',ram:'8 GB',stor:'256 GB SSD',os:'Windows 11',ups:'5 KVA',printer:'HP LaserJet',status:'Functional'},
    {id:2,name:'Computer Lab Pr',room:'L-02',pcs:25,brand:'HP',proc:'i3 8th Gen',ram:'4 GB',stor:'1 TB HDD',os:'Windows 10',ups:'3 KVA',printer:'Canon LBP',status:'Functional'},
    {id:3,name:'ATL Lab',room:'L-03',pcs:15,brand:'Lenovo',proc:'i5 10th Gen',ram:'8 GB',stor:'256 GB SSD',os:'Windows 11',ups:'2 KVA',printer:'None',status:'Functional'},
  ],
  ups:[
    {id:1,loc:'Server Room',type:'5 KVA',mode:'Online',brand:'APC',model:'SRT5KRMXLI',serial:'AP2024001',pdate:'2023-01-15',bdate:'2025-01-15',area:'GF — Server Room'},
    {id:2,loc:'Computer Lab Sr',type:'5 KVA',mode:'Online',brand:'APC',model:'SRT5KRMXLI',serial:'AP2024002',pdate:'2023-01-15',bdate:'2025-01-15',area:'GF — Lab L-01'},
    {id:3,loc:'Smart Class 101',type:'1 KVA',mode:'Normal',brand:'Luminous',model:'Eco Watt 1250',serial:'LU2024001',pdate:'2022-06-01',bdate:'2024-06-01',area:'GF — Room 101'},
  ],
  equip:[
    {id:1,type:'EPBAX',brand:'Panasonic KX-NS700',loc:'Server Room',serial:'PAN2022001',pdate:'2022-03-01',amc:'Yes',status:'Functional',remark:'Main EPBAX'},
    {id:2,type:'Photocopier',brand:'Canon iR2625i',loc:'Office',serial:'CAN2022001',pdate:'2022-01-10',amc:'Yes',status:'Functional',remark:'Admin Office'},
    {id:3,type:'Laser Printer',brand:'HP LaserJet M404n',loc:'Principal Room',serial:'HP2023001',pdate:'2023-01-15',amc:'No',status:'Functional',remark:'B&W'},
    {id:4,type:'Digital Signage',brand:'LG 55SM5KC',loc:'Reception',serial:'LG2023001',pdate:'2023-06-01',amc:'No',status:'Functional',remark:'LED Display'},
  ],
  office:[
    {id:1,dept:'MD 1',room:'OF-MD1',item:'Desktop PC',brand:'Dell',model:'Optiplex 3090',serial:'DL2023001',os:'Windows 11',ups:'1 KVA',printer:'HP LaserJet',internet:'Yes',phone:'Ext 101',status:'Functional',remark:''},
    {id:2,dept:'MD 2',room:'OF-MD2',item:'Desktop PC',brand:'HP',model:'EliteDesk 800',serial:'HP2023001',os:'Windows 11',ups:'1 KVA',printer:'Canon LBP',internet:'Yes',phone:'Ext 102',status:'Functional',remark:''},
    {id:3,dept:'Principal',room:'OF-PR',item:'Desktop PC',brand:'Dell',model:'Optiplex 5090',serial:'DL2023002',os:'Windows 11',ups:'1 KVA',printer:'HP LaserJet M479',internet:'Yes',phone:'Ext 100',status:'Functional',remark:'Color Printer'},
    {id:4,dept:'Admin',room:'OF-AD',item:'Desktop PC',brand:'HP',model:'ProDesk 400',serial:'HP2023002',os:'Windows 10',ups:'2 KVA',printer:'HP LaserJet',internet:'Yes',phone:'Ext 103',status:'Functional',remark:''},
    {id:5,dept:'Accounts',room:'OF-AC',item:'Desktop PC',brand:'Dell',model:'Optiplex 3090',serial:'DL2023003',os:'Windows 10',ups:'2 KVA',printer:'Canon iR2625i',internet:'Yes',phone:'Ext 104',status:'Functional',remark:'Photocopier also'},
    {id:6,dept:'Store',room:'OF-ST',item:'Desktop PC',brand:'Lenovo',model:'ThinkCentre M70',serial:'LN2023001',os:'Windows 10',ups:'1 KVA',printer:'None',internet:'Yes',phone:'Ext 105',status:'Functional',remark:''},
    {id:7,dept:'Hostel',room:'OF-HO',item:'Desktop PC',brand:'HP',model:'ProDesk 400',serial:'HP2023003',os:'Windows 10',ups:'1 KVA',printer:'HP LaserJet',internet:'Yes',phone:'Ext 106',status:'Functional',remark:''},
  ],
  maint:[
    {id:1,date:'2025-01-10',dept:'Labs',item:'Computer Lab Sr — PC #12',issue:'Screen not working',action:'Monitor replaced',by:'Rajendra',cost:'2500',status:'Resolved',nextDate:'2026-01-10'},
    {id:2,date:'2025-02-15',dept:'CCTV',item:'NVR 2 — 1st Floor',issue:'HDD full, recording stopped',action:'HDD upgraded to 4TB',by:'Rajendra',cost:'3800',status:'Resolved',nextDate:'2026-02-15'},
    {id:3,date:'2025-03-05',dept:'Smart Class',item:'Room 301 — Smart Board',issue:'Touch not responding',action:'Driver reinstalled',by:'Rajendra',cost:'0',status:'Resolved',nextDate:'—'},
    {id:4,date:'2025-04-20',dept:'UPS',item:'UPS — Computer Lab Pr',issue:'Battery backup low',action:'Battery replaced',by:'Rajendra',cost:'4200',status:'Resolved',nextDate:'2027-04-20'},
    {id:5,date:'2025-05-01',dept:'Office',item:'Accounts — Photocopier',issue:'Paper jam frequently',action:'Roller cleaned',by:'Vendor',cost:'800',status:'Pending',nextDate:'2025-11-01'},
  ],
  amc:[
    {id:1,item:'CCTV System (All NVRs + Cameras)',vendor:'TechVision Pvt Ltd',contact:'9300XXXXXX',startDate:'2025-04-01',endDate:'2026-03-31',amount:'45000',coverage:'Parts+Labour',visits:'Quarterly',remark:'4 visits/year'},
    {id:2,item:'UPS — All Online Units (APC)',vendor:'APC Authorized Service',contact:'9400XXXXXX',startDate:'2025-01-01',endDate:'2025-12-31',amount:'28000',coverage:'Labour only',visits:'Half-yearly',remark:'Battery extra'},
    {id:3,item:'Smart Boards — Primary Wing',vendor:'Promethean India',contact:'9500XXXXXX',startDate:'2024-08-01',endDate:'2025-07-31',amount:'35000',coverage:'Parts+Labour',visits:'On-call',remark:'Renewal due July'},
    {id:4,item:'Photocopier — Canon iR2625i',vendor:'Canon India Pvt Ltd',contact:'9600XXXXXX',startDate:'2025-03-01',endDate:'2026-02-28',amount:'18000',coverage:'Parts+Labour',visits:'Bi-monthly',remark:'Toner extra'},
    {id:5,item:'Computer Lab Sr — All PCs',vendor:'Dell Authorized Service',contact:'9700XXXXXX',startDate:'2024-04-01',endDate:'2025-03-31',amount:'52000',coverage:'Parts+Labour',visits:'On-call',remark:'Renewal pending'},
  ],
  nids:{cctv:6,smart:3,labs:4,ups:4,equip:5,office:8,maint:6,amc:6}
};

function save(){try{localStorage.setItem('dps_db',JSON.stringify(DB))}catch(e){}}
function load(){try{const d=localStorage.getItem('dps_db');if(d)Object.assign(DB,JSON.parse(d))}catch(e){}}
load();

function setTab(t,el){
  DB.tab=t;
  document.querySelectorAll('.tab').forEach(x=>x.classList.remove('active'));
  if(el)el.classList.add('active');
  render();
}

function render(){
  const map={overview:renderOverview,cctv:renderCCTV,smart:renderSmart,labs:renderLabs,ups:renderUPS,equip:renderEquip,office:renderOffice,maint:renderMaint,amc:renderAMC,users:renderUsers};
  document.getElementById('content').innerHTML=(map[DB.tab]||renderOverview)();
}

// Helpers
function daysLeft(d){if(!d||d==='—')return null;return Math.ceil((new Date(d)-new Date())/(864e5));}
function sBadge(end){const d=daysLeft(end);if(d===null)return'<span class="badge b-gray">N/A</span>';if(d<0)return'<span class="badge b-red">Expired</span>';if(d<=60)return'<span class="badge b-amber">Expiring Soon</span>';return'<span class="badge b-green">Active</span>';}
function stBadge(s){return`<span class="badge ${s==='Functional'?'b-green':s==='Under Repair'?'b-amber':'b-red'}">${s}</span>`;}
function ab(type,id){return`<div class="act-btns no-print"><button class="btn btn-sm btn-edit" onclick="openModal('${type}',${id})">✏️</button><button class="btn btn-sm btn-del" onclick="del('${type}',${id})">🗑️</button></div>`;}
function fh(icon,lbl){return`<div class="floor-hdr">${icon} ${lbl}</div>`;}
function ph(title){return`<div class="print-header"><h2>Delhi Public School, Jabalpur</h2><p>${title} &nbsp;|&nbsp; Date: ${new Date().toLocaleDateString('en-IN',{day:'2-digit',month:'long',year:'numeric'})}</p></div>`;}

// ── OVERVIEW ──
function renderOverview(){
  const pc=DB.labs.reduce((s,l)=>s+(+l.pcs||0),0);
  const exp=DB.amc.filter(a=>{const d=daysLeft(a.endDate);return d!==null&&d>=0&&d<=60;}).length;
  const pend=DB.maint.filter(m=>m.status==='Pending').length;
  return ph('Digital Infrastructure Register — Complete Overview')+`
  <div class="stat-grid">
    <div class="stat-card"><div>📷</div><div class="stat-num">${DB.cctv.length}</div><div class="stat-lbl">CCTV Cameras</div></div>
    <div class="stat-card"><div>🖥️</div><div class="stat-num">${DB.smart.length}</div><div class="stat-lbl">Smart Classrooms</div></div>
    <div class="stat-card"><div>💻</div><div class="stat-num">${DB.labs.length}</div><div class="stat-lbl">Labs</div></div>
    <div class="stat-card"><div>🖱️</div><div class="stat-num">${pc}</div><div class="stat-lbl">Total PCs</div></div>
    <div class="stat-card"><div>⚡</div><div class="stat-num">${DB.ups.length}</div><div class="stat-lbl">UPS Units</div></div>
    <div class="stat-card"><div>🖨️</div><div class="stat-num">${DB.equip.length}</div><div class="stat-lbl">Equipment</div></div>
    <div class="stat-card"><div>⚠️</div><div class="stat-num" style="color:${exp>0?'#92400e':'#166534'}">${exp}</div><div class="stat-lbl">AMC Expiring</div></div>
    <div class="stat-card"><div>🔧</div><div class="stat-num" style="color:${pend>0?'#b91c1c':'#166534'}">${pend}</div><div class="stat-lbl">Maint. Pending</div></div>
  </div>
  <div class="section-card">
    <div style="font-weight:600;font-size:13px;color:var(--navy);margin-bottom:10px">📋 Register Index</div>
    <div class="tbl-wrap"><table><thead><tr><th>#</th><th>Module</th><th>Description</th><th>Entries</th></tr></thead><tbody>
      <tr><td>1</td><td>📷 Surveillance</td><td>Floor-wise CCTV — Camera, IP, NVR, Speaker</td><td>${DB.cctv.length}</td></tr>
      <tr><td>2</td><td>🖥️ Smart Class</td><td>Wing-wise Smart Board, CAU, OS, UPS, Teacher handover</td><td>${DB.smart.length}</td></tr>
      <tr><td>3</td><td>💻 Labs</td><td>Computer Lab Sr/Pr, ATL, Bio Lab</td><td>${DB.labs.length}</td></tr>
      <tr><td>4</td><td>⚡ UPS</td><td>All UPS — Type, Brand, Serial, Battery date</td><td>${DB.ups.length}</td></tr>
      <tr><td>5</td><td>🖨️ Equipment</td><td>EPBAX, Printers, Photocopiers, Digital Signage</td><td>${DB.equip.length}</td></tr>
      <tr><td>6</td><td>🏢 Office Depts</td><td>MD 1 | MD 2 | Principal | Admin | Accounts | Store | Hostel</td><td>${DB.office.length}</td></tr>
      <tr><td>7</td><td>🔧 Maintenance</td><td>Har repair ka record + cost tracking</td><td>${DB.maint.length}</td></tr>
      <tr><td>8</td><td>📋 AMC Register</td><td>Annual Maintenance Contracts</td><td>${DB.amc.length}</td></tr>
    </tbody></table></div>
    <div class="info-box">⚡ NVR: GF→NVR 1 | 1F→NVR 2 | 2F/3F→NVR 3 | Outdoor→NVR 4 &nbsp;|&nbsp; APC 5 KVA Main UPS</div>
  </div>`;
}

// ── CCTV ──
function renderCCTV(){
  const f=window._cf||'All';
  const map={};
  DB.cctv.filter(c=>f==='All'||c.floor===f).forEach(c=>{if(!map[c.floor])map[c.floor]=[];map[c.floor].push(c);});
  const body=Object.entries(map).map(([fl,rows])=>fh('📷',fl+' — '+rows.length+' camera'+(rows.length>1?'s':''))+
    `<div class="tbl-wrap" style="margin-bottom:8px"><table><thead><tr><th>S.No</th><th>Room</th><th>Class</th><th>Sec</th><th>Brand</th><th>IP Address</th><th>NVR</th><th>Speaker</th><th>Location</th><th class="no-print">Action</th></tr></thead><tbody>${
    rows.map((c,i)=>`<tr><td>${i+1}</td><td>${c.room}</td><td>${c.cls}</td><td>${c.sec}</td><td>${c.brand}</td><td style="font-family:monospace;font-size:11px">${c.ip}</td><td><span class="badge b-blue">${c.nvr}</span></td><td><span class="badge ${c.speaker==='Yes'?'b-green':'b-gray'}">${c.speaker}</span></td><td>${c.loc}</td><td>${ab('cctv',c.id)}</td></tr>`).join('')
    }</tbody></table></div>`).join('');
  return ph('Surveillance Register')+`<div class="section-card">
    <div class="toolbar">
      <select onchange="window._cf=this.value;render()"><option value="All">All Floors</option>${FLOORS.map(x=>`<option${x===(window._cf||'All')?' selected':''}>${x}</option>`).join('')}</select>
      <div style="flex:1"></div><button class="btn btn-primary no-print" style="display:${canEdit()?'':'none'}" onclick="openModal('cctv',null)">+ Add Camera</button>
    </div>${Object.keys(map).length?body:'<div class="empty">No cameras added.</div>'}
    <div class="info-box">Maintenance: NVR health | Converter | Cable | Camera cleaning</div>
  </div>`;
}

// ── SMART CLASS ──
function renderSmart(){
  const w=window._sw||'All';
  const map={};
  DB.smart.filter(s=>w==='All'||s.wing===w).forEach(s=>{if(!map[s.wing])map[s.wing]=[];map[s.wing].push(s);});
  const body=Object.entries(map).map(([wn,rows])=>fh('🏫',wn+' Wing — '+rows.length+' room'+(rows.length>1?'s':''))+
    `<div class="tbl-wrap" style="margin-bottom:8px"><table><thead><tr><th>S.No</th><th>Room</th><th>Class</th><th>Sec</th><th>Board Brand</th><th>P/N</th><th>Type</th><th>CAU</th><th>OS</th><th>UPS No.</th><th>Pen</th><th>Teacher</th><th class="no-print">Action</th></tr></thead><tbody>${
    rows.map((s,i)=>`<tr><td>${i+1}</td><td>${s.room}</td><td>${s.cls}</td><td>${s.sec}</td><td>${s.bcomp}</td><td style="font-size:11px">${s.bpn}</td><td>${s.btype}</td><td>${s.cau}</td><td><span class="badge b-blue">${s.os}</span></td><td>${s.upsno}</td><td><span class="badge ${s.pen==='Yes'?'b-green':'b-gray'}">${s.pen}</span></td><td>${s.teacher}</td><td>${ab('smart',s.id)}</td></tr>`).join('')
    }</tbody></table></div>`).join('');
  return ph('Smart Classroom Register')+`<div class="section-card">
    <div class="toolbar">
      <select onchange="window._sw=this.value;render()"><option value="All">All Wings</option>${WINGS.map(x=>`<option${x===(window._sw||'All')?' selected':''}>${x}</option>`).join('')}</select>
      <div style="flex:1"></div><button class="btn btn-primary no-print" style="display:${canEdit()?'':'none'}" onclick="openModal('smart',null)">+ Add Classroom</button>
    </div>${Object.keys(map).length?body:'<div class="empty">No classrooms added.</div>'}
    <div class="info-box">Per Class: Keyboard | Mouse | Speakers | Cabinet | Magnetic Pen | Teacher Sign</div>
  </div>`;
}

// ── LABS ──
function renderLabs(){
  const rows=DB.labs.map((l,i)=>`<tr><td>${i+1}</td><td><strong>${l.name}</strong></td><td>${l.room}</td><td style="text-align:center;font-weight:600">${l.pcs}</td><td>${l.brand}</td><td>${l.proc}</td><td>${l.ram}</td><td>${l.stor}</td><td><span class="badge b-blue">${l.os}</span></td><td>${l.ups}</td><td>${l.printer}</td><td>${stBadge(l.status)}</td><td>${ab('labs',l.id)}</td></tr>`).join('');
  return ph('Labs Register')+`<div class="section-card">
    <div class="toolbar"><span style="font-size:12px;color:var(--muted)">${DB.labs.length} labs</span><div style="flex:1"></div><button class="btn btn-primary no-print" style="display:${canEdit()?'':'none'}" onclick="openModal('labs',null)">+ Add Lab</button></div>
    <div class="tbl-wrap"><table><thead><tr><th>S.No</th><th>Lab Name</th><th>Room</th><th>PCs</th><th>Brand</th><th>Processor</th><th>RAM</th><th>Storage</th><th>OS</th><th>UPS</th><th>Printer</th><th>Status</th><th class="no-print">Action</th></tr></thead>
    <tbody>${rows||'<tr><td colspan="13" class="empty">No labs added.</td></tr>'}</tbody></table></div>
  </div>`;
}

// ── UPS ──
function renderUPS(){
  const rows=DB.ups.map((u,i)=>`<tr><td>${i+1}</td><td>${u.loc}</td><td><span class="badge b-blue">${u.type}</span></td><td><span class="badge ${u.mode==='Online'?'b-green':'b-amber'}">${u.mode}</span></td><td>${u.brand}</td><td style="font-size:11px">${u.model}</td><td style="font-family:monospace;font-size:11px">${u.serial}</td><td>${u.pdate}</td><td>${u.bdate}</td><td>${u.area}</td><td>${ab('ups',u.id)}</td></tr>`).join('');
  return ph('UPS Register')+`<div class="section-card">
    <div class="toolbar"><span style="font-size:12px;color:var(--muted)">${DB.ups.length} UPS units</span><div style="flex:1"></div><button class="btn btn-primary no-print" style="display:${canEdit()?'':'none'}" onclick="openModal('ups',null)">+ Add UPS</button></div>
    <div class="tbl-wrap"><table><thead><tr><th>S.No</th><th>Location</th><th>Type</th><th>Mode</th><th>Brand</th><th>Model</th><th>Serial No.</th><th>Purchase Date</th><th>Battery Change</th><th>Placed Area</th><th class="no-print">Action</th></tr></thead>
    <tbody>${rows||'<tr><td colspan="11" class="empty">No UPS added.</td></tr>'}</tbody></table></div>
    <div class="info-box">★ All UPS sticker: Placement Area | Purchase Date | Battery Change Date</div>
  </div>`;
}

// ── EQUIPMENT ──
function renderEquip(){
  const rows=DB.equip.map((e,i)=>`<tr><td>${i+1}</td><td>${e.type}</td><td>${e.brand}</td><td>${e.loc}</td><td style="font-family:monospace;font-size:11px">${e.serial}</td><td>${e.pdate}</td><td><span class="badge ${e.amc==='Yes'?'b-green':'b-gray'}">${e.amc}</span></td><td>${stBadge(e.status)}</td><td>${e.remark||'—'}</td><td>${ab('equip',e.id)}</td></tr>`).join('');
  return ph('Equipment Register')+`<div class="section-card">
    <div class="toolbar"><span style="font-size:12px;color:var(--muted)">${DB.equip.length} items</span><div style="flex:1"></div><button class="btn btn-primary no-print" style="display:${canEdit()?'':'none'}" onclick="openModal('equip',null)">+ Add Equipment</button></div>
    <div class="tbl-wrap"><table><thead><tr><th>S.No</th><th>Type</th><th>Brand/Model</th><th>Location</th><th>Serial No.</th><th>Purchase Date</th><th>AMC</th><th>Status</th><th>Remark</th><th class="no-print">Action</th></tr></thead>
    <tbody>${rows||'<tr><td colspan="10" class="empty">No equipment added.</td></tr>'}</tbody></table></div>
  </div>`;
}

// ── OFFICE ──
function renderOffice(){
  const f=window._of||'All';
  const cards=DEPTS.filter(d=>f==='All'||d===f).map(dept=>{
    const items=DB.office.filter(o=>o.dept===dept);
    const rows=items.map((o,i)=>`<tr><td>${i+1}</td><td>${o.room}</td><td>${o.item}</td><td>${o.brand}</td><td style="font-size:11px">${o.model}</td><td style="font-family:monospace;font-size:11px">${o.serial}</td><td><span class="badge b-blue">${o.os}</span></td><td>${o.ups}</td><td>${o.printer}</td><td><span class="badge ${o.internet==='Yes'?'b-green':'b-gray'}">${o.internet}</span></td><td>${o.phone}</td><td>${stBadge(o.status)}</td><td>${o.remark||'—'}</td><td>${ab('office',o.id)}</td></tr>`).join('');
    return fh(DEPT_ICONS[dept]||'🏢',dept+' — '+items.length+' item'+(items.length!==1?'s':''))+
      `<div class="tbl-wrap" style="margin-bottom:8px"><table><thead><tr><th>S.No</th><th>Room</th><th>Item</th><th>Brand</th><th>Model</th><th>Serial</th><th>OS</th><th>UPS</th><th>Printer</th><th>Internet</th><th>Phone</th><th>Status</th><th>Remark</th><th class="no-print">Action</th></tr></thead><tbody>${rows||'<tr><td colspan="14" class="empty">No items.</td></tr>'}</tbody></table></div>`;
  }).join('');
  return ph('Office Departments Register')+`<div class="section-card">
    <div style="font-weight:600;font-size:13px;color:var(--navy);margin-bottom:10px">🏢 Office Departments</div>
    <div class="toolbar">
      <select onchange="window._of=this.value;render()"><option value="All">All Departments</option>${DEPTS.map(d=>`<option${d===(window._of||'All')?' selected':''}>${d}</option>`).join('')}</select>
      <div style="flex:1"></div><button class="btn btn-primary no-print" style="display:${canEdit()?'':'none'}" onclick="openModal('office',null)">+ Add Item</button>
    </div>${cards}
  </div>`;
}

// ── MAINTENANCE ──
function renderMaint(){
  const f=window._mf||'All';
  const list=DB.maint.filter(m=>f==='All'||m.dept===f);
  const total=list.reduce((s,m)=>s+(+m.cost||0),0);
  const pend=list.filter(m=>m.status==='Pending').length;
  const rows=list.map((m,i)=>`<tr><td>${i+1}</td><td>${m.date}</td><td><span class="badge b-blue">${m.dept}</span></td><td>${m.item}</td><td style="color:#b91c1c">${m.issue}</td><td style="color:#166534">${m.action}</td><td>${m.by}</td><td><span class="badge ${m.status==='Resolved'?'b-green':m.status==='Pending'?'b-amber':'b-red'}">${m.status}</span></td><td>${m.cost?'₹'+Number(m.cost).toLocaleString('en-IN'):'—'}</td><td>${m.nextDate||'—'}</td><td>${ab('maint',m.id)}</td></tr>`).join('');
  return ph('Maintenance Log')+`<div class="section-card">
    <div style="font-weight:600;font-size:13px;color:var(--navy);margin-bottom:10px">🔧 Maintenance Log</div>
    <div style="display:flex;gap:10px;margin-bottom:12px;flex-wrap:wrap">
      <div class="stat-card" style="padding:8px 14px;min-width:90px"><div class="stat-num" style="font-size:18px">${list.length}</div><div class="stat-lbl">Total</div></div>
      <div class="stat-card" style="padding:8px 14px;min-width:90px"><div class="stat-num" style="font-size:18px;color:${pend>0?'#b91c1c':'#166534'}">${pend}</div><div class="stat-lbl">Pending</div></div>
      <div class="stat-card" style="padding:8px 14px;min-width:110px"><div class="stat-num" style="font-size:16px">₹${total.toLocaleString('en-IN')}</div><div class="stat-lbl">Total Cost</div></div>
    </div>
    <div class="toolbar">
      <select onchange="window._mf=this.value;render()"><option value="All">All Departments</option>${MAINT_DEPTS.map(d=>`<option${d===(window._mf||'All')?' selected':''}>${d}</option>`).join('')}</select>
      <div style="flex:1"></div><button class="btn btn-primary no-print" style="display:${canEdit()?'':'none'}" onclick="openModal('maint',null)">+ Add Entry</button>
    </div>
    <div class="tbl-wrap"><table><thead><tr><th>S.No</th><th>Date</th><th>Dept.</th><th>Item</th><th>Issue</th><th>Action Taken</th><th>Done By</th><th>Status</th><th>Cost</th><th>Next Service</th><th class="no-print">Action</th></tr></thead>
    <tbody>${rows||'<tr><td colspan="11" class="empty">No entries.</td></tr>'}</tbody></table></div>
    <div class="info-box">Har repair ka record yahan rakho — cost tracking ke liye</div>
  </div>`;
}

// ── AMC ──
function renderAMC(){
  const total=DB.amc.reduce((s,a)=>s+(+a.amount||0),0);
  const exp=DB.amc.filter(a=>{const d=daysLeft(a.endDate);return d!==null&&d>=0&&d<=60;}).length;
  const expd=DB.amc.filter(a=>{const d=daysLeft(a.endDate);return d!==null&&d<0;}).length;
  const rows=DB.amc.map((a,i)=>{
    const d=daysLeft(a.endDate);
    const dl=d!==null?` <span style="font-size:10px;color:${d<0?'#b91c1c':d<=60?'#92400e':'#166534'}">(${d<0?Math.abs(d)+'d ago':d+'d left'})</span>`:'';
    return`<tr><td>${i+1}</td><td><strong>${a.item}</strong></td><td>${a.vendor}</td><td style="font-family:monospace;font-size:11px">${a.contact}</td><td>${a.startDate}</td><td>${a.endDate}${dl}</td><td>₹${Number(a.amount).toLocaleString('en-IN')}</td><td>${a.coverage}</td><td>${a.visits}</td><td>${sBadge(a.endDate)}</td><td>${a.remark||'—'}</td><td>${ab('amc',a.id)}</td></tr>`;}).join('');
  return ph('AMC Register')+`<div class="section-card">
    <div style="font-weight:600;font-size:13px;color:var(--navy);margin-bottom:10px">📋 AMC Register — Annual Maintenance Contracts</div>
    <div style="display:flex;gap:10px;margin-bottom:14px;flex-wrap:wrap">
      <div class="stat-card" style="padding:8px 14px;min-width:90px"><div class="stat-num" style="font-size:18px">${DB.amc.length}</div><div class="stat-lbl">Total</div></div>
      <div class="stat-card" style="padding:8px 14px;min-width:90px"><div class="stat-num" style="font-size:18px;color:#166534">${DB.amc.length-exp-expd}</div><div class="stat-lbl">Active</div></div>
      <div class="stat-card" style="padding:8px 14px;min-width:90px"><div class="stat-num" style="font-size:18px;color:#92400e">${exp}</div><div class="stat-lbl">Expiring</div></div>
      <div class="stat-card" style="padding:8px 14px;min-width:90px"><div class="stat-num" style="font-size:18px;color:#b91c1c">${expd}</div><div class="stat-lbl">Expired</div></div>
      <div class="stat-card" style="padding:8px 14px;min-width:120px"><div class="stat-num" style="font-size:15px">₹${total.toLocaleString('en-IN')}</div><div class="stat-lbl">Total Value</div></div>
    </div>
    <div class="toolbar"><div style="flex:1"></div><button class="btn btn-primary no-print" style="display:${canEdit()?'':'none'}" onclick="openModal('amc',null)">+ Add AMC</button></div>
    <div class="tbl-wrap"><table><thead><tr><th>S.No</th><th>Item / Equipment</th><th>Vendor</th><th>Contact</th><th>Start Date</th><th>End Date</th><th>Amount</th><th>Coverage</th><th>Visits</th><th>Status</th><th>Remark</th><th class="no-print">Action</th></tr></thead>
    <tbody>${rows||'<tr><td colspan="12" class="empty">No AMC added.</td></tr>'}</tbody></table></div>
    <div class="info-box">⚠️ Expiring Soon = 60 din bacha — Vendor se renewal ke liye contact karo</div>
  </div>`;
}

// ── ROLE ACCESS ──
const ROLES=['Admin','Principal','IT Staff','View Only'];
function isAdmin(){const u=getCurrentUser();return u&&u.role==='Admin';}
function canEdit(){const u=getCurrentUser();return u&&(u.role==='Admin'||u.role==='IT Staff');}

// ── USER MANAGEMENT ──
function renderUsers(){
  if(!isAdmin()){return`<div class="section-card"><div class="empty">⛔ Sirf Admin User Management dekh sakta hai.</div></div>`;}
  const users=getUsers();
  const rows=users.map((u,i)=>`<tr>
    <td>${i+1}</td>
    <td><strong>${u.username}</strong></td>
    <td><span class="badge ${u.role==='Admin'?'b-red':u.role==='IT Staff'?'b-blue':u.role==='Principal'?'b-green':'b-gray'}">${u.role}</span></td>
    <td style="color:var(--muted);font-size:11px">••••••••</td>
    <td>
      <div class="act-btns">
        <button class="btn btn-sm btn-edit" onclick="openUserModal(${i})">✏️ Edit</button>
        ${u.username==='admin'?'<span style="font-size:11px;color:var(--muted);padding:0 6px">Protected</span>':`<button class="btn btn-sm btn-del" onclick="delUser(${i})">🗑️ Delete</button>`}
      </div>
    </td>
  </tr>`).join('');
  return`<div class="section-card">
    <div style="font-weight:600;font-size:14px;color:var(--navy);margin-bottom:14px">👥 User Management</div>
    <div class="toolbar">
      <span style="font-size:12px;color:var(--muted)">${users.length} user${users.length!==1?'s':''} registered</span>
      <div style="flex:1"></div>
      <button class="btn btn-primary" onclick="openUserModal(null)">+ Add New User</button>
    </div>
    <div class="tbl-wrap">
    <table><thead><tr><th>S.No</th><th>Username</th><th>Role</th><th>Password</th><th>Action</th></tr></thead>
    <tbody>${rows}</tbody></table></div>
    <div class="info-box" style="margin-top:12px">
      <strong>Roles ki Permission:</strong><br>
      🔴 <strong>Admin</strong> — Sab kuch kar sakta hai: Add, Edit, Delete, User Management<br>
      🔵 <strong>IT Staff</strong> — Data Add, Edit, Delete kar sakta hai (Users nahi)<br>
      🟢 <strong>Principal</strong> — Sirf dekh sakta hai + Print kar sakta hai<br>
      ⚫ <strong>View Only</strong> — Sirf dekh sakta hai
    </div>
  </div>`;
}

function openUserModal(idx){
  const users=getUsers();
  const u=idx!==null?users[idx]:null;
  const title=u?'✏️ User Edit Karo':'➕ Naya User Add Karo';
  document.getElementById('modal-inner').innerHTML=`
    <h3>${title}</h3>
    <div class="form-grid">
      <div class="ff full"><label>Username</label><input id="um-user" type="text" placeholder="username (space nahi)" value="${u?u.username:''}" ${u&&u.username==='admin'?'readonly style="background:#f4f7fb"':''}></div>
      <div class="ff full"><label>Role</label>
        <select id="um-role">${ROLES.map(r=>`<option${u&&u.role===r?' selected':''}>${r}</option>`).join('')}</select>
      </div>
      <div class="ff full"><label>${u?'Naya Password (khali chodo agar change nahi karna)':'Password'}</label>
        <input id="um-pwd" type="password" placeholder="${u?'Khali rakho = password same rahega':'Min 6 characters'}">
      </div>
      ${!u?`<div class="ff full"><label>Password Confirm</label><input id="um-pwd2" type="password" placeholder="Dobara daalo"></div>`:''}
    </div>
    <div id="um-err" style="display:none;background:#fef2f2;color:#b91c1c;border-radius:7px;padding:8px 12px;font-size:12px;margin-top:10px;border:1px solid #fca5a5"></div>
    <div class="modal-footer">
      <button class="btn" onclick="closeModal()">Cancel</button>
      <button class="btn btn-primary" onclick="saveUser(${JSON.stringify(idx)})">✔ Save</button>
    </div>`;
  document.getElementById('modal-bg').classList.add('open');
}

function saveUser(idx){
  const uname=document.getElementById('um-user').value.trim().toLowerCase();
  const role=document.getElementById('um-role').value;
  const pwd=document.getElementById('um-pwd').value;
  const pwd2El=document.getElementById('um-pwd2');
  const errEl=document.getElementById('um-err');
  errEl.style.display='none';

  // Validations
  if(!uname){errEl.textContent='❌ Username daalna zaroori hai!';errEl.style.display='block';return;}
  if(/\s/.test(uname)){errEl.textContent='❌ Username mein space nahi hona chahiye!';errEl.style.display='block';return;}

  const users=getUsers();

  if(idx===null){
    // ADD new user
    if(!pwd){errEl.textContent='❌ Password daalna zaroori hai!';errEl.style.display='block';return;}
    if(pwd.length<6){errEl.textContent='❌ Password kam se kam 6 characters ka hona chahiye!';errEl.style.display='block';return;}
    const pwd2=pwd2El?pwd2El.value:'';
    if(pwd!==pwd2){errEl.textContent='❌ Password aur Confirm Password match nahi kar rahe!';errEl.style.display='block';return;}
    if(users.find(u=>u.username===uname)){errEl.textContent='❌ Ye username pehle se exist karta hai!';errEl.style.display='block';return;}
    users.push({username:uname,pwd:btoa(pwd),role:role});
  } else {
    // EDIT existing user
    if(pwd&&pwd.length<6){errEl.textContent='❌ Naya password kam se kam 6 characters ka hona chahiye!';errEl.style.display='block';return;}
    const existing=users.findIndex((u,i)=>u.username===uname&&i!==idx);
    if(existing>-1){errEl.textContent='❌ Ye username kisi aur user ka hai!';errEl.style.display='block';return;}
    users[idx].username=uname;
    users[idx].role=role;
    if(pwd) users[idx].pwd=btoa(pwd);
  }
  saveUsers(users);
  closeModal();
  render();
}

function delUser(idx){
  const users=getUsers();
  if(users[idx].username==='admin'){alert('Admin user delete nahi ho sakta!');return;}
  if(!confirm(`"${users[idx].username}" user ko delete karna chahte ho?`))return;
  users.splice(idx,1);
  saveUsers(users);
  render();
}

// ── ROLE-BASED BUTTON GUARD ──
function ab(type,id){
  if(!canEdit()) return ''; // View Only / Principal — no action buttons
  return`<div class="act-btns no-print"><button class="btn btn-sm btn-edit" onclick="openModal('${type}',${id})">✏️</button><button class="btn btn-sm btn-del" onclick="del('${type}',${id})">🗑️</button></div>`;
}

// ── FORMS CONFIG ──
const FORMS={
  cctv:{title:'CCTV Camera',f:[
    {l:'Floor',k:'floor',s:FLOORS},{l:'Room No.',k:'room',ph:'101'},
    {l:'Class',k:'cls',ph:'Class 1'},{l:'Section',k:'sec',ph:'A'},
    {l:'Camera Brand',k:'brand',ph:'Hikvision / Dahua'},{l:'IP / IA Address',k:'ip',ph:'192.168.1.x'},
    {l:'Mapped NVR',k:'nvr',s:NVRS},{l:'Speaker',k:'speaker',s:['Yes','No']},
    {l:'Location',k:'loc',ph:'Classroom / Corridor / Gate...',full:1},
  ]},
  smart:{title:'Smart Classroom',f:[
    {l:'Wing',k:'wing',s:WINGS},{l:'Room No.',k:'room',ph:'101'},
    {l:'Class',k:'cls',ph:'Nursery / Class 6'},{l:'Section',k:'sec',ph:'A'},
    {l:'Board Company',k:'bcomp',ph:'Promethean / Samsung'},{l:'Board P/N',k:'bpn',ph:'Model No.'},
    {l:'Board Type',k:'btype',ph:'Smart Board / Green White'},{l:'Board Size',k:'bsize',ph:'75" / 8x4 ft'},
    {l:'CAU / System',k:'cau',ph:'Intel NUC / Dell'},{l:'OS',k:'os',s:['Windows 11','Windows 10','Linux']},
    {l:'UPS No.',k:'upsno',ph:'UPS-P01'},{l:'Magnetic Pen',k:'pen',s:['Yes','No']},
    {l:'Handed To',k:'teacher',ph:'Mrs. Sharma'},{l:'Date Handed',k:'hdate',t:'date'},
  ]},
  labs:{title:'Lab',f:[
    {l:'Lab Name',k:'name',ph:'Computer Lab Sr / ATL Lab...',full:1},
    {l:'Room No.',k:'room',ph:'L-01'},{l:'Total PCs',k:'pcs',t:'number',ph:'40'},
    {l:'PC Brand',k:'brand',ph:'Dell / HP'},{l:'Processor',k:'proc',ph:'i5 10th Gen'},
    {l:'RAM',k:'ram',ph:'8 GB'},{l:'Storage',k:'stor',ph:'256 GB SSD'},
    {l:'OS',k:'os',ph:'Windows 11'},{l:'UPS',k:'ups',ph:'5 KVA'},
    {l:'Printer',k:'printer',ph:'HP LaserJet / None'},{l:'Status',k:'status',s:['Functional','Under Repair','Not Working']},
  ]},
  ups:{title:'UPS',f:[
    {l:'Location',k:'loc',ph:'Computer Lab Sr / Smart Class...',full:1},
    {l:'Type',k:'type',s:UPS_T},{l:'Mode',k:'mode',s:['Online','Normal']},
    {l:'Brand',k:'brand',ph:'APC / Luminous'},{l:'Model',k:'model',ph:'Model No.'},
    {l:'Serial No.',k:'serial',ph:'Serial No.'},{l:'Purchase Date',k:'pdate',t:'date'},
    {l:'Battery Change Date',k:'bdate',t:'date'},{l:'Placed Area (Sticker)',k:'area',ph:'GF — Server Room'},
  ]},
  equip:{title:'Equipment',f:[
    {l:'Type',k:'type',ph:'EPBAX / Printer / Photocopier'},{l:'Brand / Model',k:'brand',ph:'Panasonic KX-NS700'},
    {l:'Location',k:'loc',ph:'Server Room / Office'},{l:'Serial No.',k:'serial',ph:'Serial No.'},
    {l:'Purchase Date',k:'pdate',t:'date'},{l:'AMC',k:'amc',s:['Yes','No']},
    {l:'Status',k:'status',s:['Functional','Under Repair','Not Working']},{l:'Remarks',k:'remark',ph:'Any notes...'},
  ]},
  office:{title:'Office Item',f:[
    {l:'Department',k:'dept',s:DEPTS},{l:'Room No.',k:'room',ph:'OF-MD1'},
    {l:'Item Type',k:'item',ph:'Desktop PC / Laptop / Printer'},{l:'Brand',k:'brand',ph:'Dell / HP'},
    {l:'Model',k:'model',ph:'Optiplex 3090'},{l:'Serial No.',k:'serial',ph:'Serial No.'},
    {l:'OS',k:'os',s:['Windows 11','Windows 10','Linux','macOS','N/A']},{l:'UPS',k:'ups',ph:'1 KVA / 2 KVA'},
    {l:'Printer',k:'printer',ph:'HP LaserJet / None'},{l:'Internet',k:'internet',s:['Yes','No']},
    {l:'Phone Extension',k:'phone',ph:'Ext 101'},{l:'Status',k:'status',s:['Functional','Under Repair','Not Working']},
    {l:'Remark',k:'remark',ph:'Any notes...',full:1},
  ]},
  maint:{title:'Maintenance Entry',f:[
    {l:'Date',k:'date',t:'date'},{l:'Department',k:'dept',s:MAINT_DEPTS},
    {l:'Item / Location',k:'item',ph:'Computer Lab Sr — PC #5...',full:1},
    {l:'Issue / Problem',k:'issue',ph:'Screen not working...',full:1},
    {l:'Action Taken',k:'action',ph:'Monitor replaced...',full:1},
    {l:'Done By',k:'by',ph:'Rajendra / Vendor name'},{l:'Cost (₹)',k:'cost',t:'number',ph:'0'},
    {l:'Status',k:'status',s:['Resolved','Pending','Under Observation']},{l:'Next Service Date',k:'nextDate',t:'date'},
  ]},
  amc:{title:'AMC Contract',f:[
    {l:'Item / Equipment',k:'item',ph:'CCTV System / Smart Boards...',full:1},
    {l:'Vendor Name',k:'vendor',ph:'Vendor company name'},{l:'Contact No.',k:'contact',ph:'9300XXXXXX'},
    {l:'AMC Start Date',k:'startDate',t:'date'},{l:'AMC End Date',k:'endDate',t:'date'},
    {l:'Amount (₹)',k:'amount',t:'number',ph:'45000'},{l:'Coverage',k:'coverage',s:['Parts+Labour','Labour only','Parts only','Comprehensive']},
    {l:'Visit Frequency',k:'visits',s:['On-call','Monthly','Bi-monthly','Quarterly','Half-yearly','Yearly']},{l:'Remark',k:'remark',ph:'Battery extra / Toner extra...'},
  ]},
};

// ── MODAL ──
function openModal(type, editId){
  const cfg=FORMS[type]; if(!cfg)return;
  const rec=editId!==null?DB[type].find(x=>x.id===editId):null;
  const title=(rec?'Edit ':'Add ')+cfg.title;
  const html=cfg.f.map(f=>{
    const v=rec?(rec[f.k]||''):'';
    const cls='ff'+(f.full?' full':'');
    const inp=f.s
      ?`<select id="fi_${f.k}">${f.s.map(o=>`<option${o===v?' selected':''}>${o}</option>`).join('')}</select>`
      :`<input id="fi_${f.k}" type="${f.t||'text'}" placeholder="${f.ph||''}" value="${v}">`;
    return`<div class="${cls}"><label>${f.l}</label>${inp}</div>`;
  }).join('');
  document.getElementById('modal-inner').innerHTML=`<h3>${title}</h3><div class="form-grid">${html}</div>
    <div class="modal-footer">
      <button class="btn" onclick="closeModal()">Cancel</button>
      <button class="btn btn-primary" onclick="save_('${type}',${JSON.stringify(editId)})">✔ Save</button>
    </div>`;
  document.getElementById('modal-bg').classList.add('open');
}

function closeModal(){document.getElementById('modal-bg').classList.remove('open');}
function gv(k){const e=document.getElementById('fi_'+k);return e?e.value:'';}

function save_(type, editId){
  const cfg=FORMS[type]; if(!cfg)return;
  const obj={};
  cfg.f.forEach(f=>obj[f.k]=gv(f.k));
  if(editId!==null){
    const i=DB[type].findIndex(x=>x.id===editId);
    if(i>-1){obj.id=editId;DB[type][i]=obj;}
  }else{
    obj.id=DB.nids[type]++;
    DB[type].push(obj);
  }
  save();closeModal();render();
}

function del(type,id){
  if(!confirm('Is entry ko delete karna chahte ho?'))return;
  DB[type]=DB[type].filter(x=>x.id!==id);
  save();render();
}

// ── AUTH SYSTEM ──
const DEFAULT_USERS=[
  {username:'admin',   pwd:btoa('dps@2025'), role:'Admin'},
  {username:'principal',pwd:btoa('prin@2025'),role:'Principal'},
  {username:'itstaff', pwd:btoa('it@2025'),  role:'IT Staff'},
];

function getUsers(){
  try{const u=localStorage.getItem('dps_users');return u?JSON.parse(u):DEFAULT_USERS;}
  catch(e){return DEFAULT_USERS;}
}
function saveUsers(users){localStorage.setItem('dps_users',JSON.stringify(users));}
function getCurrentUser(){try{return JSON.parse(sessionStorage.getItem('dps_cu'));}catch(e){return null;}}
function setCurrentUser(u){sessionStorage.setItem('dps_cu',JSON.stringify(u));}

function doLogin(){
  const uname=document.getElementById('li-user').value.trim();
  const pass=document.getElementById('li-pass').value;
  const err=document.getElementById('login-err');
  if(!uname||!pass){err.classList.add('show');err.textContent='❌ Username aur Password dono daalo!';return;}
  const users=getUsers();
  const found=users.find(u=>u.username===uname && u.pwd===btoa(pass));
  if(found){
    setCurrentUser({username:found.username,role:found.role});
    document.getElementById('login-screen').classList.remove('show');
    document.getElementById('badge-name').textContent=found.role+' ('+found.username+')';
    err.classList.remove('show');
    document.getElementById('li-pass').value='';
    applyRoleUI();
    render();
  }else{
    err.classList.add('show');
    err.textContent='❌ Galat Username ya Password — dobara try karo!';
    document.getElementById('li-pass').value='';
    document.getElementById('li-pass').focus();
  }
}

function applyRoleUI(){
  const admin=isAdmin();
  const tabUsers=document.getElementById('tab-users');
  if(tabUsers) tabUsers.style.display=admin?'':'none';
  const menuMgmt=document.getElementById('menu-usermgmt');
  if(menuMgmt) menuMgmt.style.display=admin?'':'none';
}

function doLogout(){
  if(!confirm('Logout karna chahte ho?'))return;
  sessionStorage.removeItem('dps_cu');
  document.getElementById('user-menu').classList.remove('open');
  document.getElementById('li-user').value='';
  document.getElementById('li-pass').value='';
  // Reset tab to overview
  DB.tab='overview';
  document.querySelectorAll('.tab').forEach(x=>x.classList.remove('active'));
  document.querySelector('.tab').classList.add('active');
  document.getElementById('login-screen').classList.add('show');
}

function toggleUserMenu(){
  document.getElementById('user-menu').classList.toggle('open');
}
document.addEventListener('click',function(e){
  const menu=document.getElementById('user-menu');
  const badge=document.getElementById('user-badge');
  if(menu&&badge&&!menu.contains(e.target)&&!badge.contains(e.target))menu.classList.remove('open');
});

function openPwdModal(){
  document.getElementById('user-menu').classList.remove('open');
  document.getElementById('pwd-err').style.display='none';
  document.getElementById('pwd-ok').style.display='none';
  document.getElementById('pw-old').value='';
  document.getElementById('pw-new').value='';
  document.getElementById('pw-con').value='';
  document.getElementById('pwd-modal').classList.add('open');
}
function closePwdModal(){document.getElementById('pwd-modal').classList.remove('open');}

function changePassword(){
  const cu=getCurrentUser();
  const oldP=document.getElementById('pw-old').value;
  const newP=document.getElementById('pw-new').value;
  const conP=document.getElementById('pw-con').value;
  const errEl=document.getElementById('pwd-err');
  const okEl=document.getElementById('pwd-ok');
  errEl.style.display='none'; okEl.style.display='none';
  if(!oldP||!newP||!conP){errEl.textContent='❌ Sab fields bharo!';errEl.style.display='block';return;}
  if(newP.length<6){errEl.textContent='❌ Naya password kam se kam 6 characters ka hona chahiye!';errEl.style.display='block';return;}
  if(newP!==conP){errEl.textContent='❌ Naya password aur confirm password match nahi kar rahe!';errEl.style.display='block';return;}
  const users=getUsers();
  const idx=users.findIndex(u=>u.username===cu.username&&u.pwd===btoa(oldP));
  if(idx===-1){errEl.textContent='❌ Purana password galat hai!';errEl.style.display='block';return;}
  users[idx].pwd=btoa(newP);
  saveUsers(users);
  okEl.textContent='✅ Password successfully change ho gaya!';
  okEl.style.display='block';
  setTimeout(()=>closePwdModal(),1800);
}

// ── CHECK SESSION ON LOAD ──
(function initAuth(){
  const cu=getCurrentUser();
  if(cu){
    document.getElementById('login-screen').classList.remove('show');
    document.getElementById('badge-name').textContent=cu.role+' ('+cu.username+')';
    applyRoleUI();
  } else {
    document.getElementById('login-screen').classList.add('show');
  }
})();

render();

<!-- PWA Install Banner -->
<div id="pwa-banner" style="display:none;position:fixed;bottom:20px;right:20px;background:#0d2e5c;color:#fff;border-radius:12px;padding:14px 18px;box-shadow:0 4px 20px rgba(0,0,0,.3);z-index:999;max-width:300px;font-family:'Segoe UI',Arial,sans-serif">
  <div style="font-size:13px;font-weight:600;margin-bottom:6px">📲 App Install Karo!</div>
  <div style="font-size:11px;opacity:.85;margin-bottom:10px;line-height:1.5">DPS IT Register ko app ki tarah install karo — desktop pe shortcut bana dega, internet ke bina bhi chalega!</div>
  <div style="display:flex;gap:8px">
    <button onclick="installPWA()" style="flex:1;background:#e8a020;color:#fff;border:none;border-radius:7px;padding:7px;font-size:12px;font-weight:600;cursor:pointer;font-family:inherit">✅ Install Karo</button>
    <button onclick="document.getElementById('pwa-banner').style.display='none'" style="background:rgba(255,255,255,.15);color:#fff;border:none;border-radius:7px;padding:7px 10px;font-size:12px;cursor:pointer;font-family:inherit">✕</button>
  </div>
</div>

<!-- PWA Update Banner -->
<div id="pwa-update" style="display:none;position:fixed;bottom:20px;left:20px;background:#166534;color:#fff;border-radius:12px;padding:12px 16px;box-shadow:0 4px 20px rgba(0,0,0,.3);z-index:999;font-family:'Segoe UI',Arial,sans-serif">
  <div style="font-size:12px;font-weight:600;margin-bottom:6px">🔄 Naya Update Available!</div>
  <button onclick="location.reload()" style="background:rgba(255,255,255,.2);color:#fff;border:none;border-radius:6px;padding:5px 12px;font-size:12px;cursor:pointer;font-family:inherit">Refresh Karo</button>
  <button onclick="document.getElementById('pwa-update').style.display='none'" style="background:none;color:rgba(255,255,255,.7);border:none;padding:5px 8px;font-size:12px;cursor:pointer">✕</button>
</div>

<script>
// ── PWA: Service Worker Registration ──
// Only works on HTTPS (GitHub Pages) — not on local file://
let deferredPrompt = null;
const isSecure = location.protocol === 'https:' || location.hostname === 'localhost' || location.hostname === '127.0.0.1';

if ('serviceWorker' in navigator && isSecure) {
  window.addEventListener('load', () => {
    navigator.serviceWorker.register('./service-worker.js')
      .then(reg => {
        console.log('[PWA] Service Worker registered:', reg.scope);
        reg.addEventListener('updatefound', () => {
          const newSW = reg.installing;
          if (!newSW) return;
          newSW.addEventListener('statechange', () => {
            if (newSW.state === 'installed' && navigator.serviceWorker.controller) {
              const upd = document.getElementById('pwa-update');
              if (upd) upd.style.display = 'block';
            }
          });
        });
      })
      .catch(err => console.log('[PWA] SW registration skipped:', err.message));
  });
}

// ── PWA: Install Prompt (only on HTTPS) ──
if (isSecure) {
  window.addEventListener('beforeinstallprompt', e => {
    e.preventDefault();
    deferredPrompt = e;
    setTimeout(() => {
      const banner = document.getElementById('pwa-banner');
      if (banner) banner.style.display = 'block';
    }, 3000);
  });

  window.addEventListener('appinstalled', () => {
    const banner = document.getElementById('pwa-banner');
    if (banner) banner.style.display = 'none';
    deferredPrompt = null;
  });
}

function installPWA() {
  if (!deferredPrompt) {
    alert('Install karne ke liye pehle GitHub Pages pe open karo:\nhttps://dpsjabalpur-it.github.io');
    return;
  }
  deferredPrompt.prompt();
  deferredPrompt.userChoice.then(result => {
    if (result.outcome === 'accepted') {
      const banner = document.getElementById('pwa-banner');
      if (banner) banner.style.display = 'none';
    }
    deferredPrompt = null;
  });
}
</script>
</body>
</html>
