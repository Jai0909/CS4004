import 'dart:core' as core;
import 'dart:convert';
import '../models/FileReference.dart';
import '../models/Selectives.dart';
import '../commons/Exceptions.dart';

class DataCastUtil {
	
	const DataCastUtil();
	static ConcreteUser castToConcreteUser(core.Object o) => o as ConcreteUser;
	static DIMEList<ConcreteUser> castToListConcreteUser(DIMEList<core.Object> os) => new DIMEList.from(os.cast<ConcreteUser>());
	static DIMEList<ConcreteUser> newListConcreteUser() => new DIMEList<ConcreteUser>();
	
	static BaseUser castToBaseUser(core.Object o) => o as BaseUser;
	static DIMEList<BaseUser> castToListBaseUser(DIMEList<core.Object> os) => new DIMEList.from(os.cast<BaseUser>());
	static DIMEList<BaseUser> newListBaseUser() => new DIMEList<BaseUser>();
	
	static Bill castToBill(core.Object o) => o as Bill;
	static DIMEList<Bill> castToListBill(DIMEList<core.Object> os) => new DIMEList.from(os.cast<Bill>());
	static DIMEList<Bill> newListBill() => new DIMEList<Bill>();
	
	static Item castToItem(core.Object o) => o as Item;
	static DIMEList<Item> castToListItem(DIMEList<core.Object> os) => new DIMEList.from(os.cast<Item>());
	static DIMEList<Item> newListItem() => new DIMEList<Item>();
}
class ConcreteUser extends BaseModel
{
	core.bool _baseUserHasBeenSet = false;
	core.bool baseUserHasBeenChanged() => _baseUserHasBeenSet||(_baseUser==null?false:_baseUser.hasChanged()) ;
	BaseUser _baseUser;
	core.bool _billHasBeenSet = false;
	core.bool billHasBeenChanged() => _billHasBeenSet;
	DIMEList<Bill> _bill;
	core.bool _dywaSwitchedToHasBeenSet = false;
	core.bool dywaSwitchedToHasBeenChanged() => _dywaSwitchedToHasBeenSet||(_dywaSwitchedTo==null?false:_dywaSwitchedTo.hasChanged()) ;
	ConcreteUser _dywaSwitchedTo;
	
