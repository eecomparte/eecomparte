<!DOCTYPE html>
<html class="" lang="es">
<head prefix="og: http://ogp.me/ns#">
<meta charset="utf-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="object" property="og:type">
<meta content="GitLab" property="og:site_name">
<meta content="GARANTIAS_PACKAGE.sql · master · ALCSABADELL / Rda_Plsql" property="og:title">
<meta content="Welcome to Gitlab" property="og:description">
<meta content="https://steps.everis.com/git/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="og:image">
<meta content="64" property="og:image:width">
<meta content="64" property="og:image:height">
<meta content="https://steps.everis.com/git/ALCSABADELL/Rda_Plsql/blob/master/GARANTIAS_PACKAGE.sql" property="og:url">
<meta content="summary" property="twitter:card">
<meta content="GARANTIAS_PACKAGE.sql · master · ALCSABADELL / Rda_Plsql" property="twitter:title">
<meta content="Welcome to Gitlab" property="twitter:description">
<meta content="https://steps.everis.com/git/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png" property="twitter:image">

<title>GARANTIAS_PACKAGE.sql · master · ALCSABADELL / Rda_Plsql · GitLab</title>
<meta content="Welcome to Gitlab" name="description">
<link rel="shortcut icon" type="image/png" href="/git/assets/favicon-7901bd695fb93edb07975966062049829afb56cf11511236e61bcf425070e36e.png" id="favicon" data-original-href="/git/assets/favicon-7901bd695fb93edb07975966062049829afb56cf11511236e61bcf425070e36e.png" />
<link rel="stylesheet" media="all" href="/git/assets/application-e9df191d9f0417750d8d3e3d5c894a9e2166a68225e23d62b7fff88e7930bf43.css" />
<link rel="stylesheet" media="print" href="/git/assets/print-c8ff536271f8974b8a9a5f75c0ca25d2b8c1dceb4cff3c01d1603862a0bdcbfc.css" />


<script>
//<![CDATA[
window.gon={};gon.api_version="v4";gon.default_avatar_url="https://steps.everis.com/git/assets/no_avatar-849f9c04a3a0d0cea2424ae97b27447dc64a7dbfae83c036c45b403392f0e8ba.png";gon.max_file_size=10;gon.asset_host=null;gon.webpack_public_path="/git/assets/webpack/";gon.relative_url_root="/git";gon.shortcuts_path="/git/help/shortcuts";gon.user_color_scheme="white";gon.gitlab_url="https://steps.everis.com/git";gon.revision="3c1fdf6";gon.gitlab_logo="/git/assets/gitlab_logo-7ae504fe4f68fdebb3c2034e36621930cd36ea87924c11ff65dbcb8ed50dca58.png";gon.sprite_icons="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg";gon.sprite_file_icons="/git/assets/file_icons-7262fc6897e02f1ceaf8de43dc33afa5e4f9a2067f4f68ef77dcc87946575e9e.svg";gon.emoji_sprites_css_path="/git/assets/emoji_sprites-289eccffb1183c188b630297431be837765d9ff4aed6130cf738586fb307c170.css";gon.test_env=false;gon.suggested_label_colors=["#0033CC","#428BCA","#44AD8E","#A8D695","#5CB85C","#69D100","#004E00","#34495E","#7F8C8D","#A295D6","#5843AD","#8E44AD","#FFECDB","#AD4363","#D10069","#CC0033","#FF0000","#D9534F","#D1D100","#F0AD4E","#AD8D43"];gon.current_user_id=6233;gon.current_username="rmesegue";gon.current_user_fullname="RAMON JOSE MESEGUER IBARRA";gon.current_user_avatar_url=null;
//]]>
</script>
<script src="/git/assets/locale/es/app-4ea8fb6146cf2d12f90c98aa9d185ee9b6ee22a64b21b282f07326e9c9040fe3.js" defer="defer"></script>

<script src="/git/assets/webpack/runtime.7fe6b451.bundle.js" defer="defer"></script>
<script src="/git/assets/webpack/main.4924b3c5.chunk.js" defer="defer"></script>
<script src="/git/assets/webpack/commons~pages.projects~pages.projects.activity~pages.projects.artifacts.browse~pages.projects.artifa~1485fd35.1d5a6728.chunk.js" defer="defer"></script>
<script src="/git/assets/webpack/commons~pages.groups.milestones.edit~pages.groups.milestones.new~pages.projects.blame.show~pages.pro~e382f304.4661c8ac.chunk.js" defer="defer"></script>
<script src="/git/assets/webpack/pages.projects.blob.show.6e106491.chunk.js" defer="defer"></script>
<script>
  window.uploads_path = "/git/ALCSABADELL/Rda_Plsql/uploads";
</script>

