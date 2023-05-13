<?php

namespace App\Repositories;


class BrandRepo
{
    private $brands = [

        [
            "name" => "Adidas",
            "homepage" => "adidas.com",
            "avatar" => "adidas-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "airbnb",
            "homepage" => "airbnb.com",
            "avatar" => "airbnb-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "All Day Baby LA",
            "homepage" => "alldaybabyla.com",
            "avatar" => "all-day-baby-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Amazon",
            "homepage" => "amazon.com",
            "avatar" => "amazon-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Apple",
            "homepage" => "apple.com",
            "avatar" => "apple-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],

        [
            "name" => "Audi",
            "homepage" => "audi.com",
            "avatar" => "audi-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "BARBEQUE NATION",
            "homepage" => "barbequenation.com",
            "avatar" => "barbeque-nation-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "blinkit",
            "homepage" => "blinkit.com",
            "avatar" => "blinkit-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "BMW",
            "homepage" => "bmw.com",
            "avatar" => "bmw-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "BOX8",
            "homepage" => "box8.com",
            "avatar" => "box8-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Budweiser",
            "homepage" => "us.budweiser.com",
            "avatar" => "budweiser-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "BURGER KING",
            "homepage" => "burgerking.com",
            "avatar" => "burger-king-logo.jpg",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Cartier",
            "homepage" => "cartier.com",
            "avatar" => "cartier-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Chai Cult",
            "homepage" => "chaicult.com",
            "avatar" => "chai-cult-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Chanel",
            "homepage" => "chanel.com",
            "avatar" => "chanel-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Cheezzo by Pi",
            "homepage" => "cheezzo.com",
            "avatar" => "cheezzo-by-pi-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "ChowNow",
            "homepage" => "chownow.com",
            "avatar" => "chownow-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Corona",
            "homepage" => "coronausa.com",
            "avatar" => "corona-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "COSTCO",
            "homepage" => "costco.com",
            "avatar" => "costco-logo.jpg",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "CRED",
            "homepage" => "cred.club",
            "avatar" => "cred-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "cult.fit",
            "homepage" => "cult.fit",
            "avatar" => "cult-fit-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "deliveroo",
            "homepage" => "deliveroo.com",
            "avatar" => "deliveroo-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Domino's Pizza",
            "homepage" => "dominos.co.in",
            "avatar" => "dominos-logo.jpg",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "DOORDASH",
            "homepage" => "doordash.com",
            "avatar" => "doordash-logo.jpg",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Dunzo",
            "homepage" => "dunzo.com",
            "avatar" => "dunzo-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "ebay",
            "homepage" => "ebay.com",
            "avatar" => "ebay-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "EREWHON",
            "homepage" => "erewhonmarket.com",
            "avatar" => "erewhon-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "FedEx",
            "homepage" => "fedex.com",
            "avatar" => "fedex-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "flipkart",
            "homepage" => "flipkart.com",
            "avatar" => "flipkart-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "GUCCI",
            "homepage" => "gucci.com",
            "avatar" => "gucci-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Heineken",
            "homepage" => "heineken.com",
            "avatar" => "heineken-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Hermes",
            "homepage" => "hermes.com",
            "avatar" => "hermes-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Home Depot",
            "homepage" => "homedepot.com",
            "avatar" => "home-depot-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Hewlett-Packard",
            "homepage" => "hp.com",
            "avatar" => "hp-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "IKEA",
            "homepage" => "ikea.com",
            "avatar" => "ikea-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "JIMIS BURGER",
            "homepage" => "facebook.com/jimisburger/",
            "avatar" => "jimis-burger-optimized-logo.jpg",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Kellogg's",
            "homepage" => "kelloggs.com",
            "avatar" => "kelloggs-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "KFC",
            "homepage" => "kfc.com",
            "avatar" => "kfc-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "LEGO",
            "homepage" => "lego.com",
            "avatar" => "lego-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Louis Vuitton",
            "homepage" => "louisvuitton.com",
            "avatar" => "louis-vuitton-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "lyft",
            "homepage" => "lyft.com",
            "avatar" => "lyft-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "McDonalds",
            "homepage" => "mcdonalds.com",
            "avatar" => "mcdonalds-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "meesho",
            "homepage" => "meesho.com",
            "avatar" => "meesho-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Mercedes-Bbenz",
            "homepage" => "mercedes-benz.com",
            "avatar" => "mercedes-benz-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Netflix",
            "homepage" => "netflix.com",
            "avatar" => "netflix-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Nike",
            "homepage" => "nike.com",
            "avatar" => "nike-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "PBJ.LA",
            "homepage" => "pbj.la",
            "avatar" => "pbjla-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "PharmEasy",
            "homepage" => "pharmeasy.com",
            "avatar" => "pharmeasy-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Porsche",
            "homepage" => "porsche.com",
            "avatar" => "porsche-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Red Bull",
            "homepage" => "redbull.com",
            "avatar" => "red-bull-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "ROLEX",
            "homepage" => "rolex.com",
            "avatar" => "rolex-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "snapdeal",
            "homepage" => "snapdeal.com",
            "avatar" => "snapdeal-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Starbucks",
            "homepage" => "starbucks.com",
            "avatar" => "starbucks-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "theobroma",
            "homepage" => "theobroma.com",
            "avatar" => "theobroma-logo.jpg",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Uber Eats",
            "homepage" => "ubereats.com",
            "avatar" => "uber-eats-logo.jpg",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Uber",
            "homepage" => "uber.com",
            "avatar" => "uber-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "ups",
            "homepage" => "ups.com",
            "avatar" => "ups-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Walmart",
            "homepage" => "walmart.com",
            "avatar" => "walmart-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "ZARA",
            "homepage" => "zara.com",
            "avatar" => "zara-optimized-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ],
        [
            "name" => "Zomato",
            "homepage" => "zomato.com",
            "avatar" => "zomato-logo.png",
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        ]

    ];


    public function getBrands($index = NULL)
    {
        if ($index != NULL)
            return $this->brands[$index];
        return $this->brands;
    }
    public function getRandomBrand($index = NULL)
    {

        return $this->brands[rand(0, count($this->brands))];
    }
}
