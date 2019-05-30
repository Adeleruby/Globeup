const search = () => {
  $('.uis-form-icon').on('click', function(){
    $(this).addClass('uis-active');

    $(this).siblings('input').addClass('uis-active');
    $(this).siblings('input').focus();

    $(this).siblings('input').focusout(function(e){
      $(this).removeClass('uis-active');
      $(this).siblings('i').removeClass('uis-active');
      $(this).val('');
    })
  })
};

const results = document.getElementById("results");
const form = document.querySelector('.uis-input');

const apiCall = (query) => {
  fetch(`/api/cities/${query}`)
    .then(response => response.json())
    .then((data) => {
      data.forEach((result) => {
        const city = `<li> <i class="far fa-building"></i> <a href="/cities/${result.id}"> ${result.name}</a></li>`;
        results.insertAdjacentHTML("beforeend", city);
      });
    });
};

const list = document.querySelector(".d-none")

const eventListen = (query) => {
  form.addEventListener("keyup", (event) => {
  results.innerHTML = "";
  apiCall(event.currentTarget.value);
  list.classList.remove("d-none")
  });
};



export { search };
export { eventListen };