<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="bYPddb6uEBp6exup/BJuMINx69Srl1ezkdFYbwxOCLk7eRq5rleU7u+So07AXilLGeEqnvBi7rQiucDe9xaSfQ==" />
<meta content="origin-when-cross-origin" name="referrer">
<meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">
<meta content="#474D57" name="theme-color">
<link rel="apple-touch-icon" type="image/x-icon" href="/git/assets/touch-icon-iphone-5a9cee0e8a51212e70b90c87c12f382c428870c0ff67d1eb034d884b78d2dae7.png" />
<link rel="apple-touch-icon" type="image/x-icon" href="/git/assets/touch-icon-ipad-a6eec6aeb9da138e507593b464fdac213047e49d3093fc30e90d9a995df83ba3.png" sizes="76x76" />
<link rel="apple-touch-icon" type="image/x-icon" href="/git/assets/touch-icon-iphone-retina-72e2aadf86513a56e050e7f0f2355deaa19cc17ed97bbe5147847f2748e5a3e3.png" sizes="120x120" />
<link rel="apple-touch-icon" type="image/x-icon" href="/git/assets/touch-icon-ipad-retina-8ebe416f5313483d9c1bc772b5bbe03ecad52a54eba443e5215a22caed2a16a2.png" sizes="152x152" />
<link color="rgb(226, 67, 41)" href="/git/assets/logo-d36b5212042cebc89b96df4bf6ac24e43db316143e89926c0db839ff694d2de4.svg" rel="mask-icon">
<meta content="/git/assets/msapplication-tile-1196ec67452f618d39cdd85e2e3a542f76574c071051ae7effbfde01710eb17d.png" name="msapplication-TileImage">
<meta content="#30353E" name="msapplication-TileColor">

<script>
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-27960322-14']);
  _gaq.push(['_trackPageview']);
  
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>


</head>

<body class="ui-indigo " data-find-file="/git/ALCSABADELL/Rda_Plsql/find_file/master" data-group="" data-page="projects:blob:show" data-project="Rda_Plsql">


<header class="navbar navbar-gitlab qa-navbar navbar-expand-sm">
<a class="sr-only gl-accessibility" href="#content-body" tabindex="1">Skip to content</a>
<div class="container-fluid">
<div class="header-content">
<div class="title-container">
<h1 class="title">
<a title="Dashboard" id="logo" href="/git/"><img data-src="/git/uploads/-/system/appearance/header_logo/1/global.logo.png" class=" lazy" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" />
</a></h1>
<ul class="list-unstyled navbar-sub-nav">
<li id="nav-projects-dropdown" class="home dropdown header-projects qa-projects-dropdown"><button data-toggle="dropdown" type="button">
Proyectos
<svg class=" caret-down"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#angle-down"></use></svg>
</button>
<div class="dropdown-menu frequent-items-dropdown-menu">
<div class="frequent-items-dropdown-container">
<div class="frequent-items-dropdown-sidebar qa-projects-dropdown-sidebar">
<ul>
<li class=""><a class="qa-your-projects-link" href="/git/dashboard/projects">Tus proyectos
</a></li><li class=""><a href="/git/dashboard/projects/starred">Proyectos favoritos
</a></li><li class=""><a href="/git/explore">Explorar proyectos
</a></li></ul>
</div>
<div class="frequent-items-dropdown-content">
<div data-project-id="3832" data-project-name="Rda_Plsql" data-project-namespace="ALCSABADELL / Rda_Plsql" data-project-web-url="/git/ALCSABADELL/Rda_Plsql" data-user-name="rmesegue" id="js-projects-dropdown"></div>
</div>
</div>

</div>
</li><li id="nav-groups-dropdown" class="home dropdown header-groups qa-groups-dropdown"><button data-toggle="dropdown" type="button">
Groups
<svg class=" caret-down"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#angle-down"></use></svg>
</button>
<div class="dropdown-menu frequent-items-dropdown-menu">
<div class="frequent-items-dropdown-container">
<div class="frequent-items-dropdown-sidebar qa-groups-dropdown-sidebar">
<ul>
<li class=""><a class="qa-your-groups-link" href="/git/dashboard/groups">Tus grupos
</a></li><li class=""><a href="/git/explore/groups">Explore groups
</a></li></ul>
</div>
<div class="frequent-items-dropdown-content">
<div data-user-name="rmesegue" id="js-groups-dropdown"></div>
</div>
</div>

</div>
</li><li class="d-none d-lg-block d-xl-block"><a class="dashboard-shortcuts-activity" title="Actividad" href="/git/dashboard/activity">Actividad
</a></li><li class="d-none d-lg-block d-xl-block"><a class="dashboard-shortcuts-milestones" title="Milestones" href="/git/dashboard/milestones">Milestones
</a></li><li class="d-none d-lg-block d-xl-block"><a class="dashboard-shortcuts-snippets" title="Snippets" href="/git/dashboard/snippets">Snippets
</a></li><li class="header-more dropdown d-lg-none d-xl-none">
<a data-toggle="dropdown" href="#">
More
<svg class=" caret-down"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#angle-down"></use></svg>
</a>
<div class="dropdown-menu">
<ul>
<li class=""><a title="Actividad" href="/git/dashboard/activity">Actividad
</a></li><li class=""><a class="dashboard-shortcuts-milestones" title="Milestones" href="/git/dashboard/milestones">Milestones
</a></li><li class=""><a class="dashboard-shortcuts-snippets" title="Snippets" href="/git/dashboard/snippets">Snippets
</a></li></ul>
</div>
</li>
<li class="hidden">
<a title="Proyectos" class="dashboard-shortcuts-projects" href="/git/dashboard/projects">Proyectos
</a></li>
</ul>

