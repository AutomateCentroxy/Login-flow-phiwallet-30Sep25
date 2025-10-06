<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phone Verification Options</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" type="text/css">
  </head>
  <body>
    <div class="h-screen bg-gray-100 py-20 px-3">
      <div class="container mx-auto">
        <div class="max-w-sm mx-auto md:max-w-lg">
          <div class="bg-white rounded-lg shadow-lg p-6 text-center">
            <h1 class="text-2xl font-bold mb-4">Phone Verification Options</h1>

            [#if errorMessage??]
              <div role="alert" class="p-4 mb-4 text-sm text-red-800 rounded-lg bg-red-50">
                ${errorMessage}
              </div>
            [/#if]

            <p class="mb-6">Please choose an option to continue:</p>

            <form method="post" class="space-y-4">
              <!-- Verify OTP button -->
              <input type="hidden" name="changePhone" value="no">
              <button type="submit" name="verifyOtp" value="yes"
                class="w-full bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded-lg">
                Verify via SMS OTP
              </button>

              <!-- Change phone button -->
              <input type="hidden" name="verifyOtp" value="no">
              <button type="submit" name="changePhone" value="yes"
                class="w-full bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded-lg">
                Change Phone Number
              </button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