	static ConcreteUser fromId(core.int id) {
		var m = new ConcreteUser();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'baseUser': this.baseUser, 
	  'bill': this.bill, 
	  'dywaSwitchedTo': this.dywaSwitchedTo
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'baseUser': this.baseUser = value; return;
	  case 'bill': this.bill = value; return;
	  case 'dywaSwitchedTo': this.dywaSwitchedTo = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	ConcreteUser({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
			this._bill = new DIMEList.monitored(billHasBeenSetted);
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			if (jsog.containsKey("baseUser")) {
				core.Map<core.String,core.dynamic> jsogObj = jsog["baseUser"];
				if(jsogObj != null) {
					BaseUser valueafPY24MwNEeWZVvvwxpYu8A;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueafPY24MwNEeWZVvvwxpYu8A = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.BaseUser") {
								valueafPY24MwNEeWZVvvwxpYu8A = new BaseUser(cache: cache, jsog: jsogObj);
							}
							else {
								valueafPY24MwNEeWZVvvwxpYu8A = new BaseUser(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueafPY24MwNEeWZVvvwxpYu8A = new BaseUser(cache: cache,jsog: jsogObj);
						}
					}
					this._baseUser = valueafPY24MwNEeWZVvvwxpYu8A;
				}
			}
			
			
			_baseUserHasBeenSet = false;
			this._bill = new DIMEList.monitored(billHasBeenSetted);
			if (jsog.containsKey("bill")) {
				for (core.Map<core.String,core.dynamic> iter in jsog["bill"]) {
					core.Map<core.String,core.dynamic> jsogObj = iter;
					Bill valuea4pAoYU_GEeyfcbT8Jtm1bw;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valuea4pAoYU_GEeyfcbT8Jtm1bw = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.BillImpl") {
								valuea4pAoYU_GEeyfcbT8Jtm1bw = new Bill(cache: cache, jsog: jsogObj);
							}
							else {
								valuea4pAoYU_GEeyfcbT8Jtm1bw = new Bill(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valuea4pAoYU_GEeyfcbT8Jtm1bw = new Bill(cache: cache,jsog: jsogObj);
						}
					}
					this._bill.add(valuea4pAoYU_GEeyfcbT8Jtm1bw);
				}
			}
			
			
			_billHasBeenSet = false;
			if (jsog.containsKey("dywaSwitchedTo")) {
				core.Map<core.String,core.dynamic> jsogObj = jsog["dywaSwitchedTo"];
				if(jsogObj != null) {
					ConcreteUser valueaKYfNgFBZEeyfcbT8Jtm1bw;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueaKYfNgFBZEeyfcbT8Jtm1bw = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.ConcreteUserImpl") {
								valueaKYfNgFBZEeyfcbT8Jtm1bw = new ConcreteUser(cache: cache, jsog: jsogObj);
							}
							else {
								valueaKYfNgFBZEeyfcbT8Jtm1bw = new ConcreteUser(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueaKYfNgFBZEeyfcbT8Jtm1bw = new ConcreteUser(cache: cache,jsog: jsogObj);
						}
					}
					this._dywaSwitchedTo = valueaKYfNgFBZEeyfcbT8Jtm1bw;
				}
			}
			
			
			_dywaSwitchedToHasBeenSet = false;
		}
	}
	
	void baseUserHasBeenSetted() { _baseUserHasBeenSet=true; }
	void billHasBeenSetted() { _billHasBeenSet=true; }
	void dywaSwitchedToHasBeenSetted() { _dywaSwitchedToHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_baseUserHasBeenSet || 
					_billHasBeenSet || 
					_dywaSwitchedToHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( baseUserHasBeenChanged() && !jsonObj.containsKey('baseUser')) && !objects.containsKey(this._baseUser)) {
			if(this._baseUser != null) {
				jsonObj["baseUser"] = this._baseUser.toJSOG(objects);
			}
			else {
				jsonObj["baseUser"] = null;
			}
			}
			if(( billHasBeenChanged() && !jsonObj.containsKey('bill'))) {
			if(this._bill.isEmpty){
				jsonObj["bill"] = [];
			}
			else{
				jsonObj["bill"] = this._bill.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
			}
			}
			if(( dywaSwitchedToHasBeenChanged() && !jsonObj.containsKey('dywaSwitchedTo')) && !objects.containsKey(this._dywaSwitchedTo)) {
			if(this._dywaSwitchedTo != null) {
				if (this._dywaSwitchedTo == this) {
					jsonObj["dywaSwitchedTo"] = { '@ref': jsogId.toString() };
				} else {
					jsonObj["dywaSwitchedTo"] = this._dywaSwitchedTo.toJSOG(objects);
				}
			}
			else {
				jsonObj["dywaSwitchedTo"] = null;
			}
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.ConcreteUserImpl";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( baseUserHasBeenChanged() && !jsonObj.containsKey('baseUser')) && !objects.containsKey(this._baseUser) || this.dywa_id == 0) {
		if(this._baseUser != null) {
			jsonObj["baseUser"] = this._baseUser.toJSOG(objects);
		}
		else {
			jsonObj["baseUser"] = null;
		}
		}
		if(( billHasBeenChanged() && !jsonObj.containsKey('bill')) || this.dywa_id == 0) {
		if(this._bill.isEmpty){
			jsonObj["bill"] = [];
		}
		else{
			jsonObj["bill"] = this._bill.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
		}
		}
		if(( dywaSwitchedToHasBeenChanged() && !jsonObj.containsKey('dywaSwitchedTo')) && !objects.containsKey(this._dywaSwitchedTo) || this.dywa_id == 0) {
		if(this._dywaSwitchedTo != null) {
			if (this._dywaSwitchedTo == this) {
				jsonObj["dywaSwitchedTo"] = { '@ref': jsogId.toString() };
			} else {
				jsonObj["dywaSwitchedTo"] = this._dywaSwitchedTo.toJSOG(objects);
			}
		}
		else {
			jsonObj["dywaSwitchedTo"] = null;
		}
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static ConcreteUser fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.ConcreteUserImpl') {
			return new ConcreteUser(cache:cache,jsog:jsog);
		}
		return new ConcreteUser(cache:cache,jsog:jsog);
	}
	
	void set baseUser (BaseUser value)
	{
		this._baseUserHasBeenSet = true;
		this._baseUser = value;
	}
	
	BaseUser get baseUser
	{
		return this._baseUser;
	}
	
		BaseUser initOnDemandbaseUser()
		{
			if(this._baseUser == null) {
			this.baseUser = new BaseUser();
			}
			return this.baseUser;
		}
		
		void setValuebaseUser(BaseUser value)
		{
			this.baseUser = value;
		}
		
		void baseUsersetValue(BaseUser value)
		{
			this.baseUser = value;
		}
		
	
	void set bill (DIMEList<Bill> value)
	{
		this._billHasBeenSet = true;
		this._bill = value;
	}
	
	DIMEList<Bill> get bill
	{
		return this._bill;
	}
	
		DIMEList<Bill> initOnDemandbill()
		{
			if(this._bill == null) {
			this._bill = new DIMEList();
			}
			return this.bill;
		}
		
		void setValuebill(DIMEList<Bill> value)
		{
			this.bill = value;
		}
		
		void billsetValue(DIMEList<Bill> value)
		{
			this.bill = value;
		}
		
		void billadd(Bill value)
		{
			this.bill.add(value);
			this._billHasBeenSet = true;
		}

	
	void set dywaSwitchedTo (ConcreteUser value)
	{
		this._dywaSwitchedToHasBeenSet = true;
		this._dywaSwitchedTo = value;
	}
	
	ConcreteUser get dywaSwitchedTo
	{
		return this._dywaSwitchedTo;
	}
	
		ConcreteUser initOnDemanddywaSwitchedTo()
		{
			if(this._dywaSwitchedTo == null) {
			this.dywaSwitchedTo = new ConcreteUser();
			}
			return this.dywaSwitchedTo;
		}
		
		void setValuedywaSwitchedTo(ConcreteUser value)
		{
			this.dywaSwitchedTo = value;
		}
		
		void dywaSwitchedTosetValue(ConcreteUser value)
		{
			this.dywaSwitchedTo = value;
		}
		
	
}

