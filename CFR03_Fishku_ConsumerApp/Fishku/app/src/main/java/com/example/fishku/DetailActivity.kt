package com.example.fishku

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ImageView
import android.widget.TextView
import com.bumptech.glide.Glide

class DetailActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_detail)

        val titleView = findViewById<TextView>(R.id.tv_dtl_nama)
        val imageView = findViewById<ImageView>(R.id.iv_dtl_photo)
        val aboutView = findViewById<TextView>(R.id.textViewContentAboutLele)
        val nutrisiView = findViewById<TextView>(R.id.textViewContentNutrisi)
        val pengolahanView = findViewById<TextView>(R.id.textViewContentPengolahan)
        val khasiatView = findViewById<TextView>(R.id.textViewContentKhasiat)

        // Retrieve data from Intent extras
        val title = intent.getStringExtra("title")
        val pictureResId = intent.getIntExtra("picture", R.drawable.lele)
        val about = intent.getStringExtra("about")
        val nutrisi = intent.getStringExtra("nutrisi")
        val pengolahan = intent.getStringExtra("pengolahan")
        val khasiat = intent.getStringExtra("khasiat")

        // Set the data to the UI elements
        titleView.text = title
        Glide.with(this).load(pictureResId).into(imageView)
        aboutView.text = about
        nutrisiView.text = nutrisi
        pengolahanView.text = pengolahan
        khasiatView.text = khasiat
    }


}