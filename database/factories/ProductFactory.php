<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->word(),
            'published' => $this->faker->boolean(),
            'option_title1' => $this->faker->sentence(),
            'option_title2' => $this->faker->sentence(),
            'option_title3' => $this->faker->sentence(),
            'option_title4' => $this->faker->sentence(),
            'option_des1' => $this->faker->word(),
            'option_des2' => $this->faker->word(),
            'option_des3' => $this->faker->word(),
            'option_des4' => $this->faker->word(),
            'description' => $this->faker->paragraph(),
            'category_id' => rand(1,4),
            'active' => 1,
        ];
    }
}
