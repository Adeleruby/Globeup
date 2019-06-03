function scrollLastMessageIntoView() {
  let messages = document.querySelectorAll('.message');
  let lastMessage = messages[messages.length - 1];

  if (lastMessage !== undefined) {
    // lastMessage.scrollIntoView();
    lastMessage.scrollIntoView({block: "end"});
  }
}
