package com.example.fishku

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle

class DecetionResultActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_decetion_result)

        val imageUri = intent.getStringExtra("EXTRA_IMAGE_URI")
    }
}