class BaseUser extends BaseModel
{
	core.bool _concreteUserHasBeenSet = false;
	core.bool concreteUserHasBeenChanged() => _concreteUserHasBeenSet;
	DIMEList<ConcreteUser> _concreteUser;
	core.bool _firstNameHasBeenSet = false;
	core.bool firstNameHasBeenChanged() => _firstNameHasBeenSet;
	core.String _firstName;
	core.bool _imageHasBeenSet = false;
	core.bool imageHasBeenChanged() => _imageHasBeenSet;
	FileReference _image;
	core.bool _lastNameHasBeenSet = false;
	core.bool lastNameHasBeenChanged() => _lastNameHasBeenSet;
	core.String _lastName;
	core.bool _passwordHasBeenSet = false;
	core.bool passwordHasBeenChanged() => _passwordHasBeenSet;
	core.String _password;
	core.bool _usernameHasBeenSet = false;
	core.bool usernameHasBeenChanged() => _usernameHasBeenSet;
	core.String _username;
	
	static BaseUser fromId(core.int id) {
		var m = new BaseUser();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'concreteUser': this.concreteUser, 
	  'firstName': this.firstName, 
	  'image': this.image, 
	  'lastName': this.lastName, 
	  'password': this.password, 
	  'username': this.username
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'concreteUser': this.concreteUser = value; return;
	  case 'firstName': this.firstName = value; return;
	  case 'image': this.image = value; return;
	  case 'lastName': this.lastName = value; return;
	  case 'password': this.password = value; return;
	  case 'username': this.username = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	BaseUser({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
			this._concreteUser = new DIMEList.monitored(concreteUserHasBeenSetted);
			this._firstName = null;
			this._image = null;
			this._lastName = null;
			this._password = null;
			this._username = null;
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			this._concreteUser = new DIMEList.monitored(concreteUserHasBeenSetted);
			if (jsog.containsKey("concreteUser")) {
				for (core.Map<core.String,core.dynamic> iter in jsog["concreteUser"]) {
					core.Map<core.String,core.dynamic> jsogObj = iter;
					ConcreteUser valueafOkXgMwNEeWZVvvwxpYu8A;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueafOkXgMwNEeWZVvvwxpYu8A = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.ConcreteUserImpl") {
								valueafOkXgMwNEeWZVvvwxpYu8A = new ConcreteUser(cache: cache, jsog: jsogObj);
							}
							else {
								valueafOkXgMwNEeWZVvvwxpYu8A = new ConcreteUser(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueafOkXgMwNEeWZVvvwxpYu8A = new ConcreteUser(cache: cache,jsog: jsogObj);
						}
					}
					this._concreteUser.add(valueafOkXgMwNEeWZVvvwxpYu8A);
				}
			}
			
			
			_concreteUserHasBeenSet = false;
			if (jsog.containsKey("firstName")) {
				core.String jsogObj = jsog["firstName"];
				if(jsogObj != null) {
					core.String valueaVE6ToM5BEeWKGIrSDzlNog;
					
					if(jsogObj!=null){
					valueaVE6ToM5BEeWKGIrSDzlNog = jsogObj.toString();
					}
					this._firstName = valueaVE6ToM5BEeWKGIrSDzlNog;
				}
				else {
					this._firstName = null;
				}
			}
			
			
			else{
				this._firstName = null;
			}
			_firstNameHasBeenSet = false;
			if (jsog.containsKey("image")) {
				core.Map<core.String,core.dynamic> jsogObj = jsog["image"];
				if(jsogObj != null) {
					FileReference valuea3QnzMM46EeWKGIrSDzlNog;
					
					if(jsogObj!=null){
					valuea3QnzMM46EeWKGIrSDzlNog = new FileReference(jsog: jsogObj);
					}
					this._image = valuea3QnzMM46EeWKGIrSDzlNog;
				}
				else {
					this._image = null;
				}
			}
			
			
			else{
				this._image = null;
			}
			_imageHasBeenSet = false;
			if (jsog.containsKey("lastName")) {
				core.String jsogObj = jsog["lastName"];
				if(jsogObj != null) {
					core.String valueaWYcYEM5BEeWKGIrSDzlNog;
					
					if(jsogObj!=null){
					valueaWYcYEM5BEeWKGIrSDzlNog = jsogObj.toString();
					}
					this._lastName = valueaWYcYEM5BEeWKGIrSDzlNog;
				}
				else {
					this._lastName = null;
				}
			}
			
			
			else{
				this._lastName = null;
			}
			_lastNameHasBeenSet = false;
			if (jsog.containsKey("password")) {
				core.String jsogObj = jsog["password"];
				if(jsogObj != null) {
					core.String valueaYIIgUMwNEeWZVvvwxpYu8A;
					
					if(jsogObj!=null){
					valueaYIIgUMwNEeWZVvvwxpYu8A = jsogObj.toString();
					}
					this._password = valueaYIIgUMwNEeWZVvvwxpYu8A;
				}
				else {
					this._password = null;
				}
			}
			
			
			else{
				this._password = null;
			}
			_passwordHasBeenSet = false;
			if (jsog.containsKey("username")) {
				core.String jsogObj = jsog["username"];
				if(jsogObj != null) {
					core.String valuea1aiCkG_QEeaqHezD6_45_M0AA;
					
					if(jsogObj!=null){
					valuea1aiCkG_QEeaqHezD6_45_M0AA = jsogObj.toString();
					}
					this._username = valuea1aiCkG_QEeaqHezD6_45_M0AA;
				}
				else {
					this._username = null;
				}
			}
			
			
			else{
				this._username = null;
			}
			_usernameHasBeenSet = false;
		}
	}
	
