import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;

import 'package:angular_router/angular_router.dart';
import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:app/src/app.dart';

import 'package:app/src/core/dime_process_service.dart';
//Notifications
import 'package:app/src/notification/notification_component.dart';
//Login
import 'package:app/src/login/Login.dart' as login;
import 'package:app/src/core/DIMEComponent.dart' as dime;

//Data
import 'package:app/src/data/Data.dart' as Data;
import 'package:app/src/models/FileReference.dart';
import 'package:app/src/filesupport/fileuploader.dart';
import 'package:app/src/filesupport/fileselect.dart';
import 'package:app/src/models/Selectives.dart';
import 'package:app/src/models/Todos.dart';
//Directives
import 'package:app/src/directives/MaxLength.dart';
import 'package:app/src/directives/DimeCustomeAttributes.dart';

//Import Services
import 'package:app/src/services/UserPrivateHomeConcreteUserx1Service.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:markdown/markdown.dart' as markdown;
import 'package:app/src/modal/Modal.dart' as modal;
//Panel
import 'package:app/src/panel/Panel.dart' as panel;

//file guard imports
//special element imports
//table component imports
//form component imports
//GUI plug in component imports
//GUI SIB imports
import 'package:app/src/gui/BillaB5YkYE_DEeyfcbT8Jtm1bw.dart';
//Embedded process SIB imports

import 'dart:js' as js;
import 'package:app/src/core/AbstractRoutes.dart';

@Component(
  selector: "privatehome-tag",
  providers: const [ClassProvider(UserPrivateHomeConcreteUserx1Service)],
  pipes: const [commonPipes,SecondsPipe],
  encapsulation: ViewEncapsulation.None,
  exports: const [
  	Data.DataCastUtil
  ],
  directives: const [
  coreDirectives,panel.Panel,modal.Modal,DimeCustomeAttributes,formDirectives,FileSelect,routerDirectives,MaxLength,login.Login,SafeInnerHtmlDirective,
  BillaB5YkYE_DEeyfcbT8Jtm1bw,
  ],
  templateUrl: 'PrivateHomeaNGHA8F4TEear0NzybbrMtw.html'
)

class PrivateHomeaNGHA8F4TEear0NzybbrMtw extends dime.DIMEComponent implements OnInit, OnDestroy, AfterViewInit {
  
  	// common declarations
  	bool refresh;
  	@Input()
  	bool ismajorpage = false;
  	@Input()
  	String currentbranch;
  	@Input()
  	bool modalDialog = false;
  	ChangeDetectorRef cdr;
  	@Input()
  	String runtimeId;
  	@Input()
  	String guiId;
  	final Router router;
  	final DIMEProcessService processService;
  	final DomSanitizationService domSanitizationService; 
  	UserPrivateHomeConcreteUserx1Service userPrivateHomeConcreteUserx1Service;
  	// component Default Declaration
  	// table refresh flags
  	/// GUI Bill
  	@ViewChildren(BillaB5YkYE_DEeyfcbT8Jtm1bw)
  	List<BillaB5YkYE_DEeyfcbT8Jtm1bw> componentSIBa2_45_TDgFBJEeyfcbT8Jtm1bw;
  	
  	
  	
  	
  	
  	
  	@ViewChildren(modal.Modal)
  	List<modal.Modal> modals;
  	bool hasToSignIn;
	bool showLogin = false;
	//DATA CONTEXT
	//ConcreteUser currentUser
		Data.ConcreteUser currentUser;
	
	bool isDestroyed = true;
  
	PrivateHomeaNGHA8F4TEear0NzybbrMtw(DIMEProcessService this.processService, Router this.router,DomSanitizationService this.domSanitizationService,AbstractRoutes routes,UserPrivateHomeConcreteUserx1Service this.userPrivateHomeConcreteUserx1Service
	) : super(domSanitizationService,processService,routes)
	{
		restartComponent();
	}
	