</div>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li class="header-new dropdown">
<a class="header-new-dropdown-toggle has-tooltip qa-new-menu-toggle" title="New..." ref="tooltip" aria-label="New..." data-toggle="dropdown" data-placement="bottom" data-container="body" data-display="static" href="/git/projects/new"><svg class="s16"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#plus-square"></use></svg>
<svg class=" caret-down"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#angle-down"></use></svg>
</a><div class="dropdown-menu dropdown-menu-right">
<ul>
<li class="dropdown-bold-header">
This project
</li>
<li>
<a href="/git/ALCSABADELL/Rda_Plsql/issues/new">Nueva incidencia</a>
</li>
<li>
<a href="/git/ALCSABADELL/Rda_Plsql/merge_requests/new">Nueva solicitud de fusión</a>
</li>
<li class="divider"></li>
<li class="dropdown-bold-header">GitLab</li>
<li>
<a href="/git/snippets/new">Nuevo fragmento de código</a>
</li>
</ul>
</div>
</li>

<li class="nav-item d-none d-sm-none d-md-block m-auto">
<div class="search search-form">
<form class="form-inline" action="/git/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><div class="search-input-container">
<div class="search-input-wrap">
<div class="dropdown" data-url="/git/search/autocomplete">
<input type="search" name="search" id="search" placeholder="Search or jump to…" class="search-input dropdown-menu-toggle no-outline js-search-dashboard-options" spellcheck="false" tabindex="1" autocomplete="off" data-issues-path="/git/dashboard/issues" data-mr-path="/git/dashboard/merge_requests" aria-label="Search or jump to…" />
<button class="hidden js-dropdown-search-toggle" data-toggle="dropdown" type="button"></button>
<div class="dropdown-menu dropdown-select">
<div class="dropdown-content"><ul>
<li class="dropdown-menu-empty-item">
<a>
Loading...
</a>
</li>
</ul>
</div><div class="dropdown-loading"><i aria-hidden="true" data-hidden="true" class="fa fa-spinner fa-spin"></i></div>
</div>
<svg class="s16 search-icon"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#search"></use></svg>
<svg class="s16 clear-icon js-clear-input"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#close"></use></svg>
</div>
</div>
</div>
<input type="hidden" name="group_id" id="group_id" class="js-search-group-options" />
<input type="hidden" name="project_id" id="search_project_id" value="3832" class="js-search-project-options" data-project-path="Rda_Plsql" data-name="Rda_Plsql" data-issues-path="/git/ALCSABADELL/Rda_Plsql/issues" data-mr-path="/git/ALCSABADELL/Rda_Plsql/merge_requests" data-issues-disabled="false" />
<input type="hidden" name="search_code" id="search_code" value="true" />
<input type="hidden" name="repository_ref" id="repository_ref" value="master" />

<div class="search-autocomplete-opts hide" data-autocomplete-path="/git/search/autocomplete" data-autocomplete-project-id="3832" data-autocomplete-project-ref="master"></div>
</form></div>

</li>
<li class="nav-item d-inline-block d-sm-none d-md-none">
<a title="Search" aria-label="Search" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/git/search?project_id=3832"><svg class="s16"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#search"></use></svg>
</a></li>
<li class="user-counter"><a title="Issues" class="dashboard-shortcuts-issues" aria-label="Issues" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/git/dashboard/issues?assignee_id=6233"><svg class="s16"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#issues"></use></svg>
<span class="badge badge-pill hidden issues-count">
0
</span>
</a></li><li class="user-counter"><a title="Merge requests" class="dashboard-shortcuts-merge_requests" aria-label="Merge requests" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/git/dashboard/merge_requests?assignee_id=6233"><svg class="s16"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#git-merge"></use></svg>
<span class="badge badge-pill hidden merge-requests-count">
0
</span>
</a></li><li class="user-counter"><a title="Todos" aria-label="Todos" class="shortcuts-todos" data-toggle="tooltip" data-placement="bottom" data-container="body" href="/git/dashboard/todos"><svg class="s16"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#todo-done"></use></svg>
<span class="badge badge-pill hidden todos-count">
0
</span>
</a></li><li class="nav-item header-user dropdown">
<a class="header-user-dropdown-toggle" data-toggle="dropdown" href="/git/rmesegue"><img width="23" height="23" class="header-user-avatar qa-user-avatar lazy" data-src="/git/assets/no_avatar-849f9c04a3a0d0cea2424ae97b27447dc64a7dbfae83c036c45b403392f0e8ba.png" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" />
<svg class=" caret-down"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#angle-down"></use></svg>
</a><div class="dropdown-menu dropdown-menu-right">
<ul>
<li class="current-user">
<div class="user-name bold">
RAMON JOSE MESEGUER IBARRA
</div>
@rmesegue
</li>
<li class="divider"></li>
<li>
<a class="profile-link" data-user="rmesegue" href="/git/rmesegue">Profile</a>
</li>
<li>
<a href="/git/profile">Settings</a>
</li>
<li>
<a href="/git/help">Help</a>
</li>
<li class="divider"></li>
<li>
<a target="_blank" class="text-nowrap" href="https://about.gitlab.com/contributing">Contribute to GitLab
<svg class="s16"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#external-link"></use></svg>
</a></li>
<li class="divider"></li>