	void concreteUserHasBeenSetted() { _concreteUserHasBeenSet=true; }
	void firstNameHasBeenSetted() { _firstNameHasBeenSet=true; }
	void imageHasBeenSetted() { _imageHasBeenSet=true; }
	void lastNameHasBeenSetted() { _lastNameHasBeenSet=true; }
	void passwordHasBeenSetted() { _passwordHasBeenSet=true; }
	void usernameHasBeenSetted() { _usernameHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_concreteUserHasBeenSet || 
					_firstNameHasBeenSet || 
					_imageHasBeenSet || 
					_lastNameHasBeenSet || 
					_passwordHasBeenSet || 
					_usernameHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( concreteUserHasBeenChanged() && !jsonObj.containsKey('concreteUser'))) {
			if(this._concreteUser.isEmpty){
				jsonObj["concreteUser"] = [];
			}
			else{
				jsonObj["concreteUser"] = this._concreteUser.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
			}
			}
			if(( passwordHasBeenChanged() && !jsonObj.containsKey('password')) && !objects.containsKey(this._password)) {
			jsonObj["password"] = this._password;
			}
			if(( imageHasBeenChanged() && !jsonObj.containsKey('image')) && !objects.containsKey(this._image)) {
			if(this._image != null) {
				jsonObj["image"] = this._image.toJSOG(objects);
			}
			else {
				jsonObj["image"] = null;
			}
			}
			if(( firstNameHasBeenChanged() && !jsonObj.containsKey('firstName')) && !objects.containsKey(this._firstName)) {
			jsonObj["firstName"] = this._firstName;
			}
			if(( lastNameHasBeenChanged() && !jsonObj.containsKey('lastName')) && !objects.containsKey(this._lastName)) {
			jsonObj["lastName"] = this._lastName;
			}
			if(( usernameHasBeenChanged() && !jsonObj.containsKey('username')) && !objects.containsKey(this._username)) {
			jsonObj["username"] = this._username;
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.BaseUser";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( concreteUserHasBeenChanged() && !jsonObj.containsKey('concreteUser')) || this.dywa_id == 0) {
		if(this._concreteUser.isEmpty){
			jsonObj["concreteUser"] = [];
		}
		else{
			jsonObj["concreteUser"] = this._concreteUser.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
		}
		}
		if(( passwordHasBeenChanged() && !jsonObj.containsKey('password')) && !objects.containsKey(this._password) || this.dywa_id == 0) {
		jsonObj["password"] = this._password;
		}
		if(( imageHasBeenChanged() && !jsonObj.containsKey('image')) && !objects.containsKey(this._image) || this.dywa_id == 0) {
		if(this._image != null) {
			jsonObj["image"] = this._image.toJSOG(objects);
		}
		else {
			jsonObj["image"] = null;
		}
		}
		if(( firstNameHasBeenChanged() && !jsonObj.containsKey('firstName')) && !objects.containsKey(this._firstName) || this.dywa_id == 0) {
		jsonObj["firstName"] = this._firstName;
		}
		if(( lastNameHasBeenChanged() && !jsonObj.containsKey('lastName')) && !objects.containsKey(this._lastName) || this.dywa_id == 0) {
		jsonObj["lastName"] = this._lastName;
		}
		if(( usernameHasBeenChanged() && !jsonObj.containsKey('username')) && !objects.containsKey(this._username) || this.dywa_id == 0) {
		jsonObj["username"] = this._username;
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static BaseUser fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.BaseUser') {
			return new BaseUser(cache:cache,jsog:jsog);
		}
		return new BaseUser(cache:cache,jsog:jsog);
	}
	
	void set concreteUser (DIMEList<ConcreteUser> value)
	{
		this._concreteUserHasBeenSet = true;
		this._concreteUser = value;
	}
	
	DIMEList<ConcreteUser> get concreteUser
	{
		return this._concreteUser;
	}
	
		DIMEList<ConcreteUser> initOnDemandconcreteUser()
		{
			if(this._concreteUser == null) {
			this._concreteUser = new DIMEList();
			}
			return this.concreteUser;
		}
		
		void setValueconcreteUser(DIMEList<ConcreteUser> value)
		{
			this.concreteUser = value;
		}
		
		void concreteUsersetValue(DIMEList<ConcreteUser> value)
		{
			this.concreteUser = value;
		}
		
		void concreteUseradd(ConcreteUser value)
		{
			this.concreteUser.add(value);
			this._concreteUserHasBeenSet = true;
		}

	
	void set password (core.String value)
	{
		this._passwordHasBeenSet = true;
		this._password = value;
	}
	
	core.String get password
	{
		return this._password;
	}
	
		core.String initOnDemandpassword()
		{
			return this.password;
		}
		
		void setValuepassword(core.String value)
		{
			this.password = value;
		}
		
		void passwordsetValue(core.String value)
		{
			this.password = value;
		}
		
	
	void set image (FileReference value)
	{
		this._imageHasBeenSet = true;
		this._image = value;
	}
	
	FileReference get image
	{
		return this._image;
	}
	
		FileReference initOnDemandimage()
		{
			return this.image;
		}
		
		void setValueimage(FileReference value)
		{
			this.image = value;
		}
		
		void imagesetValue(FileReference value)
		{
			this.image = value;
		}
		
	
	void set firstName (core.String value)
	{
		this._firstNameHasBeenSet = true;
		this._firstName = value;
	}
	
	core.String get firstName
	{
		return this._firstName;
	}
	
		core.String initOnDemandfirstName()
		{
			return this.firstName;
		}
		
		void setValuefirstName(core.String value)
		{
			this.firstName = value;
		}
		
		void firstNamesetValue(core.String value)
		{
			this.firstName = value;
		}
		
	
	void set lastName (core.String value)
	{
		this._lastNameHasBeenSet = true;
		this._lastName = value;
	}
	
	core.String get lastName
	{
		return this._lastName;
	}
	
		core.String initOnDemandlastName()
		{
			return this.lastName;
		}
		
		void setValuelastName(core.String value)
		{
			this.lastName = value;
		}
		
		void lastNamesetValue(core.String value)
		{
			this.lastName = value;
		}
		
	
	void set username (core.String value)
	{
		this._usernameHasBeenSet = true;
		this._username = value;
	}
	
	core.String get username
	{
		return this._username;
	}
	
		core.String initOnDemandusername()
		{
			return this.username;
		}
		
		void setValueusername(core.String value)
		{
			this.username = value;
		}
		
		void usernamesetValue(core.String value)
		{
			this.username = value;
		}
		
	
}

