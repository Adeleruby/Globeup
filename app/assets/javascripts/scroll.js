function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];
  console.log(lastMessage);

  if (lastMessage !== undefined) {
    // lastMessage.scrollIntoView();
    lastMessage.scrollIntoView({block: "end"});
  }
}