<li>
<a class="sign-out-link" href="/git/users/sign_out">Sign out</a>
</li>
</ul>

</div>
</li>
</ul>
</div>
<button class="navbar-toggler d-block d-sm-none" type="button">
<span class="sr-only">Toggle navigation</span>
<svg class="s12 more-icon js-navbar-toggle-right"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#ellipsis_h"></use></svg>
<svg class="s12 close-icon js-navbar-toggle-left"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#close"></use></svg>
</button>
</div>
</div>
</header>

<div class="layout-page page-with-contextual-sidebar">
<div class="nav-sidebar">
<div class="nav-sidebar-inner-scroll">
<div class="context-header">
<a title="Rda_Plsql" href="/git/ALCSABADELL/Rda_Plsql"><div class="avatar-container s40 project-avatar">
<div class="avatar s40 avatar-tile identicon bg4">R</div>
</div>
<div class="sidebar-context-title">
Rda_Plsql
</div>
</a></div>
<ul class="sidebar-top-level-items">
<li class="home"><a class="shortcuts-project" href="/git/ALCSABADELL/Rda_Plsql"><div class="nav-icon-container">
<svg><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#home"></use></svg>
</div>
<span class="nav-item-name">
Project
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/git/ALCSABADELL/Rda_Plsql"><strong class="fly-out-top-item-name">
Project
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Detalles del Proyecto" class="shortcuts-project" href="/git/ALCSABADELL/Rda_Plsql"><span>Detalles</span>
</a></li><li class=""><a title="Actividad" class="shortcuts-project-activity" href="/git/ALCSABADELL/Rda_Plsql/activity"><span>Actividad</span>
</a></li>
<li class=""><a title="Cycle Analytics" class="shortcuts-project-cycle-analytics" href="/git/ALCSABADELL/Rda_Plsql/cycle_analytics"><span>Cycle Analytics</span>
</a></li></ul>
</li><li class="active"><a class="shortcuts-tree" href="/git/ALCSABADELL/Rda_Plsql/tree/master"><div class="nav-icon-container">
<svg><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#doc-text"></use></svg>
</div>
<span class="nav-item-name">
Repositorio
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item active"><a href="/git/ALCSABADELL/Rda_Plsql/tree/master"><strong class="fly-out-top-item-name">
Repositorio
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class="active"><a href="/git/ALCSABADELL/Rda_Plsql/tree/master">Archivos
</a></li><li class=""><a href="/git/ALCSABADELL/Rda_Plsql/commits/master">Cambios
</a></li><li class=""><a href="/git/ALCSABADELL/Rda_Plsql/branches">Ramas
</a></li><li class=""><a href="/git/ALCSABADELL/Rda_Plsql/tags">Etiquetas
</a></li><li class=""><a href="/git/ALCSABADELL/Rda_Plsql/graphs/master">Contribuidores
</a></li><li class=""><a href="/git/ALCSABADELL/Rda_Plsql/network/master">Graph
</a></li><li class=""><a href="/git/ALCSABADELL/Rda_Plsql/compare?from=master&amp;to=master">Comparar
</a></li><li class=""><a href="/git/ALCSABADELL/Rda_Plsql/graphs/master/charts">Gráficos
</a></li>
</ul>
</li><li class=""><a class="shortcuts-issues" href="/git/ALCSABADELL/Rda_Plsql/issues"><div class="nav-icon-container">
<svg><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#issues"></use></svg>
</div>
<span class="nav-item-name">
Issues
</span>
<span class="badge badge-pill count issue_counter">
0
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/git/ALCSABADELL/Rda_Plsql/issues"><strong class="fly-out-top-item-name">
Issues
</strong>
<span class="badge badge-pill count issue_counter fly-out-badge">
0
</span>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="Issues" href="/git/ALCSABADELL/Rda_Plsql/issues"><span>
List
</span>
</a></li><li class=""><a title="Tablero" href="/git/ALCSABADELL/Rda_Plsql/boards"><span>
Tablero
</span>
</a></li><li class=""><a title="Labels" href="/git/ALCSABADELL/Rda_Plsql/labels"><span>
Labels
</span>
</a></li>
<li class=""><a title="Milestones" class="qa-milestones-link" href="/git/ALCSABADELL/Rda_Plsql/milestones"><span>
Milestones
</span>
</a></li></ul>
</li><li class=""><a class="shortcuts-merge_requests" href="/git/ALCSABADELL/Rda_Plsql/merge_requests"><div class="nav-icon-container">
<svg><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#git-merge"></use></svg>
</div>
<span class="nav-item-name">
Merge Requests
</span>
<span class="badge badge-pill count merge_counter js-merge-counter">
0
</span>
</a><ul class="sidebar-sub-level-items is-fly-out-only">
<li class="fly-out-top-item"><a href="/git/ALCSABADELL/Rda_Plsql/merge_requests"><strong class="fly-out-top-item-name">
Merge Requests
</strong>
<span class="badge badge-pill count merge_counter js-merge-counter fly-out-badge">
0
</span>
</a></li></ul>
</li><li class=""><a class="shortcuts-tree" href="/git/ALCSABADELL/Rda_Plsql/edit"><div class="nav-icon-container">
<svg><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#settings"></use></svg>
</div>
<span class="nav-item-name qa-settings-item">
Configuración
</span>
</a><ul class="sidebar-sub-level-items">
<li class="fly-out-top-item"><a href="/git/ALCSABADELL/Rda_Plsql/edit"><strong class="fly-out-top-item-name">
Configuración
</strong>
</a></li><li class="divider fly-out-top-item"></li>
<li class=""><a title="General" href="/git/ALCSABADELL/Rda_Plsql/edit"><span>
General
</span>
</a></li><li class=""><a title="Miembros" href="/git/ALCSABADELL/Rda_Plsql/project_members"><span>
Miembros
</span>
</a></li><li class=""><a title="Integrations" href="/git/ALCSABADELL/Rda_Plsql/settings/integrations"><span>
Integrations
</span>
</a></li><li class=""><a title="Repositorio" href="/git/ALCSABADELL/Rda_Plsql/settings/repository"><span>
Repositorio
</span>
</a></li>
</ul>
</li><a class="toggle-sidebar-button js-toggle-sidebar" role="button" title="Toggle sidebar" type="button">
<svg class=" icon-angle-double-left"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#angle-double-left"></use></svg>
<svg class=" icon-angle-double-right"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#angle-double-right"></use></svg>
<span class="collapse-text">Collapse sidebar</span>
</a>
<button name="button" type="button" class="close-nav-button"><svg class="s16"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#close"></use></svg>
<span class="collapse-text">Close sidebar</span>
</button>
<li class="hidden">
<a title="Actividad" class="shortcuts-project-activity" href="/git/ALCSABADELL/Rda_Plsql/activity"><span>
Actividad
</span>
</a></li>
<li class="hidden">
<a title="Network" class="shortcuts-network" href="/git/ALCSABADELL/Rda_Plsql/network/master">Graph
</a></li>
<li class="hidden">
<a title="Gráficos" class="shortcuts-repository-charts" href="/git/ALCSABADELL/Rda_Plsql/graphs/master/charts">Gráficos
</a></li>
<li class="hidden">
<a class="shortcuts-new-issue" href="/git/ALCSABADELL/Rda_Plsql/issues/new">Create a new issue
</a></li>
<li class="hidden">
<a title="Cambios" class="shortcuts-commits" href="/git/ALCSABADELL/Rda_Plsql/commits/master">Cambios
</a></li>
<li class="hidden">
<a title="Issue Boards" class="shortcuts-issue-boards" href="/git/ALCSABADELL/Rda_Plsql/boards">Issue Boards</a>
</li>
</ul>
</div>
</div>

