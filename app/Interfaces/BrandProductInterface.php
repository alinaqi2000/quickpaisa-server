<?php

namespace App\Interfaces;

interface BrandProductInterface
{
    public function getBrands($index = NULL);
    public function getRandomBrand();
}
