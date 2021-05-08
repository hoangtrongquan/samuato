<%@page import="com.example.demo.module.Product"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.sub-menu {
	position: absolute;
	left: 250px;
	top: 0;
	display: none;
}

.sub-menu {
	position: absolute;
}

.has-cat-mega:hover .sub-menu {
	display: block;
}
</style>
<div id="header">
	<div class="header">
		<div class="top-header top-header4">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 hidden-xs">
						<div class="currency-language currency-language6">
							<div class="language-box">
								<a href="#" class="language-current"><img
									src="images/flag/flag-vn.png" alt="" width="14px" height="11px" /><span>Việt
										Nam</span></a>
							</div>
							<div class="currency-box"></div>
							<div class="address-box">
								<a href="#" class="address-toggle"
									style="align-items: center; display: flex;"><i
									class="fa fa-map-marker" aria-hidden="true"></i></a>
								<ul class="address-list list-unstyled">
									<li>
										<p>
											<a href="https://g.page/sam-auto-care?share" target=“_blank”>Địa
												chỉ: Số 36 đường 35, Phường Linh Đông, Quận Thủ Đức, TP.Hồ
												Chí Minh</a>
										</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="account-login account-login6" style="display: flex;">
							<a href="#"><i class="fa fa-user" aria-hidden="true"></i><span>My
									Account</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Top Header -->
		<div class="main-header6">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-4 col-xs-12">
						<div class="logo logo6">
							<a href="/"><img src="images/Logoden.png" height="50px"
								width="auto"></a>
						</div>
					</div>
					<div class="col-md-9 col-sm-8 col-xs-12">
						<div class="wrap-search-cart6">
							<div class="search-form6">
								<form class="smart-search-form border radius" action="/search"
									method="get">
									<input placeholder="Tìm kiếm theo dòng xe...." type="text"
										name="name">
									<div class="submit-form">
										<input value="" class="radius" type="submit">
									</div>
								</form>
							</div>
							<div class="call-phone-number border radius">
								<strong><a href="tel:+84901659859">0901.659.859</a></strong>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Main Header -->
		<div class="header-nav7">
			<div class="container">
				<div class="row">
					<div class="col-md-3 hidden-sm hidden-xs">
						<div class="wrap-cat-icon wrap-cat-icon-hover wrap-cat-icon6">
							<h2 class="title14 white title-cat-icon">Categories</h2>
							<div class="wrap-list-cat-icon">
								<ul class="list-cat-icon">
									<c:forEach items="${cars}" var="items">
										<li class="has-cat-mega" style="position: relative;"><a>
												<img alt="" src="images/cat-icon/cat1.png"><span>${items.name}</span>
										</a>
											<div class="cat-mega-menu cat-mega-style1">
												<div class="row">
													<div class="col-md-12 col-sm-3">
														<div class="list-cat-mega-menu">
															<ul>
																<c:forEach items="${items.carItems}" var="item1">
																	<li
																		style="width: auto; height: 40px; line-height: 40px; border-bottom: 1px solid #e8e8e8; padding: 0 1em; list-style-type: none;">
																		<a href="/product-list?name=${item1.name}">${item1.name}</a>
																	</li>
																</c:forEach>
															</ul>
														</div>
													</div>
												</div>
											</div></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-9 col-sm-12 col-xs-12">
						<nav class="main-nav main-nav6 main-nav7">
							<ul>
								<li class="menu-item-has-children1"><a href="/">Home</a></li>

								<li class="menu-item-has-children show1"><a href="#">Hãng
										xe</a>
									<ul class="sub-menu">
										<c:forEach items="${cars}" var="item">
											<li class="menu-item-has-children"><a href="#">${item.name}</a>
												<ul class="sub-menu">
													<c:forEach items="${cars[item.id].carItems}" var="item">
														<li class="menu-item-preview"><a
															href="product-list?id=${item.id}">${item.name}</a></li>
													</c:forEach>
												</ul></li>
										</c:forEach>
									</ul></li>
								<li class="has-mega-menu"><a
									href="/product-list-screen?name=S200">S200</a>
									<div class="mega-menu">
										<div class="row">
											<div class="col-md-5 col-sm-4 col-xs-12">
												<div class="mega-adv">
													<div class="banner-image">
														<a href="#"><img
															src="images/Stech-image/stechs200.jpg" alt="" /></a>
													</div>
													<div class="mega-adv-info">
														<h3 class="title18">
															<a href="/product-list-screen?name=S200">Màn hình
																adroid s200</a>
														</h3>
													</div>
												</div>
											</div>
											<div class="col-md-7 col-sm-8 col-xs-12">
												<div class="mega-new-arrival">
													<h2 class="mega-menu-title">Product</h2>
													<div class="mega-new-arrival-slider">
														<div class="wrap-item" data-pagination="false"
															data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
															<c:forEach items="${screens200}" var="item">
																<div class="item">
																	<div class="item-product-ajax item-product">
																		<div class="product-thumb">
																			<a
																				href="/detail?name=${item.name}&&screen=${item.screen.name}"
																				class="product-thumb-link"> <img
																				src="images/Stech-image/${item.img}" alt="">
																			</a>
																		</div>
																		<div class="product-info">
																			<h3 class="product-title">
																				<a
																					href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
																			</h3>
																			<div class="product-price">
																				<ins>
																					<c:set var="balance" value="${item.price}" />
																					<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																							value="${balance}" type="currency"
																							pattern="####,###,###" /> vnd
																					</span>
																				</ins>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div> <!-- End Mega Menu --></li>
								<li class="has-mega-menu"><a
									href="/product-list-screen?name=S400">S400</a>
									<div class="mega-menu">
										<div class="row">
											<div class="col-md-5 col-sm-4 col-xs-12">
												<div class="mega-adv">
													<div class="banner-image">
														<a href="#"><img
															src="images/Stech-image/stechs400.jpg" alt="" /></a>
													</div>
													<div class="mega-adv-info">
														<h3 class="title18">
															<a href="/product-list-screen?name=S400">Màn hình
																android s400</a>
														</h3>
													</div>
												</div>
											</div>
											<div class="col-md-7 col-sm-8 col-xs-12">
												<div class="mega-new-arrival">
													<h2 class="mega-menu-title">Product</h2>
													<div class="mega-new-arrival-slider">
														<div class="wrap-item" data-pagination="false"
															data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
															<c:forEach items="${screenS400}" var="item">
																<div class="item">
																	<div class="item-product-ajax item-product">
																		<div class="product-thumb">
																			<a
																				href="/detail?name=${item.name}&&screen=${item.screen.name}"
																				class="product-thumb-link"> <img
																				src="images/Stech-image/${item.img}" alt="">
																			</a>
																		</div>
																		<div class="product-info">
																			<h3 class="product-title">
																				<a
																					href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
																			</h3>
																			<div class="product-price">
																				<ins>
																					<c:set var="balance" value="${item.price}" />
																					<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																							value="${balance}" type="currency"
																							pattern="####,###,###" /> vnd
																					</span>
																				</ins>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div> <!-- End Mega Menu --></li>
								<li class="has-mega-menu"><a
									href="/product-list-screen?name=S600">S600</a>
									<div class="mega-menu">
										<div class="row">
											<div class="col-md-5 col-sm-4 col-xs-12">
												<div class="mega-adv">
													<div class="banner-image">
														<a href="/product-list-screen?name=S600"><img
															src="images/Stech-image/stechs600.jpg" alt="" /></a>
													</div>
													<div class="mega-adv-info">
														<h3 class="title18">
															<a href="/product-list-screen?name=S600">Màn hình
																android s600</a>
														</h3>
													</div>
												</div>
											</div>
											<div class="col-md-7 col-sm-8 col-xs-12">
												<div class="mega-new-arrival">
													<h2 class="mega-menu-title">Product</h2>
													<div class="mega-new-arrival-slider">
														<div class="wrap-item" data-pagination="false"
															data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
															<c:forEach items="${screenS600}" var="item">
																<div class="item">
																	<div class="item-product-ajax item-product">
																		<div class="product-thumb">
																			<a
																				href="/detail?name=${item.name}&&screen=${item.screen.name}"
																				class="product-thumb-link"> <img
																				src="images/Stech-image/${item.img}" alt="">
																			</a>
																		</div>
																		<div class="product-info">
																			<h3 class="product-title">
																				<a
																					href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
																			</h3>
																			<div class="product-price">
																				<ins>
																					<c:set var="balance" value="${item.price}" />
																					<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																							value="${balance}" type="currency"
																							pattern="####,###,###" /> vnd
																					</span>
																				</ins>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div> <!-- End Mega Menu --></li>
								<li class="has-mega-menu"><a
									href="/product-list-screen?name=S800">S800</a>
									<div class="mega-menu">
										<div class="row">
											<div class="col-md-5 col-sm-4 col-xs-12">
												<div class="mega-adv">
													<div class="banner-image">
														<a href="/product-list-screen?name=S800"><img
															src="images/Stech-image/stechs800.jpg" alt="" /></a>
													</div>
													<div class="mega-adv-info">
														<h3 class="title18">
															<a href="/product-list-screen?name=S800">Màn hình
																android s800</a>
														</h3>
													</div>
												</div>
											</div>
											<div class="col-md-7 col-sm-8 col-xs-12">
												<div class="mega-new-arrival">
													<h2 class="mega-menu-title">Product</h2>
													<div class="mega-new-arrival-slider">
														<div class="wrap-item" data-pagination="false"
															data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
															<c:forEach items="${screenS800}" var="item">
																<div class="item">
																	<div class="item-product-ajax item-product">
																		<div class="product-thumb">
																			<a
																				href="/detail?name=${item.name}&&screen=${item.screen.name}"
																				class="product-thumb-link"> <img
																				src="images/Stech-image/${item.img}" alt="">
																			</a>
																		</div>
																		<div class="product-info">
																			<h3 class="product-title">
																				<a
																					href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
																			</h3>
																			<div class="product-price">
																				<ins>
																					<c:set var="balance" value="${item.price}" />
																					<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																							value="${balance}" type="currency"
																							pattern="####,###,###" /> vnd
																					</span>
																				</ins>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div> <!-- End Mega Menu --></li>
								<li class="has-mega-menu"><a href="/news-list">Tin Tức</a>
									<div class="mega-menu">
										<div class="row">
											<div class="col-md-5 col-sm-4 col-xs-12">
												<div class="mega-adv">
													<div class="banner-image">
														<a href="#"><img src="images/Stech-image/${news2.img}"
															alt="" /></a>
													</div>
													<div class="mega-adv-info">
														<h3 class="title18">
															<a href="/page-news-full?title=${news2.title}">${news2.title}</a>
														</h3>
														<p class="desc"
															style="overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 4; /* number of lines to show */ -webkit-box-orient: vertical;">
															${news2.discFirst}</p>
													</div>
												</div>
											</div>
											<div class="col-md-7 col-sm-8 col-xs-12">
												<div class="mega-new-arrival">
													<h2 class="mega-menu-title">Featured Product</h2>
													<div class="mega-new-arrival-slider">
														<div class="wrap-item" data-pagination="false"
															data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
															<c:forEach items="${news}" var="item">
																<div class="item">
																	<div class="item-product-ajax item-product">
																		<div class="product-thumb">
																			<div class="card">
																				<img class="marg"
																					src="/images/Stech-image/${item.img}"
																					alt="Girl in a jacket" style="border-radius: 5px;">
																				<div class="title marg">${item.title}</div>
																				<div style="display: flex; justify-content: center;">
																					<a href="/page-news-full?title=${item.title}"><button
																							class="custom-btn btn-7 marg">
																							<span>Read More</span>
																						</button></a>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div> <!-- End Mega Menu --></li>
								<li class="has-mega-menu"><a href="/guarantee">Bảo hành
								</a> <!-- End Mega Menu --></li>
								<li class="has-mega-menu"><a href="/agency">Đại lý </a> <!-- End Mega Menu -->
								</li>
							</ul>
							<a href="#" class="toggle-mobile-menu"><span></span></a>
						</nav>
						<!-- End Main Nav -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Header Nav -->
	</div>
	<div class="header-ontop">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-2 col-xs-12">
					<div class="logo">
						<a href="/"><img src="images/Logoden.png" alt=""></a>
					</div>
				</div>
				<div class="col-md-8 col-sm-8 col-xs-12">
					<nav class="main-nav main-nav-ontop">
						<ul>
							<li class="menu-item-has-children1"><a href="/">Home</a></li>
							<li class="menu-item-has-children show1"><a href="#">Hãng
									xe</a>
								<ul class="sub-menu">
									<c:forEach items="${cars}" var="item">
										<li class="menu-item-has-children"><a href="#">${item.name}</a>
											<ul class="sub-menu">
												<c:forEach items="${cars[item.id].carItems}">
												</c:forEach>
												<li class="menu-item-preview"><a
													href="/product-list?name=${item.name}">${item.name}</a></li>

											</ul></li>
									</c:forEach>
								</ul></li>
							<c:forEach items="s" var="item">

							</c:forEach>
							<li class="has-mega-menu"><a
								href="/product-list-screen?name=S200">S200</a>
								<div class="mega-menu">
									<div class="row">
										<div class="col-md-5 col-sm-4 col-xs-12">
											<div class="mega-adv">
												<div class="banner-image">
													<a href="#"><img src="images/Stech-image/stechs200.jpg"
														alt="" /></a>
												</div>
												<div class="mega-adv-info">
													<h3 class="title18">
														<a href="/page-news-full">Màn hình android s200</a>
													</h3>
												</div>
											</div>
										</div>
										<div class="col-md-7 col-sm-8 col-xs-12">
											<div class="mega-new-arrival">
												<h2 class="mega-menu-title">Product</h2>
												<div class="mega-new-arrival-slider">
													<div class="wrap-item" data-pagination="false"
														data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
														<c:forEach items="${screens200}" var="item">
															<div class="item">
																<div class="item-product-ajax item-product">
																	<div class="product-thumb">
																		<a
																			href="/detail?name=${item.name}&&screen=${item.screen.name}"
																			class="product-thumb-link"> <img
																			src="images/Stech-image/${item.img}" alt="">
																		</a>
																	</div>
																	<div class="product-info">
																		<h3 class="product-title">
																			<a
																				href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
																		</h3>
																		<div class="product-price">
																			<ins>
																				<c:set var="balance" value="${item.price}" />
																				<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																						value="${balance}" type="currency"
																						pattern="####,###,###" /> vnd
																				</span>
																			</ins>
																		</div>
																	</div>
																</div>
															</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> <!-- End Mega Menu --></li>
							<li class="has-mega-menu"><a
								href="/product-list-screen?name=S400">S400</a>
								<div class="mega-menu">
									<div class="row">
										<div class="col-md-5 col-sm-4 col-xs-12">
											<div class="mega-adv">
												<div class="banner-image">
													<a href="#"><img src="images/Stech-image/stechs400.jpg"
														alt="" /></a>
												</div>
												<div class="mega-adv-info">
													<h3 class="title18">
														<a href="/page-news-full">Màn hình android s400</a>
													</h3>
												</div>
											</div>
										</div>
										<div class="col-md-7 col-sm-8 col-xs-12">
											<div class="mega-new-arrival">
												<h2 class="mega-menu-title">Product</h2>
												<div class="mega-new-arrival-slider">
													<div class="wrap-item" data-pagination="false"
														data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
														<c:forEach items="${screenS400}" var="item">
															<div class="item">
																<div class="item-product-ajax item-product">
																	<div class="product-thumb">
																		<a
																			href="/detail?name=${item.name}&&screen=${item.screen.name}"
																			class="product-thumb-link"> <img
																			src="images/Stech-image/${item.img}" alt="">
																		</a>
																	</div>
																	<div class="product-info">
																		<h3 class="product-title">
																			<a
																				href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
																		</h3>
																		<div class="product-price">
																			<ins>
																				<c:set var="balance" value="${item.price}" />
																				<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																						value="${balance}" type="currency"
																						pattern="####,###,###" /> vnd
																				</span>
																			</ins>
																		</div>
																	</div>
																</div>
															</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> <!-- End Mega Menu --></li>
							<li class="has-mega-menu"><a
								href="/product-list-screen?name=S600">S600</a>
								<div class="mega-menu">
									<div class="row">
										<div class="col-md-5 col-sm-4 col-xs-12">
											<div class="mega-adv">
												<div class="banner-image">
													<a href="#"><img src="images/Stech-image/stechs600.jpg"
														alt="" /></a>
												</div>
												<div class="mega-adv-info">
													<h3 class="title18">
														<a href="/page-news-full">Màn hình android s600</a>
													</h3>
												</div>
											</div>
										</div>
										<div class="col-md-7 col-sm-8 col-xs-12">
											<div class="mega-new-arrival">
												<h2 class="mega-menu-title">Product</h2>
												<div class="mega-new-arrival-slider">
													<div class="wrap-item" data-pagination="false"
														data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
														<c:forEach items="${screenS600}" var="item">
															<div class="item">
																<div class="item-product-ajax item-product">
																	<div class="product-thumb">
																		<a
																			href="/detail?name=${item.name}&&screen=${item.screen.name}"
																			class="product-thumb-link"> <img
																			src="images/Stech-image/${item.img}" alt="">
																		</a>
																	</div>
																	<div class="product-info">
																		<h3 class="product-title">
																			<a
																				href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
																		</h3>
																		<div class="product-price">
																			<ins>
																				<c:set var="balance" value="${item.price}" />
																				<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																						value="${balance}" type="currency"
																						pattern="####,###,###" /> vnd
																				</span>
																			</ins>
																		</div>
																	</div>
																</div>
															</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> <!-- End Mega Menu --></li>
							<li class="has-mega-menu"><a
								href="/product-list-screen?name=S800">S800</a>
								<div class="mega-menu">
									<div class="row">
										<div class="col-md-5 col-sm-4 col-xs-12">
											<div class="mega-adv">
												<div class="banner-image">
													<a href="#"><img src="images/Stech-image/stechs800.jpg"
														alt="" /></a>
												</div>
												<div class="mega-adv-info">
													<h3 class="title18">
														<a href="/product-list-screen?name=S800">Màn hình
															android s800</a>
													</h3>
												</div>
											</div>
										</div>
										<div class="col-md-7 col-sm-8 col-xs-12">
											<div class="mega-new-arrival">
												<h2 class="mega-menu-title">Product</h2>
												<div class="mega-new-arrival-slider">
													<div class="wrap-item" data-pagination="false"
														data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
														<c:forEach items="${screenS800}" var="item">
															<div class="item">
																<div class="item-product-ajax item-product">
																	<div class="product-thumb">
																		<a
																			href="/detail?name=${item.name}&&screen=${item.screen.name}"
																			class="product-thumb-link"> <img
																			src="images/Stech-image/${item.img}" alt="">
																		</a>
																	</div>
																	<div class="product-info">
																		<h3 class="product-title">
																			<a
																				href="/detail?name=${item.name}&&screen=${item.screen.name}">${item.name}</a>
																		</h3>
																		<div class="product-price">
																			<ins>
																				<c:set var="balance" value="${item.price}" />
																				<span> <fmt:setLocale value="vie" /> <fmt:formatNumber
																						value="${balance}" type="currency"
																						pattern="####,###,###" /> vnd
																				</span>
																			</ins>
																		</div>
																	</div>
																</div>
															</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> <!-- End Mega Menu --></li>
							<li class="has-mega-menu"><a href="/news-list">Tin Tức</a>
								<div class="mega-menu">
									<div class="row">
										<div class="col-md-5 col-sm-4 col-xs-12">
											<div class="mega-adv">
												<div class="banner-image">
													<a href="/page-news-full?title=${news2.title}"><img
														src="images/Stech-image/${news2.img}" alt="" /></a>
												</div>
												<div class="mega-adv-info">
													<h3 class="title18">
														<a href="/page-news-full?title=${news2.title}">${news2.title}</a>
													</h3>
													<p class="desc"
														style="overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 4; /* number of lines to show */ -webkit-box-orient: vertical;">
														${news2.discFirst}</p>
												</div>
											</div>
										</div>
										<div class="col-md-7 col-sm-8 col-xs-12">
											<div class="mega-new-arrival">
												<h2 class="mega-menu-title">Featured Product</h2>
												<div class="mega-new-arrival-slider">
													<div class="wrap-item" data-pagination="false"
														data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
														<c:forEach items="${news}" var="item">
															<div class="item">
																<div class="item-product-ajax item-product">
																	<div class="product-thumb">
																		<div class="card">
																			<img class="marg"
																				src="/images/Stech-image/${item.img}"
																				alt="Girl in a jacket" style="border-radius: 5px;">
																			<div class="title marg">${item.title}</div>
																			<div style="display: flex; justify-content: center;">
																				<a href="/page-news-full?title=${item.title}"><button
																						class="custom-btn btn-7 marg">
																						<span>Read More</span>
																					</button></a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div> <!-- End Mega Menu --></li>
							<li class="has-mega-menu"><a href="/guarantee">Bảo hành
							</a> <!-- End Mega Menu --></li>
							<li class="has-mega-menu"><a href="/agency">Đại lý</a> <!-- End Mega Menu -->
							</li>
						</ul>
					</nav>
					<!-- End Main Nav -->
				</div>
				<div class="col-md-2 col-sm-2 col-xs-12">
					<div class="check-cart check-cart-ontop">
						<div class="checkout-box">
							<ul class="list-checkout list-unstyled">
								<li><a href="#"><i class="fa fa-user"></i> Account Info</a></li>
								<li><a href="#"><i class="fa fa-heart-o"></i> Wish List</a></li>
								<li><a href="#"><i class="fa fa-toggle-on"></i> Compare</a></li>
								<li><a href="#"><i class="fa fa-key" aria-hidden="true"></i>Sign
										in</a></li>
								<li><a href="#"><i class="fa fa-sign-in"></i> Checkout</a></li>
							</ul>
						</div>
						<!-- End Check Out Box -->
						<div class="search-hover-box">
							<a href="#" class="search-hover-link"><i class="fa fa-search"
								aria-hidden="true"></i></a>
							<form class="search-form-hover" action="/search" method="get">
								<input
									onblur="if (this.value=='') this.value = this.defaultValue"
									onfocus="if (this.value==this.defaultValue) this.value = ''"
									value="Search..." type="text" name="name"> <input value=""
									type="hidden">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Header On Top -->
</div>
<!-- End Header -->