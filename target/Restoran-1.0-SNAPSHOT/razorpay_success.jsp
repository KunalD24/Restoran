<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
  </head>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }
    </style>
    <body>
      <div class="card">      
        <h1>Success</h1> 
        <p>We received your purchase payment;<br/> we'll be in touch shortly!</p>
        <button style="background-color: #88B04B;padding: 10 10;margin-top: 10px;">
            <a href="index.jsp" style="color:white;text-decoration: none;">Return</a>
        </button>
      </div>
        <form id="paymentForm">      
            <input type="text" id="amountInput" name="amount" value="">
        </form> 
      <script>
        var options = {
            key: '<%= request.getAttribute("key") %>',
            amount: '<%= request.getAttribute("amount") %>',                        
            order_id: '<%= request.getAttribute("orderId") %>',
            handler: function (response) {
                // Handle the payment success callback
                alert('Payment successful. Transaction ID: ' + response.razorpay_payment_id);
                
                document.getElementById('amountInput').value = options.amount;
                // Now, submit the form to the server to complete the booking process
//                document.getElementById('paymentForm').submit();
            }
        };
        var rzp = new Razorpay(options);
        rzp.on('payment.failed', function (response) {
            // Handle the payment failure callback
            alert('Payment failed. Reason: ' + response.error.description);
        });
    </script>
    </body>
</html>