class Bill extends BaseModel
{
	core.bool _billnoHasBeenSet = false;
	core.bool billnoHasBeenChanged() => _billnoHasBeenSet;
	core.int _billno;
	core.bool _concreteUserHasBeenSet = false;
	core.bool concreteUserHasBeenChanged() => _concreteUserHasBeenSet||(_concreteUser==null?false:_concreteUser.hasChanged()) ;
	ConcreteUser _concreteUser;
	core.bool _itemHasBeenSet = false;
	core.bool itemHasBeenChanged() => _itemHasBeenSet;
	DIMEList<Item> _item;
	
	static Bill fromId(core.int id) {
		var m = new Bill();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'billno': this.billno, 
	  'concreteUser': this.concreteUser, 
	  'item': this.item
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'billno': this.billno = value; return;
	  case 'concreteUser': this.concreteUser = value; return;
	  case 'item': this.item = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	Bill({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
			this._billno = 0;
			this._item = new DIMEList.monitored(itemHasBeenSetted);
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			if (jsog.containsKey("billno")) {
				core.int jsogObj = jsog["billno"];
				if(jsogObj != null) {
					core.int valuearQxb8E_GEeyfcbT8Jtm1bw;
					
					if(jsogObj!=null){
					valuearQxb8E_GEeyfcbT8Jtm1bw = core.int.parse(jsogObj.toString());
					}
					this._billno = valuearQxb8E_GEeyfcbT8Jtm1bw;
				}
				else {
					this._billno = 0;
				}
			}
			
			
			else{
				this._billno = 0;
			}
			_billnoHasBeenSet = false;
			if (jsog.containsKey("concreteUser")) {
				core.Map<core.String,core.dynamic> jsogObj = jsog["concreteUser"];
				if(jsogObj != null) {
					ConcreteUser valuea4omYsE_GEeyfcbT8Jtm1bw;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valuea4omYsE_GEeyfcbT8Jtm1bw = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.ConcreteUserImpl") {
								valuea4omYsE_GEeyfcbT8Jtm1bw = new ConcreteUser(cache: cache, jsog: jsogObj);
							}
							else {
								valuea4omYsE_GEeyfcbT8Jtm1bw = new ConcreteUser(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valuea4omYsE_GEeyfcbT8Jtm1bw = new ConcreteUser(cache: cache,jsog: jsogObj);
						}
					}
					this._concreteUser = valuea4omYsE_GEeyfcbT8Jtm1bw;
				}
			}
			
			
			_concreteUserHasBeenSet = false;
			this._item = new DIMEList.monitored(itemHasBeenSetted);
			if (jsog.containsKey("item")) {
				for (core.Map<core.String,core.dynamic> iter in jsog["item"]) {
					core.Map<core.String,core.dynamic> jsogObj = iter;
					Item valueaxnK9UE_GEeyfcbT8Jtm1bw;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueaxnK9UE_GEeyfcbT8Jtm1bw = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.ItemImpl") {
								valueaxnK9UE_GEeyfcbT8Jtm1bw = new Item(cache: cache, jsog: jsogObj);
							}
							else {
								valueaxnK9UE_GEeyfcbT8Jtm1bw = new Item(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueaxnK9UE_GEeyfcbT8Jtm1bw = new Item(cache: cache,jsog: jsogObj);
						}
					}
					this._item.add(valueaxnK9UE_GEeyfcbT8Jtm1bw);
				}
			}
			
			
			_itemHasBeenSet = false;
		}
	}
	
	void billnoHasBeenSetted() { _billnoHasBeenSet=true; }
	void concreteUserHasBeenSetted() { _concreteUserHasBeenSet=true; }
	void itemHasBeenSetted() { _itemHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_billnoHasBeenSet || 
					_concreteUserHasBeenSet || 
					_itemHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( itemHasBeenChanged() && !jsonObj.containsKey('item'))) {
			if(this._item.isEmpty){
				jsonObj["item"] = [];
			}
			else{
				jsonObj["item"] = this._item.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
			}
			}
			if(( concreteUserHasBeenChanged() && !jsonObj.containsKey('concreteUser')) && !objects.containsKey(this._concreteUser)) {
			if(this._concreteUser != null) {
				jsonObj["concreteUser"] = this._concreteUser.toJSOG(objects);
			}
			else {
				jsonObj["concreteUser"] = null;
			}
			}
			if(( billnoHasBeenChanged() && !jsonObj.containsKey('billno')) && !objects.containsKey(this._billno)) {
			jsonObj["billno"] = this._billno;
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.BillImpl";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( itemHasBeenChanged() && !jsonObj.containsKey('item')) || this.dywa_id == 0) {
		if(this._item.isEmpty){
			jsonObj["item"] = [];
		}
		else{
			jsonObj["item"] = this._item.where((n) => objects.containsKey(n)).map((n)=>n.toJSOG(objects)).toList();
		}
		}
		if(( concreteUserHasBeenChanged() && !jsonObj.containsKey('concreteUser')) && !objects.containsKey(this._concreteUser) || this.dywa_id == 0) {
		if(this._concreteUser != null) {
			jsonObj["concreteUser"] = this._concreteUser.toJSOG(objects);
		}
		else {
			jsonObj["concreteUser"] = null;
		}
		}
		if(( billnoHasBeenChanged() && !jsonObj.containsKey('billno')) && !objects.containsKey(this._billno) || this.dywa_id == 0) {
		jsonObj["billno"] = this._billno;
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static Bill fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.BillImpl') {
			return new Bill(cache:cache,jsog:jsog);
		}
		return new Bill(cache:cache,jsog:jsog);
	}
	
	void set item (DIMEList<Item> value)
	{
		this._itemHasBeenSet = true;
		this._item = value;
	}
	
	DIMEList<Item> get item
	{
		return this._item;
	}
	
		DIMEList<Item> initOnDemanditem()
		{
			if(this._item == null) {
			this._item = new DIMEList();
			}
			return this.item;
		}
		
		void setValueitem(DIMEList<Item> value)
		{
			this.item = value;
		}
		
		void itemsetValue(DIMEList<Item> value)
		{
			this.item = value;
		}
		
		void itemadd(Item value)
		{
			this.item.add(value);
			this._itemHasBeenSet = true;
		}

	
	void set concreteUser (ConcreteUser value)
	{
		this._concreteUserHasBeenSet = true;
		this._concreteUser = value;
	}
	
	ConcreteUser get concreteUser
	{
		return this._concreteUser;
	}
	
		ConcreteUser initOnDemandconcreteUser()
		{
			if(this._concreteUser == null) {
			this.concreteUser = new ConcreteUser();
			}
			return this.concreteUser;
		}
		
		void setValueconcreteUser(ConcreteUser value)
		{
			this.concreteUser = value;
		}
		
		void concreteUsersetValue(ConcreteUser value)
		{
			this.concreteUser = value;
		}
		
	
	void set billno (core.int value)
	{
		this._billnoHasBeenSet = true;
		this._billno = value;
	}
	
	core.int get billno
	{
		return this._billno;
	}
	
		core.int initOnDemandbillno()
		{
			return this.billno;
		}
		
		void setValuebillno(core.int value)
		{
			this.billno = value;
		}
		
		void billnosetValue(core.int value)
		{
			this.billno = value;
		}
		
	
}

