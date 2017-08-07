<?php

use Illuminate\Database\Seeder;

class CleanUpTables extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /* supply current name for the database */
        DB::statement( 'DROP DATABASE IF EXISTS smartic' );
        DB::statement( 'CREATE DATABASE IF NOT EXISTS smartic ' );
    }
}
