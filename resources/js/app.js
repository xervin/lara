require('./bootstrap');

let request = (route, body) => {
    let options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'X-Requested-With': 'XMLHttpRequest',
            'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
        },
        credentials: 'same-origin',
        body: body
    }

    return fetch(route, options);
}

document.addEventListener("DOMContentLoaded", function (event) {
    let productCardImages = document.querySelectorAll('.product-card__images .image');
    if (0 < productCardImages.length) {
        productCardImages.forEach((image) => {
            image.addEventListener('click', () => {
                image.classList.toggle('is-active');
            })
        })
    }

    let buyButton = document.getElementById('buy');

    if (buyButton !== null) {
        buyButton.addEventListener('click', () => {
            let qInput = document.getElementById('quantity');
            let quantity = qInput.value;
            let productId = qInput.dataset.id;

            let add = request(`/cart/add/${productId}`, JSON.stringify({
                    quantity: quantity,
                })
            )

            add
                .then(response => {
                    if (response.status !== 200) {
                        return Promise.reject();
                    }
                    return response.json();
                })
                .then(function (data) {
                    alert(data.payload);
                })
                .catch((err) => {
                    console.log(err);
                });
        })
    }

    let deleteButtons = document.querySelectorAll('.delete');

    if (deleteButtons.length > 0) {
        deleteButtons.forEach((deleteButton) => {
            deleteButton.addEventListener('click', (e) => {
                let productId = e.currentTarget.querySelector('input').value;
                let row = e.currentTarget.closest('.cart__row');

                let del = request(`/cart/delete/${productId}`);
                del
                    .then(response => {
                        if (response.status !== 200) {
                            return Promise.reject();
                        }
                        return response.json();
                    })
                    .then(function (data) {
                        row.classList.add('deleting');
                        setTimeout(() => {
                            row.remove();
                            let quantity = 0;
                            let price = 0;
                            document.querySelectorAll('.cart__row').forEach((el) => {
                                let q = el.querySelector('.quantity').textContent;
                                let p = el.querySelector('.price').textContent;
                                quantity += parseInt(q);
                                price += parseInt(q) * parseFloat(p)
                            })
                            document.querySelector('.result.products').textContent = quantity;
                            document.querySelector('.result.price').textContent = price;

                        }, 300)
                    })
                    .catch((err) => {
                        console.log(err);
                    });
            })
        })
    }
});
