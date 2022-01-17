
let carts = document.querySelectorAll('.add-cart');

let a = [];

let products = [ 
    {
        name: "Grey Tshirt",
        tag: "greytshirt",
        price: 300,
        code: 101,
        inCart: 0
    },
    {
        name: "Grey Hoddie",
        tag: "greyhoddie",
        price: 550,
        code: 102,
        inCart: 0
    },
    {
        name: "Black Tshirt",
        tag: "blacktshirt",
        price: 300,
        code: 103,
        inCart: 0
    },
    {
        name: "Black Hoddie",
        tag: "blackhoddie",
        price: 550,
        code: 104,
        inCart: 0
    },
    {
        name: "Travel Hat",
        tag: "travelhat",
        price: 200,
        code: 201,
        inCart: 0
    },
    {
        name: "Portable Bin",
        tag: "portablebin",
        price: 250,
        code: 202,
        inCart: 0
    },
    
    {
        name: "5 Layer Bag",
        tag: "5layerbag",
        price: 680,
        code: 203,
        inCart: 0
    },
    {
        name: "Portable Bed",
        tag: "portablebed",
        price: 1500,
        code: 204,
        inCart: 0
    },
    {
        name: "Neck Rest",
        tag: "neckrest",
        price: 150,
        code: 301,
        inCart: 0
    },
    
    {
        name: "Eye Cap",
        tag: "eyecap",
        price: 100,
        code: 302,
        inCart: 0
    },
    {
        name: "3 Pocket Pouch",
        tag: "3pocketpouch",
        price: 350,
        code: 303,
        inCart: 0
    },
    {
        name: "Knife",
        tag: "knife",
        price: 700,
        code: 304,
        inCart: 0
    },
    {
        name: "Sun Hat",
        tag: "sunhat",
        price: 200,
        code: 401,
        inCart: 0
    },
    {
        name: "Polar Glass",
        tag: "polarglass",
        price: 1300,
        code: 402,
        inCart: 0
    },
    {
        name: "Magnet Bag",
        tag: "magnetbag",
        price: 2400,
        code: 403,
        inCart: 0
    },
    {
        name: "AntiRob Bag",
        tag: "antirobbag",
        price: 1200,
        code: 404,
        inCart: 0
    }
    
];

for(let i=0; i< carts.length; i++) {
    carts[i].addEventListener('click', () => {
        cartNumbers(products[i]);
        totalCost(products[i]);
});
}

function onLoadCartNumbers() {
    let productNumbers = localStorage.getItem('cartNumbers');
    if( productNumbers ) {
        document.querySelector('.cart span').textContent = productNumbers;
}
}

function cartNumbers(product, action) {
    let productNumbers = localStorage.getItem('cartNumbers');
    productNumbers = parseInt(productNumbers);

    let cartItems = localStorage.getItem('productsInCart');
    cartItems = JSON.parse(cartItems);

    if( action ) {
        localStorage.setItem("cartNumbers", productNumbers - 1);
        document.querySelector('.cart span').textContent = productNumbers - 1;
        console.log("action running");
} else if( productNumbers ) {
        localStorage.setItem("cartNumbers", productNumbers + 1);
        document.querySelector('.cart span').textContent = productNumbers + 1;
} else {
        localStorage.setItem("cartNumbers", 1);
        document.querySelector('.cart span').textContent = 1;
}
    setItems(product);
}

    function setItems(product) {
        // let productNumbers = localStorage.getItem('cartNumbers');
        // productNumbers = parseInt(productNumbers);
        let cartItems = localStorage.getItem('productsInCart');
        cartItems = JSON.parse(cartItems);

        if(cartItems != null) {
            let currentProduct = product.tag;
    
            if( cartItems[currentProduct] == undefined ) {
                cartItems = {
                    ...cartItems,
                    [currentProduct]: product
                }
            } 
            cartItems[currentProduct].inCart += 1;

        } else {
            product.inCart = 1;
            cartItems = { 
                [product.tag]: product
            };
        }

        localStorage.setItem('productsInCart', JSON.stringify(cartItems));
    }

function totalCost( product, action ) {
    let cart = localStorage.getItem("totalCost");

    if( action) {
        cart = parseInt(cart);

        localStorage.setItem("totalCost", cart - product.price);
    } else if(cart != null) {
        
        cart = parseInt(cart);
        localStorage.setItem("totalCost", cart + product.price);
    
    } else {
        localStorage.setItem("totalCost", product.price);
    }
}

