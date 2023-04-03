import consumer from "channels/consumer"

consumer.subscriptions.create("FeedbacksChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    if (data.rating < 3) {
      const feedbacks = document.querySelector("#feedbacks")
      feedbacks.insertAdjacentHTML("afterbegin", `
        <div>
          <p>${data.description}</p>
          <p>Rating: ${data.rating}</p>
          <p>Created by: ${data.user.email}</p>
          <form action="/admin/feedbacks/${data.id}" method="post">
            <input type="hidden" name="_method" value="put">
            <textarea name="feedback[reply]" rows="3"></textarea>
            <input type="submit">
            </form>
            </div>
          `)
        }
  }
});
