import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/animate.css',
                'resources/css/aos.css',
                'resources/css/bootstrap.min.css',
                'resources/css/bootstrap-datepicker.css',
                'resources/css/flaticon.css',
                'resources/css/icomoon.css',
                'resources/css/ionicons.min.css',
                'resources/css/jquery.timepicker.css',
                'resources/css/magnific-popup.css',
                'resources/css/open-iconic-bootstrap.min.css',
                'resources/css/owl.carousel.min.css',
                'resources/css/owl.theme.default.min.css',
                'resources/css/style.css',
                'resources/js/bootstrap.js',
                'resources/js/google-map.js',
                'resources/js/main.js',
                'resources/js/range.js',
            ],
            refresh: true,
        }),
    ],
});
