<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Setting>
 */
class SettingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'email' => 'chris.richard.halim@gmail.com',
            'phone' => '123 1234 1234',
            'phone2' => '123 1234 1234',
            'address' => 'おすし',
            'map' => 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d103801.1567688253!2d139.69330949404315!3d35.608341373911585!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188afb30700001%3A0xc59814627801a875!2sSushiro!5e0!3m2!1sen!2sid!4v1652059284888!5m2!1sen!2sid',
            'twitter' => 'https://twitter.com/kurokikurisu',
            'instagram' => '#',
            'linkedin' => 'https://www.linkedin.com/in/haneure',
            'github' => 'https://github.com/haneure',
            'youtube' => 'https://www.youtube.com/channel/UCatpnFjN8n5lbAQbFWnpOJA'
        ];
    }
}
