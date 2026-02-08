<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    public function run(): void
    {
        $categories = [
            [
                'name' => 'Cameras',
                'slug' => 'cameras',
                'image' => 'https://lh3.googleusercontent.com/aida-public/AB6AXuCuU7ovYqCKCFnhn1QSSjpKQGZlvZoj0Grx55YCUgxeb6yEDGWUIZg4_3o1RLOUK94PHhyM8hR3v0szZFFPg9zWivwqTDuV1XVisFxsWFC1mgE13gLraoz2l3siDDF7TMHCpn6NF251uaIz1dQgZ9j9Qfk1R5zPhZk20iaMhZxBQznMlDI5i7vI5v56BQG28MIo-DJDH7FrDCUF2NZFnRj1Kol2mvzAqGYbHFl9Ec1GBnJgegtTdFdiYEQiknrGB1UVVq81st7egQM',
                'count' => '120+ models',
            ],
            [
                'name' => 'Lenses',
                'slug' => 'lenses',
                'image' => 'https://lh3.googleusercontent.com/aida-public/AB6AXuBCwaBcHDQ1Pxs-c7wZdQsX0VC4GhnCc1gMbPc0Gj4XilJGR8RbKWIUSE3K4Ap2jktQi05UZewZESnppRrhTBEu_BUNQZuKSMn-48uC2BXTSd7B2F9FUkC5Bul81YbHTeQUmVs2arww5ZRD14FCAixP0dvLDfgzkSWZwMPTwXimUNOSkt8kIRqXFmacY5hVtOor7oxu0EX0y5CUKDGOoR4P26uBGGaWfRzW7_pcjOcH1dhQvcRD5x84oyPM5TVkZK1AdrdMHDvyT9k',
                'count' => '300+ options',
            ],
            [
                'name' => 'Lighting',
                'slug' => 'lighting',
                'image' => 'https://lh3.googleusercontent.com/aida-public/AB6AXuCTLLAzkbpdJKu3xI-6OWDFGyrWhhl5uUgN0u-Hjfg6Zzri3JWkDnWwGS6pQqxM2mjuqeEyBXR_MytEMcIkuXL1x71X-8MeRi9e3Ge-1G_KNdI1Sz_991tOi2QjDinF4c4c3rgPMsHxiK2RkwT-5K3OReQBgyvFsUbt6vtF0DlqjDTqQvUJPxK43Vkic334yBaDBK3mRdQ1vlIDoFFnRe_AjeVPt3T4a-nN53AlgU_Gn28FMlZllaKmlbaHOQgopX4Nl1thQM15oaM',
                'count' => '80+ kits',
            ],
            [
                'name' => 'Accessories',
                'slug' => 'accessories',
                'image' => 'https://lh3.googleusercontent.com/aida-public/AB6AXuCiCRbF508BHKrQgsrA1W6_FcU6IzWf8XQZF44LvfHvDQ3lcCbqDEwS1EiDE7wyLsoJ_XkGuHBuNHIAwplmELs6pohJtq_44mZ1PAFKzLlOFJ4G0rYoCwSXs7lUa4CWEs6nOyndkZwsNFYBlh7CXnTwoQQtypSUWnWy9LabWX9ySRyBC92916zXq_PDGOKs3IWbobDHZaNhabI_sGOz9cGV9GdBXwKwnrv7MTFwQapboGFNVVgq7YoIcQluJLCC1WmZA-Tqmmjfi8I',
                'count' => '500+ items',
            ],
        ];

        foreach ($categories as $category) {
            Category::create($category);
        }
    }
}
