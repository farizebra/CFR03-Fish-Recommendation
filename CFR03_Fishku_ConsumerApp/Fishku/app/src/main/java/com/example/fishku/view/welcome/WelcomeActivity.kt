package com.example.fishku.view.welcome

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.example.fishku.databinding.ActivityWelcomeBinding
import com.example.fishku.view.daftar.DaftarActivity
import com.example.fishku.view.masuk.MasukActivity

class WelcomeActivity : AppCompatActivity() {
    private lateinit var binding: ActivityWelcomeBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityWelcomeBinding.inflate(layoutInflater)
        setContentView(binding.root)

        setupAction()

    }

    private fun setupAction() {

        binding.apply {
            buttonMasuk.setOnClickListener {
                val intent = Intent(this@WelcomeActivity, MasukActivity::class.java)
                startActivity(intent)

            }

            buttonDaftar.setOnClickListener {
                val intent = Intent(this@WelcomeActivity, DaftarActivity::class.java)
                startActivity(intent)

            }
        }




    }
}