<div class="content-wrapper">

<div class="mobile-overlay"></div>
<div class="alert-wrapper">




<nav class="breadcrumbs container-fluid container-limited" role="navigation">
<div class="breadcrumbs-container">
<button name="button" type="button" class="toggle-mobile-nav"><span class="sr-only">Open sidebar</span>
<i aria-hidden="true" data-hidden="true" class="fa fa-bars"></i>
</button><div class="breadcrumbs-links js-title-container">
<ul class="list-unstyled breadcrumbs-list js-breadcrumbs-list">
<li><a class="group-path breadcrumb-item-text js-breadcrumb-item-text " href="/git/ALCSABADELL">ALCSABADELL</a><svg class="s8 breadcrumbs-list-angle"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#angle-right"></use></svg></li> <li><a href="/git/ALCSABADELL/Rda_Plsql"><span class="breadcrumb-item-text js-breadcrumb-item-text">Rda_Plsql</span></a><svg class="s8 breadcrumbs-list-angle"><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#angle-right"></use></svg></li>

<li>
<h2 class="breadcrumbs-sub-title"><a href="/git/ALCSABADELL/Rda_Plsql/blob/master/GARANTIAS_PACKAGE.sql">Repository</a></h2>
</li>
</ul>
</div>

</div>
</nav>

<div class="flash-container flash-container-page">
</div>

</div>
<div class=" ">
<div class="content" id="content-body">
<div class="js-signature-container" data-signatures-path="/git/ALCSABADELL/Rda_Plsql/commits/29022432248b811abfd9b2d58330d13b2903c3bd/signatures"></div>
<div class="container-fluid container-limited">

