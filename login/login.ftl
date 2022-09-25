<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??; section>



<#if section = "header">
    <#elseif section = "form">
    <div id="kc-form">




<div class="flex min-h-full flex-col justify-center py-12 sm:px-6 lg:px-8">
  <div class="sm:mx-auto sm:w-full sm:max-w-md">
    <img class="mx-auto h-12 w-auto" src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=600" alt="Your Company">
    <h2 class="mt-6 text-center text-3xl font-bold tracking-tight text-gray-900">Sign in to your account</h2>
        <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
<p class="mt-2 text-center text-sm text-gray-600">
      Or
      <a href="${url.registrationUrl}" class="font-medium text-indigo-600 hover:text-indigo-500">start your 14-day free trial</a>
    </p>
  </div>
 </#if>



  <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
    <div class="bg-white py-8 px-4 shadow-2xl sm:rounded-lg sm:px-10">





 <#if realm.password>
        <#if realm.password>

            <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
        <div>
          <label for="email" class="block text-sm font-medium text-gray-700">Email address</label>
          <div class="mt-1">
            <input placeholder="Email address" id="username" name="username" value="${(login.username!'')}" type="text" autocomplete="email"  class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
          </div>
                      <#if messagesPerField.existsError('username','password')>
                            <span id="input-error" class="font-medium text-red-600 hover:text-indigo-500" aria-live="polite">
                                    ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </span>
                        </#if>

        </div>

        <div style="margin-top:10px">
          <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
          <div class="mt-1">
            <input placeholder="password" id="password" name="password" type="password" autocomplete="current-password"  class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
            </div>

                    <#if usernameHidden?? && messagesPerField.existsError('username','password')>
                        <span id="input-error" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                        </span>
                    </#if>

        </div>

        <div class="flex items-center justify-between">
<!--
          <div class="flex items-center">

                        <#if realm.rememberMe && !usernameHidden??>
                            <div class="checkbox">
                                <label>
                                    <#if login.rememberMe??>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}
                                    <#else>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}
                                    </#if>
                                </label>
                            </div>
                        </#if>



            <input id="remember-me" name="rememberMe" id="rememberMe" type="checkbox" class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500">
            <label for="remember-me" class="ml-2 block text-sm text-gray-900">Remember me</label>
          </div>
--!>
          <div class="text-sm" style="margin-top:10px">
            <a href="${url.loginResetCredentialsUrl}" class="font-medium text-indigo-600 hover:text-indigo-500" >Forgot your password?</a>
          </div>
        </div>

        <div style="margin-top:10px">
          <button type="submit" class="sendButton disabled:opacity-25 flex w-full justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">Sign in</button>
        </div>
            </form>
</#if>
        </#if>

      <div class="mt-6">
        <div class="relative">
          <div class="absolute inset-0 flex items-center">
            <div class="w-full border-t border-gray-300"></div>
          </div>
          <div class="relative flex justify-center text-sm">
            <span class="bg-white px-2 text-gray-500">Or continue with</span>
          </div>
        </div>

        <div class="mt-6 grid grid-cols-3 gap-3">

        <#list social.providers as p>

          <#if p.alias == 'google'>
          <div>
            <a id="social-${p.alias}" href="${p.loginUrl}" class="inline-flex w-full justify-center rounded-md border border-gray-300 bg-white py-2 px-4 text-sm font-medium text-gray-500 shadow-sm hover:bg-gray-50">
              <span class="sr-only">Sign in with GitHub</span>
                <svg class="h-5 w-5" fill="currentColor" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 30 30" width="30px" height="30px">    <path d="M 15.003906 3 C 8.3749062 3 3 8.373 3 15 C 3 21.627 8.3749062 27 15.003906 27 C 25.013906 27 27.269078 17.707 26.330078 13 L 25 13 L 22.732422 13 L 15 13 L 15 17 L 22.738281 17 C 21.848702 20.448251 18.725955 23 15 23 C 10.582 23 7 19.418 7 15 C 7 10.582 10.582 7 15 7 C 17.009 7 18.839141 7.74575 20.244141 8.96875 L 23.085938 6.1289062 C 20.951937 4.1849063 18.116906 3 15.003906 3 z"/></svg>
            </a>
          </div>
            </#if>


          <#if p.alias == 'facebook'>
          <div>
            <a id="social-${p.alias}" href="${p.loginUrl}" class="inline-flex w-full justify-center rounded-md border border-gray-300 bg-white py-2 px-4 text-sm font-medium text-gray-500 shadow-sm hover:bg-gray-50">
              <span class="sr-only">Sign in with Facebook</span>
              <svg class="h-5 w-5" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                <path fill-rule="evenodd" d="M20 10c0-5.523-4.477-10-10-10S0 4.477 0 10c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V10h2.54V7.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V10h2.773l-.443 2.89h-2.33v6.988C16.343 19.128 20 14.991 20 10z" clip-rule="evenodd" />
              </svg>
            </a>
          </div>
            </#if>




          <#if p.alias == 'twitter'>
          <div>
            <a id="social-${p.alias}" href="${p.loginUrl}" class="inline-flex w-full justify-center rounded-md border border-gray-300 bg-white py-2 px-4 text-sm font-medium text-gray-500 shadow-sm hover:bg-gray-50">
              <span class="sr-only">Sign in with Twitter</span>
              <svg class="h-5 w-5" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                <path d="M6.29 18.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0020 3.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.073 4.073 0 01.8 7.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 010 16.407a11.616 11.616 0 006.29 1.84" />
              </svg>
            </a>
          </div>
            </#if>

          <#if p.alias == 'github'>
          <div>
            <a id="social-${p.alias}" href="${p.loginUrl}" class="inline-flex w-full justify-center rounded-md border border-gray-300 bg-white py-2 px-4 text-sm font-medium text-gray-500 shadow-sm hover:bg-gray-50">
              <span class="sr-only">Sign in with GitHub</span>
              <svg class="h-5 w-5" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                <path fill-rule="evenodd" d="M10 0C4.477 0 0 4.484 0 10.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0110 4.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.203 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.942.359.31.678.921.678 1.856 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0020 10.017C20 4.484 15.522 0 10 0z" clip-rule="evenodd" />
              </svg>
            </a>
          </div>
            </#if>




        </#list>




        </div>
      </div>
    </div>
  </div>
</div>

<script>
$(document).ready(function(){
        if($('#username').val() == "" && $('#password').val() == "")
{
    $('.sendButton').attr('disabled',true);
$('.sendButton').prop('disabled', true);
}



    $('#username').keyup(function(){
        if($(this).val() !== "" && $('#password').val() !== "")
            $('.sendButton').attr('disabled', false);
        else
            $('.sendButton').attr('disabled',true);
    })

    $('#password').keyup(function(){
        if($(this).val() !== "" && $('#username').val() !== "")
            $('.sendButton').attr('disabled', false);
        else
            $('.sendButton').attr('disabled',true);
    })

});
</script>


















    </div>

    </#if>

</@layout.registrationLayout>
