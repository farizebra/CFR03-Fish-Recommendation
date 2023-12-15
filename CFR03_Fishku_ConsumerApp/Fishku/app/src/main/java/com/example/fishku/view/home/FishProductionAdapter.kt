package com.example.fishku.view.home

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.example.fishku.databinding.ItemFishProductionBinding

class FishProductionAdapter(private val dataList: List<FishProductionData>) :
    RecyclerView.Adapter<FishProductionAdapter.ViewHolder>() {

    class ViewHolder(private val binding: ItemFishProductionBinding) :
        RecyclerView.ViewHolder(binding.root) {
        fun bind(data: FishProductionData) {
            binding.tvLocation.text = data.location
            binding.tvFishType.text = data.fishType
            binding.tvProductionTotal.text = "Total Produksi : ${data.productionTotal}"
            binding.tvFarmersTotal.text = "Total Pembudidaya : ${data.farmersTotal}"
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ItemFishProductionBinding.inflate(
            LayoutInflater.from(parent.context), parent, false)
        return ViewHolder(binding)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val data = dataList[position]
        holder.bind(data)
    }

    override fun getItemCount(): Int = dataList.size
}