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

            <!-- <transition name="fade" mode="out-in">
                <h2 v-if="flag" key="main" class="display-2 my-3">
                    Hello World!
                </h2>
                <h2 class="display-2 my-3" v-else key="secondary">
                    Another hello!
                </h2>
            </transition> -->

            <transition name="zoom">
                <h2 v-if="flag" class="display-2">Hello</h2>
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
h2 {
    width: 400px;
    padding: 20px;
}
.fade-enter-from {
    opacity: 0;
}

.fade-enter-active {
    transition: all 1s linear;
}

.fade-leave-to {
    transition: all 1s linear;
    opacity: 0;
}
.zoom-enter-from {
    opacity: 0;
}
.zoom-leave-to {
    opacity: 0;
}
.zoom-enter-active {
    animation: zoom-in 1s linear forwards;
    transition: all 1s linear;
}

.zoom-leave-active {
    animation: zoom-out 1s linear forwards;
    transition: all 1s linear;
}
@keyframes zoom-in {
    from {
        transform: scale(0, 0);
    }
    to {
        transform: scale(1, 1);
    }
}
@keyframes zoom-out {
    from {
        transform: scale(1, 1);
    }
    to {
        transform: scale(0, 0);
    }
}
</style>