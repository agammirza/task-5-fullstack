<?php

namespace App\Models;



class Post 
{
     private static $blog_posts = [
        [
            "title" => "Judul Postingan Kesatu",
            "slug" => "judul-post-kesatu",
            "author" => "Agam Mirza",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum et harum, blanditiis aliquam atque quas commodi praesentium numquam laudantium ex dolor tempora eaque est. Nulla aut consequatur nesciunt maxime fuga magni molestias, aliquid omnis labore necessitatibus soluta accusamus quia quos vitae qui consectetur assumenda officiis quibusdam! Tempora, nobis aliquam. Commodi mollitia eius, possimus quis nihil quam rerum amet libero veritatis? Repellendus exercitationem quod dolorem voluptate iure sapiente provident aliquam repellat. Eaque sit ipsa maxime labore mollitia, ipsum pariatur harum ex."
        ],
        [
            "title" => "Judul Postingan Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Agam Mirza",
            "body" => "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatum et harum, blanditiis aliquam atque quas commodi praesentium numquam laudantium ex dolor tempora eaque est. Nulla aut consequatur nesciunt maxime fuga magni molestias, aliquid omnis labore necessitatibus soluta accusamus quia quos vitae qui consectetur assumenda officiis quibusdam! Tempora, nobis aliquam. Commodi mollitia eius, possimus quis nihil quam rerum amet libero veritatis? Repellendus exercitationem quod dolorem voluptate iure sapiente provident aliquam repellat. Eaque sit ipsa maxime labore mollitia, ipsum pariatur harum ex."
        ],
    
        ];

    public static function all() 
    {
        return collect(self::$blog_posts);
    }  

    public static function find($slug) 
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);   

    }  
}
