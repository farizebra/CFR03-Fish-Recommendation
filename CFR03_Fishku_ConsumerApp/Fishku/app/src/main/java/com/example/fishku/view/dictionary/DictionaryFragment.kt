package com.example.fishku.view.dictionary

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.fishku.DetailActivity
import com.example.fishku.R

// TODO: Rename parameter arguments, choose names that match
// the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
private const val ARG_PARAM1 = "param1"
private const val ARG_PARAM2 = "param2"

/**
 * A simple [Fragment] subclass.
 * Use the [DictionaryFragment.newInstance] factory method to
 * create an instance of this fragment.
 */
class DictionaryFragment : Fragment() {
    // TODO: Rename and change types of parameters
    private var param1: String? = null
    private var param2: String? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        arguments?.let {
            param1 = it.getString(ARG_PARAM1)
            param2 = it.getString(ARG_PARAM2)
        }
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        val view = inflater.inflate(R.layout.fragment_dictionary, container, false)
        val recyclerView = view.findViewById<RecyclerView>(R.id.rv_dictionary)
        recyclerView.layoutManager = LinearLayoutManager(context)

        // Retrieve data from string arrays and integer arrays
        val namesArray = resources.getStringArray(R.array.name_ikan)
        val descriptionsArray = resources.getStringArray(R.array.descard_ikan)
        val picturesArray = resources.obtainTypedArray(R.array.picture_ikan)

        // Create a list of DataModel objects
        val data = mutableListOf<DataModel>()

        for (i in namesArray.indices) {
            val name = namesArray[i]
            val description = descriptionsArray[i]
            val pictureResId = picturesArray.getResourceId(i, -1)

            if (pictureResId != -1) {
                val dataModel = DataModel(pictureResId, name, description)
                data.add(dataModel)
            }
        }

        // Release the TypedArray
        picturesArray.recycle()


        // Set up the adapter with the data
        val adapter = DictionaryAdapter(data)
        recyclerView.adapter = adapter

        // Handle item click and start DetailActivity
        // Handle item click and start DetailActivity
        adapter.onItemClick = { dataModel ->
            val intent = Intent(requireContext(), DetailActivity::class.java)
            intent.putExtra("title", dataModel.title) // Nama ikan
            intent.putExtra("about", resources.getStringArray(R.array.about_ikan)[1]) // Teks tentang ikan
            intent.putExtra("nutrisi", resources.getStringArray(R.array.nutrisi_ikan)[1]) // Teks nutrisi ikan
            intent.putExtra("pengolahan", resources.getStringArray(R.array.pengolahan_ikan)[1]) // Teks pengolahan ikan
            intent.putExtra("khasiat", resources.getStringArray(R.array.khasiat_ikan)[1]) // Teks khasiat ikan
            intent.putExtra("picture", dataModel.pictureResId) // Sumber gambar ikan
            startActivity(intent)
        }


        return view
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        val recyclerView = view.findViewById<RecyclerView>(R.id.rv_dictionary)
        recyclerView.layoutManager = LinearLayoutManager(context)

        // Retrieve data from string arrays and integer arrays
        val namesArray = resources.getStringArray(R.array.name_ikan)
        val descriptionsArray = resources.getStringArray(R.array.descard_ikan)
        val picturesArray = resources.obtainTypedArray(R.array.picture_ikan)

        // Create a list of DataModel objects
        val data = mutableListOf<DataModel>()

        for (i in namesArray.indices) {
            val name = namesArray[i]
            val description = descriptionsArray[i]
            val pictureResId = picturesArray.getResourceId(i, -1)

            if (pictureResId != -1) {
                val dataModel = DataModel(pictureResId, name, description)
                data.add(dataModel)
            }
        }

        // Release the TypedArray
        picturesArray.recycle()

        // Set the adapter with the data
        recyclerView.adapter = DictionaryAdapter(data)
    }


    companion object {
        /**
         * Use this factory method to create a new instance of
         * this fragment using the provided parameters.
         *
         * @param param1 Parameter 1.
         * @param param2 Parameter 2.
         * @return A new instance of fragment DictionaryFragment.
         */
        // TODO: Rename and change types and number of parameters
        @JvmStatic
        fun newInstance(param1: String, param2: String) =
            DictionaryFragment().apply {
                arguments = Bundle().apply {
                    putString(ARG_PARAM1, param1)
                    putString(ARG_PARAM2, param2)
                }
            }
    }
}