package com.happy.happenings.Utils;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
/// api client
public class ApiClient {


    private static Retrofit retrofit = null;

    public static Retrofit getClient(){
        if(retrofit == null){
            retrofit = new Retrofit.Builder()
                    .baseUrl(ConstantUrl.URL)
                    .addConverterFactory(GsonConverterFactory.create())
                    .build();
        }
        return retrofit;
    }

}
