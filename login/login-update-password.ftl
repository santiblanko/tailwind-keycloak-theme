<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">
    <#elseif section = "form">


<div class="flex min-h-full" style="min-height:100vh">
  <div class="flex flex-1 flex-col justify-center py-12 px-4 sm:px-6 lg:flex-none lg:px-20 xl:px-24">
    <div class="mx-auto w-full max-w-sm lg:w-96">
      <div>
        <img class="h-12 w-auto" src="https://tailwindui.com/img/logos/mark.svg?color=black&shade=600" alt="Your Company">
        <h2 class="mt-6 text-3xl font-bold tracking-tight text-gray-900">Reset your password</h2>
      </div>

      <div class="mt-8">
        <div>


          <div class="relative mt-6">
            <div class="absolute inset-0 flex items-center" aria-hidden="true">
              <div class="w-full border-t border-gray-300"></div>
            </div>
            <div class="relative flex justify-center text-sm">
            </div>
          </div>
        </div>

        <div class="mt-6">
          <form  action="${url.loginAction}" method="POST" class="space-y-6">
            <div>
              <label for="email" class="block text-sm font-medium text-gray-700">Password</label>
              <div class="mt-1">
                <input id="password" placeholder="Password" name="password-new" type="password" required class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-black focus:outline-none focus:ring-black sm:text-sm">
              </div>

                    <#if messagesPerField.existsError('password')>
                        <span id="input-error-password" class="font-medium text-red-600 hover:text-indigo-500" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password'))?no_esc}
                        </span>
                    </#if>

            </div>

            <div class="space-y-1">
              <label for="password" class="block text-sm font-medium text-gray-700">Confirm Password</label>
              <div class="mt-1">
                <input id="password" placeholder="Confirm Password"  name="password-confirm" type="password" autocomplete="current-password" required class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-black focus:outline-none focus:ring-black sm:text-sm">
              </div>

                    <#if messagesPerField.existsError('password-confirm')>
                        <span id="input-error-password" class="font-medium text-red-600 hover:text-indigo-500" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                        </span>
                    </#if>

            </div>


            <div>
              <button type="submit" class="flex w-full justify-center rounded-md border border-transparent bg-black py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-black focus:outline-none focus:ring-2 focus:ring-black focus:ring-offset-2">Sign in</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="relative hidden w-0 flex-1 lg:block">
    <img class="absolute inset-0 h-full w-full object-cover" src="https://maxoffsky.com/word/wp-content/uploads/2014/04/teal.jpg" alt="">
  </div>
</div>






    </#if>
</@layout.registrationLayout>