	void restartComponent() {
		
		this.hasToSignIn = false;
		
		//DATA CONTEXT
		// ConcreteUser currentUser
		this.currentUser = null;
						
						
		
			  	
			
		/// GUI Bill
		if(componentSIBa2_45_TDgFBJEeyfcbT8Jtm1bw!=null) {
			componentSIBa2_45_TDgFBJEeyfcbT8Jtm1bw.forEach((n)=>n.restartComponent());
		}
		updateImageHash();
	}
	
	void updateWithoutInputs({bool updateHidden:true}) {
		modals.forEach((m)=>m.close());
		if(updateHidden) {
		}
		componentSIBa2_45_TDgFBJEeyfcbT8Jtm1bw.forEach((n)=>n.updateWithoutInputs());
		updateImageHash();
	}
	
	void updateInputs(
	)
	{
		
		updateWithoutInputs(updateHidden:false);
		this.loadCurrentUser();
	}
	
	
	@override
	void ngOnInit() async
	{
		this.loadCurrentUser();
		initializeDateFormatting(html.window.navigator.language,null).then((_)=>Intl.defaultLocale = html.window.navigator.language);
		
		
		this.isDestroyed = false;
		openWebsockets();
	}
	
	void openWebsockets() {
	}
	
	
	@override
	void ngOnDestroy()
	{
	}
	
	
	void ngAfterViewInit() {
		html.window.document.dispatchEvent(new html.CustomEvent('dime-component-ready'));
		js.context.callMethod("enableTooltip",[]);
	}
	
  		@override
  		String getRuntimeId() => this.runtimeId;
  		
  		
  		
  		
  	
  		/// callback, if the button Logout is clicked
  			void actionlogouteventa2eAhoF_45_REeakMeYoloYxpgEventTrigger()
  		
  		{
  			// static button redirect
  			html.window.location.href=''+getLogoutURL.toString()+'';
  		}
  		
  		
  		
  		
  	
  		
  		
  		
  		Data.ConcreteUser
  		 initOnDemandcurrentUser()
  		{
  			if(this.currentUser==null){
  				this.currentUser = new Data.ConcreteUser
  				();
  			}
  			return this.currentUser;
  		}
  		void setValuecurrentUser(Data.ConcreteUser
  		 value)
  		{
  			this.currentUser = value;
  		}
  		void currentUsersetValue(Data.ConcreteUser
  		 value)
  		{
  			this.setValuecurrentUser(value);
  		}
  		
  	
  		
  		
  		//GUI SIB Bill
  		
  
  	void loadCurrentUser()
  	{
  		this.userPrivateHomeConcreteUserx1Service.syncUser().then((value){
  			this.currentUser = Data.ConcreteUser.fromJSON(value);
  			this.showLogin = false;
  			updateImageHash();
  			openWebsockets();
  			
  		}).catchError((error){
  			if(error.currentTarget.status != 200){
  				this.showLogin = true;
  			}
  		});
  	}
	/// returns the surrounding container class for major GUI models
	String getContainer_NGHA8F4TEear0NzybbrMtwRootClass()
	{
		if(this.ismajorpage)return "";
		return "";
	}
	
	/// returns the surrounding wrapper class for major GUI models
	String getContainer_NGHA8F4TEear0NzybbrMtwId()
	{
		if(this.ismajorpage)return "wrapper";
		return "_NGHA8F4TEear0NzybbrMtw";
	}
	
	/// returns the surrounding container class for major GUI models
	String getContainer_NGHA8F4TEear0NzybbrMtwClass()
	{
		if(this.ismajorpage)return "container-display";
		return "";
	}
	
	/// callback, to go back to the root interaction
	void redirect_NGHA8F4TEear0NzybbrMtwToHome(dynamic e)
	{
		e.preventDefault();
		this.router.navigate(Routes.root.toUrl());
	}
}