class Item extends BaseModel
{
	core.bool _billHasBeenSet = false;
	core.bool billHasBeenChanged() => _billHasBeenSet||(_bill==null?false:_bill.hasChanged()) ;
	Bill _bill;
	core.bool _nameHasBeenSet = false;
	core.bool nameHasBeenChanged() => _nameHasBeenSet;
	DIMEList<core.String> _name;
	core.bool _rateHasBeenSet = false;
	core.bool rateHasBeenChanged() => _rateHasBeenSet;
	DIMEList<core.String> _rate;
	
	static Item fromId(core.int id) {
		var m = new Item();
		m.dywa_id = id;
		return m;
	}
	
	
	// reflection methods to read and wirte dart properties by string name
	
	core.dynamic $$getProperty(core.String prop) {
	  var propMap = {
	  'bill': this.bill, 
	  'name': this.name, 
	  'rate': this.rate
	  };
	
	  if (!propMap.containsKey(prop)) throw NoSuchPropertyException(prop);
	  return propMap[prop];
	}
	
	void $$setProperty(core.String prop, core.dynamic value) {
	  switch (prop) {
	  case 'bill': this.bill = value; return;
	  case 'name': this.name = value; return;
	  case 'rate': this.rate = value; return;
	    default: throw NoSuchPropertyException(prop);
	  }
	}
	