<div class="tree-holder" id="tree-holder">
<div class="nav-block">
<div class="tree-ref-container">
<div class="tree-ref-holder">
<form class="project-refs-form" action="/git/ALCSABADELL/Rda_Plsql/refs/switch" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="destination" id="destination" value="blob" />
<input type="hidden" name="path" id="path" value="GARANTIAS_PACKAGE.sql" />
<div class="dropdown">
<button class="dropdown-menu-toggle js-project-refs-dropdown qa-branches-select" type="button" data-toggle="dropdown" data-selected="master" data-ref="master" data-refs-url="/git/ALCSABADELL/Rda_Plsql/refs?sort=updated_desc" data-field-name="ref" data-submit-form-on-click="true" data-visit="true"><span class="dropdown-toggle-text ">master</span><i aria-hidden="true" data-hidden="true" class="fa fa-chevron-down"></i></button>
<div class="dropdown-menu dropdown-menu-paging dropdown-menu-selectable git-revision-dropdown qa-branches-dropdown">
<div class="dropdown-page-one">
<div class="dropdown-title"><span>Cambiar rama/etiqueta</span><button class="dropdown-title-button dropdown-menu-close" aria-label="Close" type="button"><i aria-hidden="true" data-hidden="true" class="fa fa-times dropdown-menu-close-icon"></i></button></div>
<div class="dropdown-input"><input type="search" id="" class="dropdown-input-field" placeholder="Buscar ramas y etiquetas" autocomplete="off" /><i aria-hidden="true" data-hidden="true" class="fa fa-search dropdown-input-search"></i><i role="button" aria-hidden="true" data-hidden="true" class="fa fa-times dropdown-input-clear js-dropdown-input-clear"></i></div>
<div class="dropdown-content"></div>
<div class="dropdown-loading"><i aria-hidden="true" data-hidden="true" class="fa fa-spinner fa-spin"></i></div>
</div>
</div>
</div>
</form>
</div>
<ul class="breadcrumb repo-breadcrumb">
<li class="breadcrumb-item">
<a href="/git/ALCSABADELL/Rda_Plsql/tree/master">Rda_Plsql
</a></li>
<li class="breadcrumb-item">
<a href="/git/ALCSABADELL/Rda_Plsql/blob/master/GARANTIAS_PACKAGE.sql"><strong>GARANTIAS_PACKAGE.sql</strong>
</a></li>
</ul>
</div>
<div class="tree-controls">
<a class="btn shortcuts-find-file" rel="nofollow" href="/git/ALCSABADELL/Rda_Plsql/find_file/master"><i aria-hidden="true" data-hidden="true" class="fa fa-search"></i>
<span>Buscar archivo</span>
</a>
<div class="btn-group" role="group"><a class="btn js-blob-blame-link" href="/git/ALCSABADELL/Rda_Plsql/blame/master/GARANTIAS_PACKAGE.sql">Blame</a><a class="btn" href="/git/ALCSABADELL/Rda_Plsql/commits/master/GARANTIAS_PACKAGE.sql">History</a><a class="btn js-data-file-blob-permalink-url" href="/git/ALCSABADELL/Rda_Plsql/blob/edb50440a2a2948fae248506a4b56de2b8de667b/GARANTIAS_PACKAGE.sql">Permalink</a></div>
</div>
</div>

<div class="info-well d-none d-sm-block">
<div class="well-segment">
<ul class="blob-commit-info">
<li class="commit flex-row js-toggle-container" id="commit-29022432">
<div class="avatar-cell d-none d-sm-block">
<a href="/git/maadrien"><img alt="Mariana Adrien&#39;s avatar" src="/git/assets/no_avatar-849f9c04a3a0d0cea2424ae97b27447dc64a7dbfae83c036c45b403392f0e8ba.png" class="avatar s36 d-none d-sm-inline" title="Mariana Adrien" /></a>
</div>
<div class="commit-detail flex-list">
<div class="commit-content qa-commit-content">
<a class="commit-row-message item-title" href="/git/ALCSABADELL/Rda_Plsql/commit/29022432248b811abfd9b2d58330d13b2903c3bd">Actualización scripts</a>
<span class="commit-row-message d-block d-sm-none">
&middot;
29022432
</span>
<div class="commiter">
<a class="commit-author-link" href="/git/maadrien">Mariana Adrien</a> authored <time class="js-timeago" title="14 de octubre de 2019 08:25" datetime="2019-10-14T08:25:58Z" data-toggle="tooltip" data-placement="bottom" data-container="body">oct 14, 2019</time>
</div>
</div>
<div class="commit-actions flex-row d-none d-sm-flex">

