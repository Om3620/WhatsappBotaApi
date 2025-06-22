<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>WhatsApp Chatbot UI</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #e5ddd5;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .chatbox {
      width: 400px;
      max-width: 90%;
      background: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
      display: flex;
      flex-direction: column;
    }
    .chat-header {
      background: #075e54;
      color: white;
      padding: 15px;
      font-weight: bold;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
    }
    .chat-body {
      padding: 15px;
      height: 300px;
      overflow-y: auto;
      background: #ece5dd;
    }
    .message {
      margin-bottom: 10px;
      padding: 10px;
      border-radius: 5px;
      max-width: 80%;
    }
    .bot {
      background: #dcf8c6;
      align-self: flex-start;
    }
    .user {
      background: #34b7f1;
      color: white;
      align-self: flex-end;
    }
    .chat-input {
      display: flex;
      padding: 10px;
      border-top: 1px solid #ccc;
    }
    .chat-input input {
      flex: 1;
      padding: 10px;
      border-radius: 20px;
      border: 1px solid #ccc;
      outline: none;
    }
    .chat-input button {
      background: #075e54;
      color: white;
      border: none;
      padding: 10px 15px;
      margin-left: 10px;
      border-radius: 20px;
      cursor: pointer;
    }
  </style>
</head>
<body>

<div class="chatbox">
  <div class="chat-header">WhatsApp Bot</div>
  <div class="chat-body" id="chatBody">
    <div class="message bot"> Hi! I am your WhatsApp bot. How can I help you today?</div>
  </div>
  <div class="chat-input">
    <input type="text" id="userInput" placeholder="Type a message..." />
    <button onclick="sendMessage()">Send</button>
  </div>
</div>

<script>
  function sendMessage() {
    const input = document.getElementById("userInput");
    const message = input.value.trim();
    if (message === "") return;

    const chatBody = document.getElementById("chatBody");

    // Append user message
    const userMessage = document.createElement("div");
    userMessage.className = "message user";
    userMessage.textContent = message;
    chatBody.appendChild(userMessage);

    // Clear input
    input.value = "";

    // Simulate bot response
    setTimeout(() => {
      const botMessage = document.createElement("div");
      botMessage.className = "message bot";

      // Simple response logic
      if (message.toLowerCase().includes("hello")) {
        botMessage.textContent = "Hello! How can I assist you?";
      } else if (message.toLowerCase().includes("course")) {
        botMessage.textContent = "We offer Java, Python, and Web Development courses.";
      } else {
        botMessage.textContent = "I'm not sure I understand. Try asking something else.";
      }

      chatBody.appendChild(botMessage);
      chatBody.scrollTop = chatBody.scrollHeight;
    }, 500);
  }
</script>

</body>
</html>