	core.bool $$hasProperty(core.String prop) {
	  try {
	    $$getProperty(prop);
	    return true;
	  } on NoSuchPropertyException catch (e) {
	    return false;
	  }
	}
	
	Item({core.Map<core.String,core.dynamic> cache, jsog}) {
		if (cache == null) {
			cache = new core.Map();
		}

		// default constructor
		if (jsog == null) {
			
			this.dywa_id = -1;
			this.dywa_version = 0;
			this.dywa_name = null;
			
			// properties
			this._name = new DIMEList.monitored(nameHasBeenSetted);
			this._rate = new DIMEList.monitored(rateHasBeenSetted);
		}
		// from jsog
		else {
			core.String jsogId = jsog['@id'];
			cache[jsogId] = this;
			
			this.dywa_id = jsog['dywaId'];
			this.dywa_version = jsog['dywaVersion'];
			this.dywa_name = jsog['dywaName'];
			
			// properties
			if (jsog.containsKey("bill")) {
				core.Map<core.String,core.dynamic> jsogObj = jsog["bill"];
				if(jsogObj != null) {
					Bill valueaxnfGYU_GEeyfcbT8Jtm1bw;
					
					core.String jsogId;
					
					if (jsogObj.containsKey('@ref')) {
						jsogId = jsogObj['@ref'];
					}
					else {
					 	jsogId = jsogObj['@id'];
					}
					if (cache.containsKey(jsogId)) {
						valueaxnfGYU_GEeyfcbT8Jtm1bw = cache[jsogId];
					}
					else {
						if (jsogObj != null) {
							if (jsogObj['dywaRuntimeType'] == "de.ls5.dywa.generated.rest.types.BillImpl") {
								valueaxnfGYU_GEeyfcbT8Jtm1bw = new Bill(cache: cache, jsog: jsogObj);
							}
							else {
								valueaxnfGYU_GEeyfcbT8Jtm1bw = new Bill(cache: cache,jsog: jsogObj);
							}
						}
						else {
							valueaxnfGYU_GEeyfcbT8Jtm1bw = new Bill(cache: cache,jsog: jsogObj);
						}
					}
					this._bill = valueaxnfGYU_GEeyfcbT8Jtm1bw;
				}
			}
			
			
			_billHasBeenSet = false;
			this._name = new DIMEList.monitored(nameHasBeenSetted);
			if (jsog.containsKey("name")) {
				for (core.dynamic jsogObj in jsog["name"]) {
					if(jsogObj is core.List) {
						jsogObj = jsogObj[1];
					}
					core.String valueakoVvYE_GEeyfcbT8Jtm1bw;
					
					if(jsogObj!=null){
					valueakoVvYE_GEeyfcbT8Jtm1bw = jsogObj.toString();
					}
					this._name.add(valueakoVvYE_GEeyfcbT8Jtm1bw);
				}
			}
			
			
			_nameHasBeenSet = false;
			this._rate = new DIMEList.monitored(rateHasBeenSetted);
			if (jsog.containsKey("rate")) {
				for (core.dynamic jsogObj in jsog["rate"]) {
					if(jsogObj is core.List) {
						jsogObj = jsogObj[1];
					}
					core.String valueak1xucU_GEeyfcbT8Jtm1bw;
					
					if(jsogObj!=null){
					valueak1xucU_GEeyfcbT8Jtm1bw = jsogObj.toString();
					}
					this._rate.add(valueak1xucU_GEeyfcbT8Jtm1bw);
				}
			}
			
			
			_rateHasBeenSet = false;
		}
	}
	
	void billHasBeenSetted() { _billHasBeenSet=true; }
	void nameHasBeenSetted() { _nameHasBeenSet=true; }
	void rateHasBeenSetted() { _rateHasBeenSet=true; }
	
