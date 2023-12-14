package com.example.fishku.view.masuk

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.appcompat.app.AlertDialog
import com.example.fishku.databinding.ActivityMasukBinding
import com.example.fishku.view.main.MainActivity

class MasukActivity : AppCompatActivity() {
    private lateinit var binding: ActivityMasukBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMasukBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.loginButton.setOnClickListener {
            setupAction()
        }
    }

    private fun setupAction() {
        binding.apply {
            loginButton.setOnClickListener {
                val email = emailEditText.text.toString().trim()
                val password = passwordEditText.text.toString().trim()

                if (email.isEmpty() || password.isEmpty()) {
                    AlertDialog.Builder(this@MasukActivity).apply {
                        setTitle("Sorry")
                        setMessage("Email, and Password cannot be empty")
                        setPositiveButton("OK") { dialog, _ ->
                            dialog.dismiss()
                        }
                        create()
                        show()
                    }
                } else {
                    // Jika semua field sudah terisi, tampilkan popup "Daftar Berhasil"
                    AlertDialog.Builder(this@MasukActivity).apply {
                        setTitle("Confirmation")
                        setMessage("Masuk succeed")
                        setPositiveButton("OK") { dialog, _ ->
                            dialog.dismiss()

                            // Buat Intent untuk beralih ke MainActivity
                            val intent = Intent(this@MasukActivity, MainActivity::class.java)

                            // Mulai aktivitas MainActivity
                            startActivity(intent)
                        }
                        create()
                        show()
                    }
                }
            }
        }
    }
}