function displayCart() {
    let cartItems = localStorage.getItem('productsInCart');
    cartItems = JSON.parse(cartItems);

    let cart = localStorage.getItem("totalCost");
    cart = parseInt(cart);

    let productContainer = document.querySelector('.products');

    let pString = document.querySelector('.pstring');
    
    if( cartItems && productContainer ) {
        productContainer.innerHTML = '';
        pString.innerHTML = '';
        Object.values(cartItems).map( (item, index) => {
            a.push(item.name);
            
        pString.innerHTML += `<div class="ppstring">• ${item.name} <span class="pcodecart">Product-Code: ${item.code}</span></div>`;
            

        productContainer.innerHTML += 
        `<div class="product"><ion-icon class="delete" name="close-circle"></ion-icon><img src="./Images/${item.tag}.jpg" />
            <span class="sm-hide">${item.name}</span>
        </div>
        <div class="price sm-hidee">৳${item.price},00</div>
        <div class="quantity">
            <ion-icon class="decrease " name="arrow-back-circle-outline"></ion-icon>
                <span>${item.inCart}</span>
            <ion-icon class="increase" name="arrow-forward-circle-outline"></ion-icon>   
        </div>
        <div class="total">৳${item.inCart * item.price},00</div>`;
    });

    productContainer.innerHTML += `
        <div class="basketTotalContainer">
            <h2 class="basketTotalTitle">Total Price</h2>
            <h2 class="basketTotal">৳${cart},00</h2>
        </div>`

    deleteButtons();
    manageQuantity();

    const ul = document.getElementById("ggh");

    for(var i=0; i<a.length; i++){
        const li = document.createElement("li");
        li.appendChild(document.createTextNode(a[i]));
        ul.appendChild(li);
    }
}
}


function manageQuantity() {
    let decreaseButtons = document.querySelectorAll('.decrease');
    let increaseButtons = document.querySelectorAll('.increase');
    let currentQuantity = 0;
    let currentProduct = '';
    let cartItems = localStorage.getItem('productsInCart');
    cartItems = JSON.parse(cartItems);

    for(let i=0; i < increaseButtons.length; i++) {
        decreaseButtons[i].addEventListener('click', () => {
            console.log(cartItems);
            currentQuantity = decreaseButtons[i].parentElement.querySelector('span').textContent;
            console.log(currentQuantity);
            currentProduct = decreaseButtons[i].parentElement.previousElementSibling.previousElementSibling.querySelector('span').textContent.toLocaleLowerCase().replace(/ /g,'').trim();
            console.log(currentProduct);

            if( cartItems[currentProduct].inCart > 1 ) {
                cartItems[currentProduct].inCart -= 1;
                cartNumbers(cartItems[currentProduct], "decrease");
                totalCost(cartItems[currentProduct], "decrease");
                localStorage.setItem('productsInCart', JSON.stringify(cartItems));
                displayCart();
    }
});

increaseButtons[i].addEventListener('click', () => {
    console.log(cartItems);
currentQuantity = increaseButtons[i].parentElement.querySelector('span').textContent;
console.log(currentQuantity);
currentProduct = increaseButtons[i].parentElement.previousElementSibling.previousElementSibling.querySelector('span').textContent.toLocaleLowerCase().replace(/ /g,'').trim();
console.log(currentProduct);
cartItems[currentProduct].inCart += 1;
cartNumbers(cartItems[currentProduct]);
totalCost(cartItems[currentProduct]);
localStorage.setItem('productsInCart', JSON.stringify(cartItems));
displayCart();
});
}
}

function deleteButtons() {
    let deleteButtons = document.querySelectorAll('.product ion-icon');
    let productNumbers = localStorage.getItem('cartNumbers');
    let cartCost = localStorage.getItem("totalCost");
    let cartItems = localStorage.getItem('productsInCart');
    cartItems = JSON.parse(cartItems);
    let productName;
    console.log(cartItems);

    for(let i=0; i < deleteButtons.length; i++) {
        deleteButtons[i].addEventListener('click', () => {
            productName = deleteButtons[i].parentElement.textContent.toLocaleLowerCase().replace(/ /g,'').trim();
           
            localStorage.setItem('cartNumbers', productNumbers - cartItems[productName].inCart);
            localStorage.setItem('totalCost', cartCost - ( cartItems[productName].price * cartItems[productName].inCart));

            delete cartItems[productName];
            localStorage.setItem('productsInCart', JSON.stringify(cartItems));

            displayCart();
            onLoadCartNumbers();
    })
}
}

onLoadCartNumbers();
displayCart();





