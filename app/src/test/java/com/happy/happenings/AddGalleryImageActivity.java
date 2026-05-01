package com.happy.happenings;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

import com.bumptech.glide.Glide;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.happy.happenings.RetrofitData.AddGalleryImageData;
import com.happy.happenings.SetGet.AddGalleryImageList;
import com.happy.happenings.Utils.ApiClient;
import com.happy.happenings.Utils.ApiInterface;
import com.happy.happenings.Utils.CommonMethod;
import com.happy.happenings.Utils.ConnectionDetector;
import com.happy.happenings.Utils.ConstantUrl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class AddGalleryImageActivity extends AppCompatActivity {

    TextView select, upload;
    RecyclerView recyclerView;
    ArrayList<AddGalleryImageList> addGalleryImageLists;
    AddGalleryImageAdapter addGalleryImageAdapter;

    ImageView backIv;
    ProgressDialog pd;
    ApiInterface apiService;
    SharedPreferences sp;

    private final ActivityResultLauncher<Intent> photoPickerLauncher = registerForActivityResult(
            new ActivityResultContracts.StartActivityForResult(),
            result -> {
                if (result.getResultCode() == RESULT_OK && result.getData() != null) {
                    Uri selectedImageUri = result.getData().getData();
                    if (selectedImageUri != null) {
                        AddGalleryImageList list = new AddGalleryImageList();
                        list.setImageUri(selectedImageUri);
                        addGalleryImageLists.add(list);

                        if (addGalleryImageAdapter == null) {
                            addGalleryImageAdapter = new AddGalleryImageAdapter(AddGalleryImageActivity.this, addGalleryImageLists);
                            recyclerView.setAdapter(addGalleryImageAdapter);
                        } else {
                            addGalleryImageAdapter.notifyDataSetChanged();
                        }

                        recyclerView.setVisibility(View.VISIBLE);
                        upload.setVisibility(View.VISIBLE);
                    }
                }
            });

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_add_gallery_image);
        sp = getSharedPreferences(ConstantUrl.PREF, MODE_PRIVATE);
        apiService = ApiClient.getClient().create(ApiInterface.class);
        getSupportActionBar().setTitle("Add Image");
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);

        select = findViewById(R.id.add_gallery_image_select);
        upload = findViewById(R.id.add_gallery_image_upload);

        recyclerView = findViewById(R.id.add_gallery_image_recycler);
        recyclerView.setLayoutManager(new StaggeredGridLayoutManager(3, StaggeredGridLayoutManager.VERTICAL));
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        addGalleryImageLists = new ArrayList<>();

        select.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(Intent.ACTION_PICK, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
                photoPickerLauncher.launch(intent);
            }
        });

        upload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (new ConnectionDetector(AddGalleryImageActivity.this).isConnectingToInternet()) {
                    pd = new ProgressDialog(AddGalleryImageActivity.this);
                    pd.setMessage("Please Wait...");
                    pd.setCancelable(false);
                    pd.show();
                    addGalleryImageData();
                } else {
                    new ConnectionDetector(AddGalleryImageActivity.this).connectiondetect();
                }
            }
        });
    }

    private String getImage(Uri uri) {
        if (uri == null) return "";

        Cursor cursor = null;
        try {
            String[] projection = {MediaStore.Images.Media.DATA};
            cursor = getContentResolver().query(uri, projection, null, null, null);
            if (cursor != null && cursor.moveToFirst()) {
                int columnIndex = cursor.getColumnIndexOrThrow(MediaStore.Images.Media.DATA);
                return cursor.getString(columnIndex);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return "";
    }

    private void addGalleryImageData() {
        MultipartBody.Part[] imagesParts = new MultipartBody.Part[addGalleryImageLists.size()];

        for (int i = 0; i < addGalleryImageLists.size(); i++) {
            File imageFile = new File(getImage(addGalleryImageLists.get(i).getImageUri()));
            RequestBody imageBody = RequestBody.create(MediaType.parse("image/*"), imageFile);
            imagesParts[i] = MultipartBody.Part.createFormData("file", imageFile.getName(), imageBody);
        }

        RequestBody galleryIdPart = RequestBody.create(MultipartBody.FORM, sp.getString(ConstantUrl.CATEGORY_ID, ""));
        Call<AddGalleryImageData> call = apiService.addGalleryImageData(imagesParts[0], galleryIdPart);

        call.enqueue(new Callback<AddGalleryImageData>() {
            @Override
            public void onResponse(Call<AddGalleryImageData> call, Response<AddGalleryImageData> response) {
                pd.dismiss();
                if (response.isSuccessful() && response.body() != null) {
                    new CommonMethod(AddGalleryImageActivity.this, response.body().message);
                    onBackPressed();
                } else {
                    new CommonMethod(AddGalleryImageActivity.this, "Failed to upload images.");
                }
            }

            @Override
            public void onFailure(Call<AddGalleryImageData> call, Throwable t) {
                pd.dismiss();
                new CommonMethod(AddGalleryImageActivity.this, t.getMessage());
            }
        });
    }

    private class AddGalleryImageAdapter extends RecyclerView.Adapter<AddGalleryImageAdapter.MyHolder> {

        Context context;
        ArrayList<AddGalleryImageList> addGalleryImageLists;

        AddGalleryImageAdapter(Context context, ArrayList<AddGalleryImageList> addGalleryImageLists) {
            this.context = context;
            this.addGalleryImageLists = addGalleryImageLists;
        }

        @NonNull
        @Override
        public MyHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.custom_add_gallery_image, parent, false);
            return new MyHolder(view);
        }

        @Override
        public void onBindViewHolder(@NonNull MyHolder holder, @SuppressLint("RecyclerView") int position) {
            Glide.with(context).load(addGalleryImageLists.get(position).getImageUri()).placeholder(R.mipmap.ic_launcher).into(holder.iv);

            holder.deleteFloat.setOnClickListener(v -> {
                addGalleryImageLists.remove(position);
                notifyDataSetChanged();
            });
        }

        @Override
        public int getItemCount() {
            return addGalleryImageLists.size();
        }

        public class MyHolder extends RecyclerView.ViewHolder {
            ImageView iv;
            FloatingActionButton deleteFloat;

            public MyHolder(@NonNull View itemView) {
                super(itemView);
                iv = itemView.findViewById(R.id.custom_add_gallery_image_iv);
                deleteFloat = itemView.findViewById(R.id.custom_add_gallery_image_delete);
            }
        }
    }
}
