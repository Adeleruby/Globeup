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
  fetch(`http://localhost:3000/api/cities/${query}`)
    .then(response => response.json())
    .then((data) => {
      data.forEach((result) => {
        const city = `<li>${result.name}</li>`;
        results.insertAdjacentHTML("beforeend", city);
      });
    });
};


const eventListen = (query) => {
  form.addEventListener("keyup", (event) => {
  results.innerHTML = "";
  apiCall(event.currentTarget.value);
  });
};



export { search };
export { eventListen };