	core.bool hasChanged() {
		return 		_billHasBeenSet || 
					_nameHasBeenSet || 
					_rateHasBeenSet
			;
	}
	
	
	core.Map<core.String,core.dynamic> toJSOG(core.Map<core.Object,core.dynamic> objects) {
		if (objects == null) {
			objects = new core.Map();
		}
		core.int jsogId;
		core.Map<core.String,core.dynamic> jsonObj = new core.Map();
		if(objects.containsKey(this)) {
			jsogId = objects[this]['id'];
			jsonObj = objects[this]['value'];
			if(( billHasBeenChanged() && !jsonObj.containsKey('bill')) && !objects.containsKey(this._bill)) {
			if(this._bill != null) {
				jsonObj["bill"] = this._bill.toJSOG(objects);
			}
			else {
				jsonObj["bill"] = null;
			}
			}
			if(( nameHasBeenChanged() && !jsonObj.containsKey('name'))) {
			if(this._name.isEmpty){
				jsonObj["name"] = [];
			}
			else{
				jsonObj["name"] = this._name;
			}
			}
			if(( rateHasBeenChanged() && !jsonObj.containsKey('rate'))) {
			if(this._rate.isEmpty){
				jsonObj["rate"] = [];
			}
			else{
				jsonObj["rate"] = this._rate;
			}
			}
			return { 
				'@ref': jsogId.toString()
			};
		}
		else {
			jsogId = objects.length;
			var pair = {
				'id': jsogId,
				'value': jsonObj
			};
			objects[this] = pair;
		}
		jsonObj['@id'] = jsogId.toString();
		jsonObj['dywaRuntimeType'] = "de.ls5.dywa.generated.rest.types.ItemImpl";

		jsonObj['dywaId'] = this.dywa_id;
		jsonObj['dywaVersion'] = this.dywa_version;
		if(this.dywa_name != null) {
			jsonObj['dywaName'] = this.dywa_name;
		}
		if(( billHasBeenChanged() && !jsonObj.containsKey('bill')) && !objects.containsKey(this._bill) || this.dywa_id == 0) {
		if(this._bill != null) {
			jsonObj["bill"] = this._bill.toJSOG(objects);
		}
		else {
			jsonObj["bill"] = null;
		}
		}
		if(( nameHasBeenChanged() && !jsonObj.containsKey('name')) || this.dywa_id == 0) {
		if(this._name.isEmpty){
			jsonObj["name"] = [];
		}
		else{
			jsonObj["name"] = this._name;
		}
		}
		if(( rateHasBeenChanged() && !jsonObj.containsKey('rate')) || this.dywa_id == 0) {
		if(this._rate.isEmpty){
			jsonObj["rate"] = [];
		}
		else{
			jsonObj["rate"] = this._rate;
		}
		}
		return jsonObj;
	}
	static fromJSON(core.String json) {
		return fromJSOG(cache:new core.Map<core.String,core.dynamic>(),jsog:jsonDecode(json));
	}
		
	static Item fromJSOG({core.Map<core.String,core.dynamic> cache, jsog}) {
		if(jsog.containsKey('@ref')) {
			assert (cache.containsKey(jsog['@ref']));
			return cache[jsog['@ref']];
		}
		if(jsog['dywaRuntimeType'] == 'de.ls5.dywa.generated.rest.types.ItemImpl') {
			return new Item(cache:cache,jsog:jsog);
		}
		return new Item(cache:cache,jsog:jsog);
	}
	
	void set bill (Bill value)
	{
		this._billHasBeenSet = true;
		this._bill = value;
	}
	
	Bill get bill
	{
		return this._bill;
	}
	
		Bill initOnDemandbill()
		{
			if(this._bill == null) {
			this.bill = new Bill();
			}
			return this.bill;
		}
		
		void setValuebill(Bill value)
		{
			this.bill = value;
		}
		
		void billsetValue(Bill value)
		{
			this.bill = value;
		}
		
	
	void set name (DIMEList<core.String> value)
	{
		this._nameHasBeenSet = true;
		this._name = value;
	}
	
	DIMEList<core.String> get name
	{
		return this._name;
	}
	
		DIMEList<core.String> initOnDemandname()
		{
			if(this._name == null) {
			this._name = new DIMEList();
			}
			return this.name;
		}
		
		void setValuename(DIMEList<core.String> value)
		{
			this.name = value;
		}
		
		void namesetValue(DIMEList<core.String> value)
		{
			this.name = value;
		}
		
		void nameadd(core.String value)
		{
			this.name.add(value);
			this._nameHasBeenSet = true;
		}

	
	void set rate (DIMEList<core.String> value)
	{
		this._rateHasBeenSet = true;
		this._rate = value;
	}
	
	DIMEList<core.String> get rate
	{
		return this._rate;
	}
	
		DIMEList<core.String> initOnDemandrate()
		{
			if(this._rate == null) {
			this._rate = new DIMEList();
			}
			return this.rate;
		}
		
		void setValuerate(DIMEList<core.String> value)
		{
			this.rate = value;
		}
		
		void ratesetValue(DIMEList<core.String> value)
		{
			this.rate = value;
		}
		
		void rateadd(core.String value)
		{
			this.rate.add(value);
			this._rateHasBeenSet = true;
		}

	
}
