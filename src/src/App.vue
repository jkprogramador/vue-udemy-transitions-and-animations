<template>
    <div class="row my-4">
        <div class="col">
            <button
                @click="flag = !flag"
                class="btn btn-success btn-lg"
                type="button"
            >
                Toggle
            </button>

            <transition name="fade" mode="out-in">
                <h2 v-if="flag" key="main" class="display-2 my-3">
                    Hello World!
                </h2>
                <h2 class="display-2 my-3" v-else key="secondary">
                    Another hello!
                </h2>
            </transition>
        </div>
    </div>
</template>

<script>
export default {
    name: "App",
    data() {
        return {
            flag: false,
        };
    },
};
</script>

<style>
.fade-enter-from {
    opacity: 0;
}

.fade-enter-active {
    transition: all 0.25s linear;
}

.fade-leave-to {
    transition: all 0.25s linear;
    opacity: 0;
}
</style>