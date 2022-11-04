package com.ders.ders_5;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private RadioGroup rdbCinsiyet;
    private RadioButton rdbbutton;
    private Button gönder;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        rdbCinsiyet=(RadioGroup) findViewById(R.id.rdbCinsiyet);
        gönder=(Button) findViewById(R.id.gönder);
        gönder.setOnClickListener(new View.OnClickListener() {
          @Override
          public void onClick(View view){
              int secilenid=rdbCinsiyet.getCheckedRadioButtonId();
              rdbbutton=(RadioButton) findViewById(secilenid);
              Toast.makeText(MainActivity.this,"seçilen"+rdbbutton.getText(),
                      Toast.LENGTH_SHORT).show();

          }
        });
    }
}