<div class="js-commit-pipeline-status" data-endpoint="/git/ALCSABADELL/Rda_Plsql/commit/29022432248b811abfd9b2d58330d13b2903c3bd/pipelines?ref=master"></div>
<div class="commit-sha-group">
<div class="label label-monospace">
29022432
</div>
<button class="btn btn btn-default" data-toggle="tooltip" data-placement="bottom" data-container="body" data-title="Copiar SHA del cambio al portapapeles" data-class="btn btn-default" data-clipboard-text="29022432248b811abfd9b2d58330d13b2903c3bd" type="button" title="Copiar SHA del cambio al portapapeles" aria-label="Copiar SHA del cambio al portapapeles"><svg><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#duplicate"></use></svg></button>

</div>
</div>
</div>
</li>

</ul>
</div>


</div>
<div class="blob-content-holder" id="blob-content-holder">
<article class="file-holder">
<div class="js-file-title file-title-flex-parent">
<div class="file-header-content">
<i aria-hidden="true" data-hidden="true" class="fa fa-file-text-o fa-fw"></i>
<strong class="file-title-name">
GARANTIAS_PACKAGE.sql
</strong>
<button class="btn btn-clipboard btn-transparent prepend-left-5" data-toggle="tooltip" data-placement="bottom" data-container="body" data-class="btn-clipboard btn-transparent prepend-left-5" data-title="Copy file path to clipboard" data-clipboard-text="{&quot;text&quot;:&quot;GARANTIAS_PACKAGE.sql&quot;,&quot;gfm&quot;:&quot;`GARANTIAS_PACKAGE.sql`&quot;}" type="button" title="Copy file path to clipboard" aria-label="Copy file path to clipboard"><svg><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#duplicate"></use></svg></button>
<small>
10 KB
</small>
</div>

<div class="file-actions">

<div class="btn-group" role="group"><button class="btn btn btn-sm js-copy-blob-source-btn" data-toggle="tooltip" data-placement="bottom" data-container="body" data-class="btn btn-sm js-copy-blob-source-btn" data-title="Copy source to clipboard" data-clipboard-target=".blob-content[data-blob-id=&#39;e763d45a932eca633161b38f77910589bb222ef0&#39;]" type="button" title="Copy source to clipboard" aria-label="Copy source to clipboard"><svg><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#duplicate"></use></svg></button><a class="btn btn-sm has-tooltip" target="_blank" rel="noopener noreferrer" title="Open raw" data-container="body" href="/git/ALCSABADELL/Rda_Plsql/raw/master/GARANTIAS_PACKAGE.sql"><i aria-hidden="true" data-hidden="true" class="fa fa-file-code-o"></i></a><a download="GARANTIAS_PACKAGE.sql" class="btn btn-sm has-tooltip" target="_blank" rel="noopener noreferrer" title="Download" data-container="body" href="/git/ALCSABADELL/Rda_Plsql/raw/master/GARANTIAS_PACKAGE.sql?inline=false"><svg><use xlink:href="/git/assets/icons-8887803ae40f1ee57a8952b5e3b080213a686e327d4d971d8e532c862b79990b.svg#download"></use></svg></a></div>
<div class="btn-group" role="group"><a class="btn js-edit-blob  btn-sm" href="/git/ALCSABADELL/Rda_Plsql/edit/master/GARANTIAS_PACKAGE.sql">Editar</a><a class="btn btn-default btn-sm" href="/git/-/ide/project/ALCSABADELL/Rda_Plsql/edit/master/-/GARANTIAS_PACKAGE.sql">Web IDE</a><button name="button" type="submit" class="btn btn-default" data-target="#modal-upload-blob" data-toggle="modal">Replace</button><button name="button" type="submit" class="btn btn-remove" data-target="#modal-remove-blob" data-toggle="modal">Delete</button></div>
</div>
</div>
<div class="js-file-fork-suggestion-section file-fork-suggestion hidden">
<span class="file-fork-suggestion-note">
You're not allowed to
<span class="js-file-fork-suggestion-section-action">
edit
</span>
files in this project directly. Please fork this project,
make your changes there, and submit a merge request.
</span>
<a class="js-fork-suggestion-button btn btn-grouped btn-inverted btn-new" rel="nofollow" data-method="post" href="/git/ALCSABADELL/Rda_Plsql/blob/master/GARANTIAS_PACKAGE.sql">Fork</a>
<button class="js-cancel-fork-suggestion-button btn btn-grouped" type="button">
Cancel
</button>
</div>



<div class="blob-viewer" data-type="simple" data-url="/git/ALCSABADELL/Rda_Plsql/blob/master/GARANTIAS_PACKAGE.sql?format=json&amp;viewer=simple">
<div class="text-center prepend-top-default append-bottom-default">
<i aria-hidden="true" aria-label="Loading content…" class="fa fa-spinner fa-spin fa-2x"></i>
</div>

</div>


</article>
</div>

