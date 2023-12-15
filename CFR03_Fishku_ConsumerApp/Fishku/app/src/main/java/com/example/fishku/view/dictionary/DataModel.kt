package com.example.fishku.view.dictionary

import android.os.Parcelable
import kotlinx.android.parcel.Parcelize

// DataModel.kt
@Parcelize
data class DataModel(
    val pictureResId: Int,
    val title: String,
    val description: String,
) : Parcelable

