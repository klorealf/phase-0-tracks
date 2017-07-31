grocery_store = {
	Produce: {
		name: 'Produce',
		contains: {
			type_fruits: 3,
			type_vegetables: 3
		},
	
  	vegetables: [
  		'carrots',
  		'kale',
  		'broccoli'
  	]
	},
	Dairy: {
	  name: 'Dairy',
	  contains: {
	    type_dairy: 3
	  },
	  
	  dairy: [
  		'milk',
  		'butter',
  		'yogurt'
		]
	},
	
	Meat: {
	  name: 'Meat',
	  contains: {
	    type_meat: 3
	  },
	  
  	  meat: [
  		'beef',
  		'chicken',
  		'pork'
		]
	},
	
	Personal: {
	  name: 'Personal',
	  contains: {
	    type_personal:3
	  },
	  
	  personal: [
  		'shampoo',
  		'soap',
  		'deodorant'
		]
	}
	
}

#grocery_store[:Produce][:vegetables]
#grocery_store[:Meat][:meat][2]
grocery_store[:Personal][:personal][1] = 'conditioner'

