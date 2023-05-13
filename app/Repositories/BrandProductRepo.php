<?php

namespace App\Repositories;

use App\Interfaces\BrandProductInterface;


class BrandProductRepo implements BrandProductInterface
{
    private $faker;
    public function __construct($faker)
    {
        $this->faker = $faker;
    }
    private $brands = [

        [
            "name" => "Adidas",
            "homepage" => "adidas.com",
            "avatar" => "adidas-optimized-logo.png",
        ],
        [
            "name" => "airbnb",
            "homepage" => "airbnb.com",
            "avatar" => "airbnb-logo.png",
        ],
        [
            "name" => "All Day Baby LA",
            "homepage" => "alldaybabyla.com",
            "avatar" => "all-day-baby-optimized-logo.png",
        ],
        [
            "name" => "Amazon",
            "homepage" => "amazon.com",
            "avatar" => "amazon-optimized-logo.png",
        ],
        [
            "name" => "Apple",
            "homepage" => "apple.com",
            "avatar" => "apple-optimized-logo.png",
        ],

        [
            "name" => "Audi",
            "homepage" => "audi.com",
            "avatar" => "audi-optimized-logo.png",
        ],
        [
            "name" => "BARBEQUE NATION",
            "homepage" => "barbequenation.com",
            "avatar" => "barbeque-nation-logo.png",
        ],
        [
            "name" => "blinkit",
            "homepage" => "blinkit.com",
            "avatar" => "blinkit-optimized-logo.png",
        ],
        [
            "name" => "BMW",
            "homepage" => "bmw.com",
            "avatar" => "bmw-logo.png",
        ],
        [
            "name" => "BOX8",
            "homepage" => "box8.com",
            "avatar" => "box8-logo.png",
        ],
        [
            "name" => "Budweiser",
            "homepage" => "us.budweiser.com",
            "avatar" => "budweiser-logo.png",
        ],
        [
            "name" => "BURGER KING",
            "homepage" => "burgerking.com",
            "avatar" => "burger-king-logo.jpg",
        ],
        [
            "name" => "Cartier",
            "homepage" => "cartier.com",
            "avatar" => "cartier-optimized-logo.png",
        ],
        [
            "name" => "Chai Cult",
            "homepage" => "chaicult.com",
            "avatar" => "chai-cult-logo.png",
        ],
        [
            "name" => "Chanel",
            "homepage" => "chanel.com",
            "avatar" => "chanel-optimized-logo.png",
        ],
        [
            "name" => "Cheezzo by Pi",
            "homepage" => "cheezzo.com",
            "avatar" => "cheezzo-by-pi-optimized-logo.png",
        ],
        [
            "name" => "ChowNow",
            "homepage" => "chownow.com",
            "avatar" => "chownow-logo.png",
        ],
        [
            "name" => "Corona",
            "homepage" => "coronausa.com",
            "avatar" => "corona-logo.png",
        ],
        [
            "name" => "COSTCO",
            "homepage" => "costco.com",
            "avatar" => "costco-logo.jpg",
        ],
        [
            "name" => "CRED",
            "homepage" => "cred.club",
            "avatar" => "cred-optimized-logo.png",
        ],
        [
            "name" => "cult.fit",
            "homepage" => "cult.fit",
            "avatar" => "cult-fit-optimized-logo.png",
        ],
        [
            "name" => "deliveroo",
            "homepage" => "deliveroo.com",
            "avatar" => "deliveroo-logo.png",
        ],
        [
            "name" => "Domino's Pizza",
            "homepage" => "dominos.co.in",
            "avatar" => "dominos-logo.jpg",
        ],
        [
            "name" => "DOORDASH",
            "homepage" => "doordash.com",
            "avatar" => "doordash-logo.jpg",
        ],
        [
            "name" => "Dunzo",
            "homepage" => "dunzo.com",
            "avatar" => "dunzo-logo.png",
        ],
        [
            "name" => "ebay",
            "homepage" => "ebay.com",
            "avatar" => "ebay-logo.png",
        ],
        [
            "name" => "EREWHON",
            "homepage" => "erewhonmarket.com",
            "avatar" => "erewhon-logo.png",
        ],
        [
            "name" => "FedEx",
            "homepage" => "fedex.com",
            "avatar" => "fedex-logo.png",
        ],
        [
            "name" => "flipkart",
            "homepage" => "flipkart.com",
            "avatar" => "flipkart-logo.png",
        ],
        [
            "name" => "GUCCI",
            "homepage" => "gucci.com",
            "avatar" => "gucci-optimized-logo.png",
        ],
        [
            "name" => "Heineken",
            "homepage" => "heineken.com",
            "avatar" => "heineken-logo.png",
        ],
        [
            "name" => "Hermes",
            "homepage" => "hermes.com",
            "avatar" => "hermes-logo.png",
        ],
        [
            "name" => "Home Depot",
            "homepage" => "homedepot.com",
            "avatar" => "home-depot-logo.png",
        ],
        [
            "name" => "Hewlett-Packard",
            "homepage" => "hp.com",
            "avatar" => "hp-logo.png",
        ],
        [
            "name" => "IKEA",
            "homepage" => "ikea.com",
            "avatar" => "ikea-logo.png",
        ],
        [
            "name" => "JIMIS BURGER",
            "homepage" => "facebook.com/jimisburger/",
            "avatar" => "jimis-burger-optimized-logo.jpg",
        ],
        [
            "name" => "Kellogg's",
            "homepage" => "kelloggs.com",
            "avatar" => "kelloggs-logo.png",
        ],
        [
            "name" => "KFC",
            "homepage" => "kfc.com",
            "avatar" => "kfc-optimized-logo.png",
        ],
        [
            "name" => "LEGO",
            "homepage" => "lego.com",
            "avatar" => "lego-logo.png",
        ],
        [
            "name" => "Louis Vuitton",
            "homepage" => "louisvuitton.com",
            "avatar" => "louis-vuitton-optimized-logo.png",
        ],
        [
            "name" => "lyft",
            "homepage" => "lyft.com",
            "avatar" => "lyft-logo.png",
        ],
        [
            "name" => "McDonalds",
            "homepage" => "mcdonalds.com",
            "avatar" => "mcdonalds-logo.png",
        ],
        [
            "name" => "meesho",
            "homepage" => "meesho.com",
            "avatar" => "meesho-logo.png",
        ],
        [
            "name" => "Mercedes-Bbenz",
            "homepage" => "mercedes-benz.com",
            "avatar" => "mercedes-benz-logo.png",
        ],
        [
            "name" => "Netflix",
            "homepage" => "netflix.com",
            "avatar" => "netflix-optimized-logo.png",
        ],
        [
            "name" => "Nike",
            "homepage" => "nike.com",
            "avatar" => "nike-optimized-logo.png",
        ],
        [
            "name" => "PBJ.LA",
            "homepage" => "pbj.la",
            "avatar" => "pbjla-logo.png",
        ],
        [
            "name" => "PharmEasy",
            "homepage" => "pharmeasy.com",
            "avatar" => "pharmeasy-logo.png",
        ],
        [
            "name" => "Porsche",
            "homepage" => "porsche.com",
            "avatar" => "porsche-optimized-logo.png",
        ],
        [
            "name" => "Red Bull",
            "homepage" => "redbull.com",
            "avatar" => "red-bull-logo.png",
        ],
        [
            "name" => "ROLEX",
            "homepage" => "rolex.com",
            "avatar" => "rolex-optimized-logo.png",
        ],
        [
            "name" => "snapdeal",
            "homepage" => "snapdeal.com",
            "avatar" => "snapdeal-logo.png",
        ],
        [
            "name" => "Starbucks",
            "homepage" => "starbucks.com",
            "avatar" => "starbucks-logo.png",
        ],
        [
            "name" => "theobroma",
            "homepage" => "theobroma.com",
            "avatar" => "theobroma-logo.jpg",
        ],
        [
            "name" => "Uber Eats",
            "homepage" => "ubereats.com",
            "avatar" => "uber-eats-logo.jpg",
        ],
        [
            "name" => "Uber",
            "homepage" => "uber.com",
            "avatar" => "uber-optimized-logo.png",
        ],
        [
            "name" => "ups",
            "homepage" => "ups.com",
            "avatar" => "ups-optimized-logo.png",
        ],
        [
            "name" => "Walmart",
            "homepage" => "walmart.com",
            "avatar" => "walmart-logo.png",
        ],
        [
            "name" => "ZARA",
            "homepage" => "zara.com",
            "avatar" => "zara-optimized-logo.png",
        ],
        [
            "name" => "Zomato",
            "homepage" => "zomato.com",
            "avatar" => "zomato-logo.png",
        ]

    ];


    public function getBrands($index = NULL)
    {
        if ($index != NULL)
            return array_merge($this->brands[$index], ["walletAddress" => $this->faker->regexify('[A-Za-z0-9]{34}'),]);

        return array_map(function ($brand) {
            return array_merge($brand, ["walletAddress" => $this->faker->regexify('[A-Za-z0-9]{34}'),]);
        }, $this->brands);
    }
    public function getRandomBrand()
    {
        return array_merge($this->brands[rand(0, count($this->brands) - 1)], ["walletAddress" => $this->faker->regexify('[A-Za-z0-9]{34}'),]);
    }
}
