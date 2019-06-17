<?php

namespace App\Exceptions;

use Exception;

class ProductNotBelongToUser extends Exception
{
    public function render(){
        return ['error' => 'Product not belongs to user'];
    }
}
