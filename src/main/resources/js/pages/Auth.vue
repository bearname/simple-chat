<template>
    <v-container>
        Необходимо авторизоваться через
        <a href="/login">Google</a>
        <form action="?" method="POST">
            <div class="g-recaptcha" data-sitekey="6LeVQAcaAAAAAKN_gN6TE9lOtEtD3oXjBg9cRmKK"></div>
            <br/>
            <input type="submit" value="Submit">
        </form>
    </v-container>
</template>

<script>
    export default {
        name: 'Auth',
    }
</script>

<style scoped>

</style>
