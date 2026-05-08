<?php

class Controller {
    public function view($view, $data = []) {
        // Extract data to be used in view
        extract($data);

        if (file_exists('views/' . $view . '.php')) {
            require_once 'views/' . $view . '.php';
        } else {
            die("View does not exist.");
        }
    }
    
    public function redirect($url) {
        header('Location: ' . URLROOT . '/' . $url);
        exit;
    }
}