<div class="modal" id="modal-remove-blob">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<h3 class="page-title">Delete GARANTIAS_PACKAGE.sql</h3>
<button aria-label="Cerrar" class="close" data-dismiss="modal" type="button">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form class="js-delete-blob-form js-quick-submit js-requires-input" action="/git/ALCSABADELL/Rda_Plsql/blob/master/GARANTIAS_PACKAGE.sql" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="delete" /><input type="hidden" name="authenticity_token" value="PPn+7NTvpwt1toKkYdyOhBVqWyskKl+OOaSXQNil1ClqAzkgxBYj/+BfOkNdkMn/j/qaYX/f5omKzA/xI/1O7Q==" /><div class="form-group row commit_message-group">
<label class="col-form-label col-sm-2" for="commit_message-f20de44c1d4676523cb4b3dd4ef6ef11">Mensaje del cambio
</label><div class="col-sm-10">
<div class="commit-message-container">
<div class="max-width-marker"></div>
<textarea name="commit_message" id="commit_message-f20de44c1d4676523cb4b3dd4ef6ef11" class="form-control js-commit-message" placeholder="Delete GARANTIAS_PACKAGE.sql" required="required" rows="3">
Delete GARANTIAS_PACKAGE.sql</textarea>
</div>
</div>
</div>

<div class="form-group row branch">
<label class="col-form-label col-sm-2" for="branch_name">Rama de destino</label>
<div class="col-sm-10">
<input type="text" name="branch_name" id="branch_name" value="master" required="required" class="form-control js-branch-name ref-name" />
<div class="js-create-merge-request-container">
<div class="form-check prepend-top-8">
<input type="checkbox" name="create_merge_request" id="create_merge_request-a65222f8465c8bba69a3c05c63df18c5" value="1" class="js-create-merge-request form-check-input" checked="checked" />
<label class="form-check-label" for="create_merge_request-a65222f8465c8bba69a3c05c63df18c5">Iniciar una <strong>nueva solicitud de fusión</strong> con estos cambios
</label></div>

</div>
</div>
</div>
<input type="hidden" name="original_branch" id="original_branch" value="master" class="js-original-branch" />

<div class="form-group row">
<div class="offset-sm-2 col-sm-10">
<button name="button" type="submit" class="btn btn-remove btn-remove-file">Delete file</button>
<a class="btn btn-cancel" data-dismiss="modal" href="#">Cancel</a>
</div>
</div>
</form></div>
</div>
</div>
</div>

<div class="modal" id="modal-upload-blob">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<h3 class="page-title">Replace GARANTIAS_PACKAGE.sql</h3>
<button aria-label="Cerrar" class="close" data-dismiss="modal" type="button">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form class="js-quick-submit js-upload-blob-form" data-method="put" action="/git/ALCSABADELL/Rda_Plsql/update/master/GARANTIAS_PACKAGE.sql" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="xsFqf/xv6NJI99k/MxMIcq2bif9ygZ68fw08W+5C4a+QO62z7JZsJt0eYdgPX08JNwtItSl0J7vMZaTqFRp7aw==" /><div class="dropzone">
<div class="dropzone-previews blob-upload-dropzone-previews">
<p class="dz-message light">
Adjunte un archivo arrastrando &amp; soltando o <a class="markdown-selector" href="#">Hacer clic para subir</a>
</p>
</div>
</div>
<br>
<div class="dropzone-alerts alert alert-danger data" style="display:none"></div>
<div class="form-group row commit_message-group">
<label class="col-form-label col-sm-2" for="commit_message-fd24e41210fdf0c793590c94666944e2">Mensaje del cambio
</label><div class="col-sm-10">
<div class="commit-message-container">
<div class="max-width-marker"></div>
<textarea name="commit_message" id="commit_message-fd24e41210fdf0c793590c94666944e2" class="form-control js-commit-message" placeholder="Replace GARANTIAS_PACKAGE.sql" required="required" rows="3">
Replace GARANTIAS_PACKAGE.sql</textarea>
</div>
</div>
</div>

<div class="form-group row branch">
<label class="col-form-label col-sm-2" for="branch_name">Rama de destino</label>
<div class="col-sm-10">
<input type="text" name="branch_name" id="branch_name" value="master" required="required" class="form-control js-branch-name ref-name" />
<div class="js-create-merge-request-container">
<div class="form-check prepend-top-8">
<input type="checkbox" name="create_merge_request" id="create_merge_request-a063f8ddf8c0b83c557b7936a7405bcc" value="1" class="js-create-merge-request form-check-input" checked="checked" />
<label class="form-check-label" for="create_merge_request-a063f8ddf8c0b83c557b7936a7405bcc">Iniciar una <strong>nueva solicitud de fusión</strong> con estos cambios
</label></div>

</div>
</div>
</div>
<input type="hidden" name="original_branch" id="original_branch" value="master" class="js-original-branch" />

<div class="form-actions">
<button name="button" type="button" class="btn btn-create btn-upload-file" id="submit-all"><i aria-hidden="true" data-hidden="true" class="fa fa-spin fa-spinner js-loading-icon hidden"></i>
Replace file
</button><a class="btn btn-cancel" data-dismiss="modal" href="#">Cancelar</a>

</div>
</form></div>
</div>
</div>
</div>

</div>
</div>

</div>
</div>
</div>
</div>


</body>
</html>

