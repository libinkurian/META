<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DataController;
use App\Http\Controllers\HotelController;
use App\Http\Controllers\RoomsController;
use App\Http\Controllers\FecilitController;
use App\Http\Controllers\SitedescriptionController;
use App\Http\Controllers\WishlistController;
use App\Http\Controllers\CouponsController;
use App\Http\Controllers\ExtraController;
use App\Http\Controllers\ExtraitemsController;
use App\Http\Controllers\ExtraavailabilityController;
use App\Http\Controllers\ExtradescriptionController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\CampaignsController;
use App\Http\Controllers\CountriesController;
use App\Http\Controllers\CurrenciesController;
use App\Http\Controllers\CustomersController;
use App\Http\Controllers\GalleryalbumsController;
use App\Http\Controllers\HotelslocationsController;
use App\Http\Controllers\MenusController;
use App\Http\Controllers\ModulesController;
use App\Http\Controllers\PackagesController;
use App\Http\Controllers\RatesController;
use App\Http\Controllers\ReviewsController;
use App\Http\Controllers\RolesController;
use App\Http\Controllers\StatesController;
use App\Http\Controllers\PrivilagesController;
use App\Http\Controllers\RoombedsController;
use App\Http\Controllers\RoomfacilitiesController;
use App\Http\Controllers\RoombathroomController;
use App\Http\Controllers\RoomphotosController;
use App\Http\Controllers\RoomdescriptionController;
use App\Http\Controllers\PoliciesController;
use App\Http\Controllers\RatelistController;
use App\Http\Controllers\MarketcurrenciesController;
use App\Http\Controllers\RoomservicesController;
use App\Http\Controllers\OffersController;
use App\Http\Controllers\OfferdstayController;
use App\Http\Controllers\OfferdcheckinController;
use App\Http\Controllers\OfferdcheckoutController;
use App\Http\Controllers\OfferdreserveController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\RoomController;
use App\Http\Controllers\BathroomController;
use App\Http\Controllers\BoardController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
    Route::post('/register',[UserController::class, 'register']);
    Route::post('/login',[UserController::class, 'authenticate']);
    Route::get('/open',[DataController::class,'open']);

    Route::group(['middleware' => ['jwt.verify']], function() {
        Route::post('logout',[UserController::class, 'logout']);
        Route::get('user',[UserController::class, 'getAuthenticatedUser']);
        Route::get('closed',[DataController::class, 'closed']);

        Route::post('addhotels',[HotelController::class, 'store']);
        Route::get('hotels',[HotelController::class, 'listhotels']);

       // Route::post('rooms/{id}',[RoomsController::class, 'addrooms']);
       // Route::get('rooms/{id}',[RoomsController::class, 'listrooms']);
        
         Route::post('rooms/{id}',[RoomsController::class, 'addrooms']);
        Route::get('rooms/{id}',[RoomsController::class, 'listrooms']);


        Route::post('addroomtypes/{id}',[RoomController::class, 'storeroomtypes']);
        Route::get('roomtypes/{id}',[RoomController::class, 'listroomstypes']);

         Route::post('addfecilities',[FecilitController::class, 'store']);
       // Route::get('fecilities',[FecilitController::class, 'listfecilities']);
        Route::get('facilities/{id}',[FecilitController::class, 'listfecilities']);
        Route::get('customfacilities/{id}',[FecilitController::class, 'hotel_listfecilities']);
        Route::post('customfacilities/{id}',[FecilitController::class, 'addhotelfacilities']);

        Route::post('addfecilities/description',[FecilitController::class, 'addfecilitiesdescription']);
        Route::get('fecilities/description',[FecilitController::class, 'listfecilitiesdescription']);

        Route::post('addsite/description',[SitedescriptionController::class, 'addsitedescription']);
        Route::get('site/description',[SitedescriptionController::class, 'listsitedescription']);
    
        //Route::post('roombeds/{id}',[RoombedsController::class, 'addroombeds']);
        Route::post('roombeds',[RoombedsController::class, 'addroombeds']);
        Route::get('roombeds/{id}',[RoombedsController::class, 'listroombeds']);

        Route::post('roomfacilities',[RoomfacilitiesController::class, 'addroomfacilities']);
        Route::get('roomfacilities/{id}',[RoomfacilitiesController::class, 'listroomfacilities']);
         Route::get('roomfacilitiesall/{id}',[RoomfacilitiesController::class, 'listroomfacilitiesall']);

        Route::post('roombathrooms/{id}',[RoombathroomController::class, 'addroombathroom']);
        Route::get('roombathrooms/{id}',[RoombathroomController::class, 'listroombathroom']);
        
        Route::get('bathroomfacilities/{id}',[BathroomController::class, 'listbathrooms']);
         Route::post('addcustombathroomfacility/{id}',[BathroomController::class, 'addcustomfecility']);
         Route::post('addroombathroomfacility',[RoomsController::class, 'addroombathfacilities']);
         
         
        
        Route::get('boards',[BoardController::class, 'listBoards']);

        Route::post('roomphotos/{id}',[RoomphotosController::class, 'addroomphotos']);
        Route::get('roomphotos/{id}',[RoomphotosController::class, 'listroomphotos']);

        Route::post('roomdescription/{id}',[RoomdescriptionController::class, 'addroomdescription']);
        Route::get('roomdescription/{id}',[RoomdescriptionController::class, 'listroomdescription']);

        Route::post('policies',[PoliciesController::class, 'addpolicies']);
        Route::get('policies',[PoliciesController::class, 'listpolicies']);

        Route::post('ratelist/{id}',[RatelistController::class, 'addratelist']);
        Route::post('rateupdate',[RatelistController::class, 'updateratelist']);
        Route::post('deleterate/{id}',[RatelistController::class, 'deleterate']);
        Route::get('ratelist/{id}',[RatelistController::class, 'listratelist']);

        Route::post('marketcurrencies',[MarketcurrenciesController::class, 'addmarketcurrencies']);
        Route::get('marketcurrencies',[MarketcurrenciesController::class, 'listmarketcurrencies']);
        
        
        
        Route::get('listservices/{id}',[RoomservicesController::class, 'listservices']);

        Route::post('addroomservices',[RoomservicesController::class, 'addroomservices']);
        Route::get('listhotelservices/{id}',[RoomservicesController::class, 'listhotelservices']);

        Route::post('offers/{id}',[OffersController::class, 'addoffer']);
        Route::get('offers/{id}',[OffersController::class, 'listoffer']);

        Route::post('offerdstays',[OfferdstayController::class, 'addofferdstays']);
        Route::get('offerdstays',[OfferdstayController::class, 'listofferdstays']);

        Route::post('offerdcheckin',[OfferdcheckinController::class, 'addofferdcheckin']);
        Route::get('offerdcheckin',[OfferdcheckinController::class, 'listofferdcheckin']);

        Route::post('offerdcheckout',[OfferdcheckoutController::class, 'addofferdcheckout']);
        Route::get('offerdcheckout',[OfferdcheckoutController::class, 'listofferdcheckout']);

        Route::post('offerdreserve',[OfferdreserveController::class, 'addofferdreserve']);
        Route::get('offerdreserve',[OfferdreserveController::class, 'listofferdreserve']);

        Route::post('addroomprices',[RoomController::class, 'addroomprices']);
        Route::get('roomprices',[RoomController::class, 'listroomprices']);

        Route::post('roomsavailability',[RoomController::class, 'addroomsavailability']);
        Route::get('roomsavailability',[RoomController::class, 'listroomavailability']);

        Route::post('addwishlist',[WishlistController::class, 'addwishlist']);
        Route::get('wishlist',[WishlistController::class, 'wishlist']);

        Route::get('coupons',[CouponsController::class, 'coupons']);
        Route::post('coupons',[CouponsController::class, 'addcoupons']);

        Route::get('extra',[ExtraController::class, 'extra']);
        Route::post('extra',[ExtraController::class, 'store']);

        Route::get('extraitems/{id}',[ExtraitemsController::class, 'listextra']);
        Route::post('extraitems/{id}',[ExtraitemsController::class, 'addextra']);
         Route::post('updateextraitems/{id}',[ExtraitemsController::class, 'addextra']);

        Route::get('extraavailability',[ExtraavailabilityController::class, 'extraavailability']);
        Route::post('extraavailability',[ExtraavailabilityController::class, 'addextraavailability']);

        Route::get('extradescription',[ExtradescriptionController::class, 'extradescription']);
        Route::post('extradescription',[ExtradescriptionController::class, 'addextradescription']);

        Route::get('banners',[BannerController::class, 'banners']);
        Route::post('banner',[BannerController::class, 'addbanner']);

        Route::get('bannerdescription',[BannerController::class, 'bannerdescription']);
        Route::post('add/bannerdescription',[BannerController::class, 'addbannerdescription']);

        Route::get('bookings',[BookingController::class, 'bookings']);
        Route::post('bookings',[BookingController::class, 'addbookings']);

        Route::get('bookingrooms',[BookingController::class, 'bookingrooms']);
        Route::post('bookingrooms',[BookingController::class, 'addbookingrooms']);

        Route::get('campaigns',[CampaignsController::class, 'campaigns']);
        Route::post('campaigns',[CampaignsController::class, 'addcampaigns']);

        Route::get('comments',[CampaignsController::class, 'comments']);
        Route::post('comments',[CampaignsController::class, 'addcomments']);

        Route::get('countries',[CountriesController::class, 'countries']);
        Route::post('country',[CountriesController::class, 'addcountry']);

        Route::get('countries/description',[CountriesController::class, 'countriesdescription']);
        Route::post('country/description',[CountriesController::class, 'addcountrydescription']);

        Route::get('currencies',[CurrenciesController::class, 'listcurrencies']);
        Route::post('currencies',[CurrenciesController::class, 'currencies']);

        Route::get('customers',[CustomersController::class, 'customers']);
        Route::post('customers',[CustomersController::class, 'addcustomers']);

        Route::get('customer/groups',[CustomersController::class, 'customergroups']);
        Route::post('customer/groups',[CustomersController::class, 'addcustomergroups']);

        Route::get('galleryalbums',[GalleryalbumsController::class, 'galleryalbums']);
        Route::post('galleryalbums',[GalleryalbumsController::class, 'addgalleryalbums']);

        Route::get('galleryalbums/description',[GalleryalbumsController::class, 'galleryalbumsdescription']);
        Route::post('galleryalbums/description',[GalleryalbumsController::class, 'addgalleryalbumsdescription']);

        Route::get('galleryalbum/items',[GalleryalbumsController::class, 'galleryalbumitems']);
        Route::post('galleryalbum/items',[GalleryalbumsController::class, 'addgalleryalbumitems']);

        Route::get('galleryalbum/items/description',[GalleryalbumsController::class, 'galleryalbumitemsdescription']);
        Route::post('galleryalbum/items/description',[GalleryalbumsController::class, 'addgalleryalbumitemsdescription']);

        Route::get('hotelslocations',[HotelslocationsController::class, 'hotelslocations']);
        Route::post('hotelslocations',[HotelslocationsController::class, 'addhotelslocations']);

        Route::get('hotelslocations/description',[HotelslocationsController::class, 'hotelslocationsdescription']);
        Route::post('hotelslocations/description',[HotelslocationsController::class, 'addhotelslocationsdescription']);

        Route::get('hotelspropertytypes',[HotelController::class, 'hotelspropertytypes']);
        Route::post('hotelspropertytypes',[HotelController::class, 'addhotelspropertytypes']);

        Route::get('hotelsproperty/description',[HotelController::class, 'hotelspropertydescription']);
        Route::post('hotelsproperty/description',[HotelController::class, 'addhotelspropertydescription']);

        Route::get('hotelimages',[HotelController::class, 'hotelimages']);
        Route::post('hotelimages',[HotelController::class, 'addhotelimages']);

        Route::get('menus',[MenusController::class, 'listmenus']);
        Route::post('menus',[MenusController::class, 'menus']);

        Route::get('mealplans',[MenusController::class, 'listmenuplans']);
        Route::post('mealplans',[MenusController::class, 'mealplans']);

        Route::get('mealplans/description',[MenusController::class, 'listmenuplansdescription']);
        Route::post('mealplans/description',[MenusController::class, 'mealplansdescription']);

        Route::get('modules',[ModulesController::class, 'listmodules']);
        Route::post('module',[ModulesController::class, 'module']);

        Route::get('modules/settings',[ModulesController::class, 'listmodulesettings']);
        Route::post('modules/settings',[ModulesController::class, 'addmodulesettings']);

        Route::get('packages',[PackagesController::class, 'listpackages']);
        Route::post('package',[PackagesController::class, 'package']);

        Route::get('rates',[RatesController::class, 'listrates']);
        Route::post('rate',[RatesController::class, 'rate']);

        Route::get('reviews',[ReviewsController::class, 'listreviews']);
        Route::post('reviews',[ReviewsController::class, 'addreviews']);

        Route::get('roles',[RolesController::class, 'listroles']);
        Route::post('role',[RolesController::class, 'role']);

        Route::get('states',[StatesController::class, 'liststates']);
        Route::post('state',[StatesController::class, 'addstate']);

        Route::get('role/privilages',[RolesController::class, 'listroleprivilages']);
        Route::post('role/privilages',[RolesController::class, 'roleprivilages']);

        Route::get('privilages',[PrivilagesController::class, 'listprivilages']);
        Route::post('privilage',[PrivilagesController::class, 'privilage']);

        Route::get('news',[NewsController::class, 'listnews']);
        Route::post('news',[NewsController::class, 'addnews']);

        Route::get('news/subscription',[NewsController::class, 'listnewssubscribtion']);
        Route::post('news/subscription',[NewsController::class, 'addnewssubscribtion']);
    });