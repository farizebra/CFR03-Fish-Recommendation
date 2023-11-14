package id.fishku.consumer.core.data.source.remote.interceptor

import id.fishku.consumer.core.utils.Constants.OTP_TOKEN
import okhttp3.Interceptor
import okhttp3.Response

/**
 * J w t interceptor
 *
 * @constructor Create empty J w t interceptor
 */
class JWTInterceptor : Interceptor {
    override fun intercept(chain: Interceptor.Chain): Response {
        val requestBuilder = chain.request().newBuilder()

        requestBuilder.addHeader("Authorization", "Bearer $OTP_TOKEN")

        return chain.proceed(requestBuilder.build())
    }
}