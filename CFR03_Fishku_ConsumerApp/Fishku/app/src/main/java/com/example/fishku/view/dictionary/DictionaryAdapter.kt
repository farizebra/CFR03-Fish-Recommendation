package com.example.fishku.view.dictionary

import android.content.Intent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.example.fishku.DetailActivity
import com.example.fishku.R

class DictionaryAdapter(private val dataList: List<DataModel>) : RecyclerView.Adapter<DictionaryAdapter.ViewHolder>() {

    var onItemClick: ((DataModel) -> Unit)? = null


    inner class ViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val imageView: ImageView = view.findViewById(R.id.img_item_photo)
        val titleView: TextView = view.findViewById(R.id.tv_item_merk)
        val descriptionView: TextView = view.findViewById(R.id.tv_item_description)

        init {
            view.setOnClickListener {
                onItemClick?.invoke(dataList[adapterPosition])
            }
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.card_item, parent, false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val item = dataList[position]
        Glide.with(holder.itemView.context)
            .load(item.pictureResId) // Load the image using the resource ID
            .into(holder.imageView)
        holder.titleView.text = item.title
        holder.descriptionView.text = item.description
        holder.itemView.setOnClickListener {
            val intentDetail =
                Intent(holder.itemView.context, DetailActivity::class.java)
            intentDetail.putExtra(
                "key_CustomHome",
                dataList[holder.adapterPosition]
            )
            holder.itemView.context.startActivity(intentDetail)
        }
    }

    override fun getItemCount() = dataList.size
}
