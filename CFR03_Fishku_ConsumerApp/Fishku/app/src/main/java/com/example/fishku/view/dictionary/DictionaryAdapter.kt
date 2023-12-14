package com.example.fishku.view.dictionary

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.fishku.R

// DictionaryAdapter.kt
class DictionaryAdapter(private val dataList: List<DataModel>) : RecyclerView.Adapter<DictionaryAdapter.ViewHolder>() {

    class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val imageView: ImageView = view.findViewById(R.id.img_item_photo)
        val titleView: TextView = view.findViewById(R.id.tv_item_merk)
        val descriptionView: TextView = view.findViewById(R.id.tv_item_description)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.card_item, parent, false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val item = dataList[position]
        // Bind data to views here. For example, load image using a library like Glide or Picasso
        holder.titleView.text = item.title
        holder.descriptionView.text = item.description
    }

    override fun getItemCount() = dataList.size
}
