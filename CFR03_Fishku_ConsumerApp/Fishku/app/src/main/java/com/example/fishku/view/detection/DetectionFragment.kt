package com.example.fishku.view.detection

import android.content.ContentValues
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.MediaStore
import android.util.Log
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import com.example.fishku.DecetionResultActivity
import com.example.fishku.R
import com.example.fishku.databinding.FragmentDetectionBinding
import com.example.fishku.util.getImageUri
import com.example.fishku.util.reduceFileImage
import com.example.fishku.util.uriToFile

class DetectionFragment : Fragment() {

    private lateinit var binding: FragmentDetectionBinding

    private var currentImageUri: Uri? = null

    private val launcherGallery = registerForActivityResult(
        ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        if (uri != null) {
            currentImageUri = uri
            showImage()
        } else {
            Log.d("Photo Picker", "Tidak ada gambar yang dipilih")
        }
    }

    private val launcherIntentCamera = registerForActivityResult(
        ActivityResultContracts.TakePicture()
    ) { isSuccess ->
        if (isSuccess) {
            showImage()
        }
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        binding = FragmentDetectionBinding.inflate(inflater, container, false)
        return binding.root
    }

    private fun navigateToDetectionResultActivity() {
        currentImageUri?.let { uri ->
            Log.d("DetectionFragment", "Navigating with URI: $uri")
            val intent = Intent(activity, DecetionResultActivity::class.java).apply {
                putExtra("EXTRA_IMAGE_URI", uri.toString())
            }
            startActivity(intent)
        }
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.btnGallery.setOnClickListener { startGallery() }
        binding.btnCamera.setOnClickListener { startCamera() }
        binding.btnDetect.setOnClickListener {
            navigateToDetectionResultActivity()
        }
    }

    private fun startGallery() {
        launcherGallery.launch("image/*")
    }

    private fun startCamera() {
        currentImageUri = getImageUri(requireContext())
        launcherIntentCamera.launch(currentImageUri)
    }

    private fun showImage() {
        currentImageUri?.let {
            Log.d("Image URI", "showImage: $it")
            binding.ivImagePreview.setImageURI(it)
        }
    }

//    private fun uploadImage(description: String) {
//        currentImageUri?.let { uri ->
//            val imageFile = uriToFile(uri, requireContext()).reduceFileImage()
//            Log.d("Image File", "showImage: ${imageFile.path}")
//            viewModel.uploadImage(imageFile, description).observe(viewLifecycleOwner) { result ->
//                if (result != null) {
//                    when (result) {
//                        is ResultState.Loading -> {
//                            showLoading(true)
//                        }
//                        is ResultState.Success -> {
//                            showToast(result.data.message!!)
//                            showLoading(false)
//                            // You may want to handle navigation here (e.g., using Navigation Component)
//                        }
//                        is ResultState.Error -> {
//                            showToast(result.error)
//                            showLoading(false)
//                        }
//                    }
//                }
//            }
//        } ?: showToast(getString(R.string.empty_image_warning))
//    }

    private fun showToast(message: String) {
        Toast.makeText(requireContext(), message, Toast.LENGTH_SHORT).show()
    }

//    private fun showLoading(state: Boolean) {
//        binding.progressBar.visibility = if (state) View.VISIBLE else View.GONE
//    }
}