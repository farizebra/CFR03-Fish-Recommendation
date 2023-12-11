package com.example.fishku.view.welcome

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.fishku.R
import com.example.fishku.databinding.ActivityWelcomeBinding
import com.example.fishku.view.daftar.DaftarActivity
import com.example.fishku.view.masuk.MasukActivity

class WelcomeActivity : AppCompatActivity() {
    private lateinit var binding: ActivityWelcomeBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityWelcomeBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // Menggunakan binding untuk merujuk ke elemen UI
        binding.imageViewWelcome.setImageResource(R.drawable.ic_launcher_foreground)
        binding.textViewWelcome.text = "Selamat datang di FISHKU"

        binding.buttonMasuk.setOnClickListener {
            val intent = Intent(this, MasukActivity::class.java)
            startActivity(intent)
        }

        binding.buttonDaftar.setOnClickListener {
            val intent = Intent(this, DaftarActivity::class.java)
            startActivity(intent)
        }
    }
}
