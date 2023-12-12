package com.example.fishku.view.daftar

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.appcompat.app.AlertDialog
import com.example.fishku.R
import com.example.fishku.databinding.ActivityDaftarBinding
import com.example.fishku.databinding.ActivityMasukBinding

class DaftarActivity : AppCompatActivity() {
    private lateinit var binding: ActivityDaftarBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityDaftarBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.loginButton.setOnClickListener {
            setupAction()
        }
    }

    private fun setupAction() {
        binding.apply {
            loginButton.setOnClickListener {
                val name = nameEditText.text.toString().trim()
                val email = emailEditText.text.toString().trim()
                val password = passwordEditText.text.toString().trim()
                val phoneNumber = phoneNumberEditText.text.toString().trim()
                val address = addressEditText.text.toString().trim()

                if (name.isEmpty() || email.isEmpty() || password.isEmpty() || phoneNumber.isEmpty() || address.isEmpty()) {
                    AlertDialog.Builder(this@DaftarActivity).apply {
                        setTitle("Sorry")
                        setMessage("Name, Email, Password, Phone Number, and Address cannot be empty")
                        setPositiveButton("OK") { dialog, _ ->
                            dialog.dismiss()
                        }
                        create()
                        show()
                    }
                } else {
                    // Jika semua field sudah terisi, tampilkan popup "Daftar Berhasil"
                    AlertDialog.Builder(this@DaftarActivity).apply {
                        setTitle("Confirmation")
                        setMessage("Daftar succeed")
                        setPositiveButton("OK") { dialog, _ ->
                            dialog.dismiss()
                        }
                        create()
                        show()
                    }
                }
            }
        }
    }

}