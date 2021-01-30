function closeMessage() { 
   const msg = document.getElementById("msg-article");
   msg.classList.add("is-hidden");
}

document.addEventListener('turbolinks:load', () => {  
  const clickButton = document.getElementById("close-message-btn");  

  clickButton.addEventListener("click", closeMessage); 
});