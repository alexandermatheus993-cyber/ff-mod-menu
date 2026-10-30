package com.freestyle;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Vibrator;
import android.provider.DocumentsContract;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.ScaleAnimation;
import android.webkit.MimeTypeMap;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.documentfile.provider.DocumentFile;
import com.github.megatronking.stringfog.xor.StringFogImpl;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes56.dex */
public class RomActivity extends AppCompatActivity {
    static final int OLD_REQUEST = 2000;
    static final int REQUEST_CODE = 333;
    private static final int new_folder = 43;
    private Button BTN;
    private SharedPreferences Data;
    private double PermissionNumber;
    private TimerTask Timer;
    private Vibrator Vibrar;
    private DocumentFile dFile;
    private View displayView;
    private WindowManager.LayoutParams layoutParams;
    private LinearLayout linear2;
    private LinearLayout linear3;
    private LinearLayout linear4;
    private LinearLayout linear5;
    private LinearLayout linear57;
    private LinearLayout linear6;
    private LinearLayout linear65;
    private LinearLayout linear66;
    private LinearLayout linear69;
    private LinearLayout linear73;
    private LinearLayout linear74;
    private LinearLayout linear80;
    private LinearLayout linear82;
    private LinearLayout linear83;
    private LinearLayout linear84;
    private LinearLayout linear85;
    private Uri muri;
    private TimerTask progreso;
    private TextView servidor;
    private SharedPreferences sha;
    private TextView status;
    private TextView textview10;
    private TextView textview12;
    private TextView textview5;
    private TextView textview6;
    private TextView textview9;
    private TimerTask ti;
    private TimerTask timer;
    private TextView usuario;
    private Vibrator v;
    private TextView valid;
    private WindowManager windowManager;
    private Timer _timer = new Timer();
    private double now = 0.0d;
    private double validade = 0.0d;
    private double diferenca = 0.0d;
    private double Position = 0.0d;
    private String Usuario = "";
    private String Status = "";
    private String UsuarioName = "";
    private String ValidadeString = "";
    private String Path = "";
    private HashMap<String, Object> Map = new HashMap<>();
    private String Key = "";
    private String StatusDoUser = "";
    private String Revendedor = "";
    private double nnn = 0.0d;
    private double b1 = 0.0d;
    private double b2 = 0.0d;
    private double b3 = 0.0d;
    private double b5 = 0.0d;
    private double n = 0.0d;
    private double nn = 0.0d;
    private double b4 = 0.0d;
    private double b6 = 0.0d;
    private String YourPath = "";
    private double f1 = 0.0d;
    private double f2 = 0.0d;
    private double f3 = 0.0d;
    private double f4 = 0.0d;
    private double f5 = 0.0d;
    private double f6 = 0.0d;
    private double sem = 0.0d;
    private double b11 = 0.0d;
    private ArrayList<HashMap<String, Object>> mapList = new ArrayList<>();
    private Calendar calendar = Calendar.getInstance();
    private Intent fe = new Intent();
    private boolean fromStorage = false;
    private Intent i = new Intent();
    private String uriFor1 = "";
    private String uriFor2 = "";

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.rom);
        initialize(bundle);
        if (ContextCompat.checkSelfPermission(this, StringFogImpl.decrypt("NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ==")) == -1) {
            ActivityCompat.requestPermissions(this, new String[]{StringFogImpl.decrypt("NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ==")}, 1000);
        } else {
            initializeLogic();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i == 1000) {
            initializeLogic();
        }
    }

    private void initialize(Bundle bundle) {
        this.linear74 = (LinearLayout) findViewById(R.id.linear74);
        this.linear2 = (LinearLayout) findViewById(R.id.linear2);
        this.linear5 = (LinearLayout) findViewById(R.id.linear5);
        this.linear66 = (LinearLayout) findViewById(R.id.linear66);
        this.linear69 = (LinearLayout) findViewById(R.id.linear69);
        this.linear73 = (LinearLayout) findViewById(R.id.linear73);
        this.linear84 = (LinearLayout) findViewById(R.id.linear84);
        this.linear6 = (LinearLayout) findViewById(R.id.linear6);
        this.linear85 = (LinearLayout) findViewById(R.id.linear85);
        this.textview12 = (TextView) findViewById(R.id.textview12);
        this.linear57 = (LinearLayout) findViewById(R.id.linear57);
        this.linear80 = (LinearLayout) findViewById(R.id.linear80);
        this.BTN = (Button) findViewById(R.id.BTN);
        this.linear65 = (LinearLayout) findViewById(R.id.linear65);
        this.linear3 = (LinearLayout) findViewById(R.id.linear3);
        this.linear82 = (LinearLayout) findViewById(R.id.linear82);
        this.linear4 = (LinearLayout) findViewById(R.id.linear4);
        this.linear83 = (LinearLayout) findViewById(R.id.linear83);
        this.textview5 = (TextView) findViewById(R.id.textview5);
        this.usuario = (TextView) findViewById(R.id.usuario);
        this.textview9 = (TextView) findViewById(R.id.textview9);
        this.status = (TextView) findViewById(R.id.status);
        this.textview6 = (TextView) findViewById(R.id.textview6);
        this.valid = (TextView) findViewById(R.id.valid);
        this.textview10 = (TextView) findViewById(R.id.textview10);
        this.servidor = (TextView) findViewById(R.id.servidor);
        this.Data = getSharedPreferences(StringFogImpl.decrypt("ETUyTA=="), 0);
        this.v = (Vibrator) getSystemService(StringFogImpl.decrypt("Iz0kX1khOzQ="));
        this.Vibrar = (Vibrator) getSystemService(StringFogImpl.decrypt("Iz0kX1khOzQ="));
        this.BTN.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.RomActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
    }

    private void initializeLogic() {
        if (getIntent().getBooleanExtra(StringFogImpl.decrypt("MT0nQVcyAC5IVTA="), true)) {
            getWindow().getDecorView().setBackgroundResource(android.R.color.transparent);
            GradientDrawable gradientDrawable = new GradientDrawable();
            int i = (int) getApplicationContext().getResources().getDisplayMetrics().density;
            gradientDrawable.setColor(0);
            gradientDrawable.setCornerRadius(i * 15);
            ((ViewGroup) getWindow().getDecorView()).getChildAt(0).setBackground(gradientDrawable);
            setFinishOnTouchOutside(false);
        }
        getWindow().getDecorView().setSystemUiVisibility(4098);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColors(new int[]{Color.parseColor(StringFogImpl.decrypt("dhIAHn5gZQQY")), Color.parseColor(StringFogImpl.decrypt("dhIAHwlsYgAe"))});
        gradientDrawable2.setOrientation(GradientDrawable.Orientation.TR_BL);
        gradientDrawable2.setCornerRadii(new float[]{15.0f, 15.0f, 15.0f, 15.0f, 15.0f, 15.0f, 15.0f, 15.0f});
        this.BTN.setBackground(gradientDrawable2);
        this.windowManager = (WindowManager) getSystemService(StringFogImpl.decrypt("Ij0oSVci"));
        this.layoutParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            this.layoutParams.type = 2038;
        } else {
            this.layoutParams.type = 2002;
        }
        this.layoutParams.format = 1;
        this.layoutParams.gravity = 17;
        this.layoutParams.flags = 56;
        this.layoutParams.width = 200;
        this.layoutParams.height = 200;
        this.layoutParams.x = 0;
        this.layoutParams.y = 0;
        _reCall();
    }

    private void showFloatingWindow() {
        this.displayView = LayoutInflater.from(this).inflate(R.layout.esp, (ViewGroup) null);
        ((ImageView) this.displayView.findViewById(R.id.img2)).setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.RomActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.windowManager.addView(this.displayView, this.layoutParams);
    }

    private class FloatingOnTouchListener implements View.OnTouchListener {
        private int x;
        private int y;

        private FloatingOnTouchListener() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public void closes() {
        try {
            this.windowManager.removeView(this.displayView);
        } catch (Exception e) {
        }
    }

    private void _reCall() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        if (FileUtil.isExistFile(StringFogImpl.decrypt("eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kXMjUrSFkmJyNZWiA6IkFdJnslQlYzPSECSyU4L1ldMSYjXls6OiBeFw=="))) {
            this.Path = StringFogImpl.decrypt("eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kXMjUrSFkmJyNZWiA6IkFdJnslQlYzPSECSyU4L1ldMSYjXls6OiBeFw==");
            if (checkPermission(pathToRealUri(this.Path))) {
                this.YourPath = StringFogImpl.decrypt("eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kX");
                if (checkPermission(pathToRealUri(this.YourPath))) {
                    this.YourPath = StringFogImpl.decrypt("eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kXMjUrSFkmJyNZWiA6IkFdJnslQlYzPSEC");
                    if (checkPermission(pathToRealUri(this.YourPath))) {
                        this.Timer = new AnonymousClass3();
                        this._timer.schedule(this.Timer, 1000L);
                        return;
                    } else {
                        askPermission(pathToUri(this.YourPath));
                        return;
                    }
                }
                askPermission(pathToUri(this.YourPath));
                return;
            }
            askPermission(pathToUri(this.Path));
        }
    }

    /* JADX INFO: renamed from: com.freestyle.RomActivity$3, reason: invalid class name */
    class AnonymousClass3 extends TimerTask {
        AnonymousClass3() {
        }

        /* JADX INFO: renamed from: com.freestyle.RomActivity$3$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                RomActivity.this.Path = StringFogImpl.decrypt("eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kXMjUrSFkmJyNZWiA6IkFdJnslQlYzPSE=");
                if (!RomActivity.this.checkPermission(RomActivity.this.pathToRealUri(RomActivity.this.Path))) {
                    RomActivity.this.askPermission(RomActivity.this.pathToUri(RomActivity.this.Path));
                } else {
                    RomActivity.this.copyAssetFolder(StringFogImpl.decrypt("FAJoYmoc"), RomActivity.this.Path);
                }
                RomActivity.this.Timer = new C00251();
                RomActivity.this._timer.schedule(RomActivity.this.Timer, 1000L);
            }

            /* JADX INFO: renamed from: com.freestyle.RomActivity$3$1$1, reason: invalid class name and collision with other inner class name */
            class C00251 extends TimerTask {
                C00251() {
                }

                /* JADX INFO: renamed from: com.freestyle.RomActivity$3$1$1$1, reason: invalid class name and collision with other inner class name */
                class RunnableC00261 implements Runnable {
                    RunnableC00261() {
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        RomActivity.this.Path = StringFogImpl.decrypt("eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0kXMjUrSFkmJyNZWiA6IkFdJnslQlYzPSECSyU4L1ldMSYjXls6OiBe");
                        if (!RomActivity.this.checkPermission(RomActivity.this.pathToRealUri(RomActivity.this.Path))) {
                            RomActivity.this.askPermission(RomActivity.this.pathToUri(RomActivity.this.Path));
                        } else {
                            RomActivity.this.copyAssetFolder(StringFogImpl.decrypt("FhsIa3ES"), RomActivity.this.Path);
                        }
                        RomActivity.this.Timer = new TimerTask() { // from class: com.freestyle.RomActivity.3.1.1.1.1
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public void run() {
                                RomActivity.this.runOnUiThread(new Runnable() { // from class: com.freestyle.RomActivity.3.1.1.1.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        RomActivity.this.Path = StringFogImpl.decrypt("eicyQko0MyMCXTghKkxMMDBpHRcUOiJfVzwwaUlZITVpTlc4eiJZS3syNEhdMz00SEw9eyBEVDAnaU5XOyAjQ0w2NSVFXXoXKUBIIDg1QkoseydDXCc7L0k=");
                                        if (!RomActivity.this.checkPermission(RomActivity.this.pathToRealUri(RomActivity.this.Path))) {
                                            RomActivity.this.askPermission(RomActivity.this.pathToUri(RomActivity.this.Path));
                                        } else {
                                            RomActivity.this.copyAssetFolder(StringFogImpl.decrypt("Ex0KaHEbEgk="), RomActivity.this.Path);
                                        }
                                    }
                                });
                            }
                        };
                        RomActivity.this._timer.schedule(RomActivity.this.Timer, 1000L);
                    }
                }

                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    RomActivity.this.runOnUiThread(new RunnableC00261());
                }
            }
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            RomActivity.this.runOnUiThread(new AnonymousClass1());
        }
    }

    public void _Library() {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 43 && i2 == -1 && intent != null) {
            Uri data = intent.getData();
            if (Uri.decode(data.toString()).endsWith(StringFogImpl.decrypt("bw=="))) {
                SketchwareUtil.showMessage(getApplicationContext(), StringFogImpl.decrypt("GiQjX1mW84WOV3UyJ0FQOiE="));
                askPermission(data.toString());
            } else {
                getContentResolver().takePersistableUriPermission(data, this.i.getFlags() & 3);
            }
        }
        if (i == OLD_REQUEST && Build.VERSION.SDK_INT >= 30) {
            Environment.isExternalStorageManager();
        }
    }

    public void RequestPermission_Dialog() {
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Intent intent = new Intent(StringFogImpl.decrypt("NDoiX1c8MGheXSEgL0NfJnoLbHYUEwNyeRkYGWtxGREVcnkWFwN+awoEA391HAcVZHcb"));
                intent.addCategory(StringFogImpl.decrypt("NDoiX1c8MGhEViExKFkWNjUySF86Jj8DfBASB3h0AQ=="));
                intent.setData(Uri.parse(String.format(StringFogImpl.decrypt("JTUlRlkyMXwN"), getApplicationContext().getPackageName())));
                startActivityForResult(intent, OLD_REQUEST);
                return;
            } catch (Exception e) {
                Intent intent2 = new Intent();
                intent2.setAction(StringFogImpl.decrypt("NDoiX1c8MGheXSEgL0NfJnoLbHYUEwNyeRkYGWtxGREVcnkWFwN+awoEA391HAcVZHcb"));
                startActivityForResult(intent2, OLD_REQUEST);
                return;
            }
        }
        ActivityCompat.requestPermissions(this, new String[]{StringFogImpl.decrypt("NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxAMEmhqGxUKcmsBGxRsfxA="), StringFogImpl.decrypt("NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ==")}, REQUEST_CODE);
    }

    public boolean permission() {
        if (Build.VERSION.SDK_INT >= 30) {
            return Environment.isExternalStorageManager();
        }
        return ContextCompat.checkSelfPermission(getApplicationContext(), StringFogImpl.decrypt("NDoiX1c8MGhdXSc5L15LPDsoA28HHRJoZxAMEmhqGxUKcmsBGxRsfxA=")) == 0 && ContextCompat.checkSelfPermission(getApplicationContext(), StringFogImpl.decrypt("NDoiX1c8MGhdXSc5L15LPDsoA2oQFQJyfQ0AA392FBgZfmwaBgdqfQ==")) == 0;
    }

    public void askPermission(String str) {
        this.i.addFlags(67);
        this.i.setAction(StringFogImpl.decrypt("NDoiX1c8MGhEViExKFkWNDcyRFc7egl9fRsLAmJ7ABkDY2wKABRofQ=="));
        this.i.putExtra(StringFogImpl.decrypt("NDoiX1c8MGhdSjoiL0ldJ3ojVUwnNWhkdhwAD2x0CgEUZA=="), Uri.parse(str));
        startActivityForResult(this.i, 43);
    }

    public boolean checkPermission(String str) {
        this.dFile = DocumentFile.fromTreeUri(getApplicationContext(), Uri.parse(str));
        return this.dFile.canRead() && this.dFile.canWrite();
    }

    public String pathToRealUri(String str) {
        this.uriFor1 = StringFogImpl.decrypt("NjsoWV07IHwCFzY7KwNZOzA0QlExeiNVTDAmKExUJiApX1kyMWhJVzYhK0hWISdpWUowMWldSjw5J19BcGcH");
        if (str.endsWith(StringFogImpl.decrypt("eg=="))) {
            str = str.substring(0, str.length() - 1);
        }
        if (str.contains(StringFogImpl.decrypt("eiciTlknMGk="))) {
            this.uriFor2 = str.replace(StringFogImpl.decrypt("eiciTlknMGk="), "").replace(StringFogImpl.decrypt("eg=="), StringFogImpl.decrypt("cGYA"));
            if (this.uriFor2.substring(this.uriFor2.length() - 1, this.uriFor2.length()).equals(StringFogImpl.decrypt("eg=="))) {
                this.uriFor2 = this.uriFor1.substring(0, this.uriFor1.length() - 1);
            }
        } else if (str.contains(StringFogImpl.decrypt("eicyQko0MyMC")) && str.contains(StringFogImpl.decrypt("ejErWFQ0ICNJFw=="))) {
            this.uriFor2 = str.replace(StringFogImpl.decrypt("eicyQko0MyMCXTghKkxMMDBpHRc="), "").replace(StringFogImpl.decrypt("eg=="), StringFogImpl.decrypt("cGYA"));
            if (this.uriFor2.substring(this.uriFor2.length() - 1, this.uriFor2.length()).equals(StringFogImpl.decrypt("eg=="))) {
                this.uriFor2 = this.uriFor1.substring(0, this.uriFor1.length() - 1);
            }
        }
        String str2 = String.valueOf(this.uriFor1) + this.uriFor2;
        this.uriFor1 = str2;
        return str2;
    }

    public String pathToUri(String str) {
        this.uriFor1 = StringFogImpl.decrypt("NjsoWV07IHwCFzY7KwNZOzA0QlExeiNVTDAmKExUJiApX1kyMWhJVzYhK0hWISdpWUowMWldSjw5J19BcGcHbFYxJilEXHowKU5NODEoWRclJi9AWSctYx55");
        if (str.endsWith(StringFogImpl.decrypt("eg=="))) {
            str = str.substring(0, str.length() - 1);
        }
        if (str.contains(StringFogImpl.decrypt("eiciTlknMGk="))) {
            this.uriFor2 = str.replace(StringFogImpl.decrypt("eiciTlknMGk="), "").replace(StringFogImpl.decrypt("eg=="), StringFogImpl.decrypt("cGYA"));
            if (this.uriFor2.substring(this.uriFor2.length() - 1, this.uriFor2.length()).equals(StringFogImpl.decrypt("eg=="))) {
                this.uriFor2 = this.uriFor1.substring(0, this.uriFor1.length() - 1);
            }
        } else if (str.contains(StringFogImpl.decrypt("eicyQko0MyMC")) && str.contains(StringFogImpl.decrypt("ejErWFQ0ICNJFw=="))) {
            this.uriFor2 = str.replace(StringFogImpl.decrypt("eicyQko0MyMCXTghKkxMMDBpHRc="), "").replace(StringFogImpl.decrypt("eg=="), StringFogImpl.decrypt("cGYA"));
            if (this.uriFor2.substring(this.uriFor2.length() - 1, this.uriFor2.length()).equals(StringFogImpl.decrypt("eg=="))) {
                this.uriFor2 = this.uriFor1.substring(0, this.uriFor1.length() - 1);
            }
        }
        String str2 = String.valueOf(this.uriFor1) + this.uriFor2;
        this.uriFor1 = str2;
        return str2;
    }

    private boolean copyAsset(String str, Uri uri) throws Throwable {
        boolean z = false;
        try {
            ContentResolver contentResolver = getApplicationContext().getContentResolver();
            InputStream inputStreamOpen = getApplicationContext().getAssets().open(str);
            OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uri);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStreamOpen.read(bArr);
                if (i > 0) {
                    outputStreamOpenOutputStream.write(bArr, 0, i);
                } else {
                    outputStreamOpenOutputStream.flush();
                    outputStreamOpenOutputStream.close();
                    inputStreamOpen.close();
                    z = true;
                    return true;
                }
            }
        } catch (Exception e) {
            FileUtil.writeFile(StringFogImpl.decrypt("eiciTlknMGlBVzJ6MlVM"), StringFogImpl.decrypt("X2dmDRg=") + e.toString());
            SketchwareUtil.showMessage(getApplicationContext(), e.toString());
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyAssetFolder(String str, String str2) {
        String[] list = null;
        try {
            list = getAssets().list(str);
        } catch (IOException e) {
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(list));
        int i = 0;
        int i2 = 0;
        while (i < arrayList.size()) {
            try {
                Uri uri = Uri.parse(pathToRealUri(str2));
                String str3 = (String) arrayList.get(i2);
                int size = arrayList.size() - 1;
                DocumentFile documentFileFromTreeUri = DocumentFile.fromTreeUri(getApplicationContext(), uri);
                Uri uri2 = Uri.parse(String.valueOf(uri.toString()) + StringFogImpl.decrypt("cGY=") + str3);
                DocumentFile.fromTreeUri(getApplicationContext(), uri2);
                try {
                    DocumentsContract.deleteDocument(getApplicationContext().getContentResolver(), documentFileFromTreeUri.findFile(str3).getUri());
                    DocumentsContract.deleteDocument(getApplicationContext().getContentResolver(), uri2);
                } catch (FileNotFoundException e2) {
                } catch (Exception e3) {
                }
                if (!copyAsset(String.valueOf(str) + StringFogImpl.decrypt("eg==") + str3, documentFileFromTreeUri.createFile(StringFogImpl.decrypt("f3ts"), str3).getUri())) {
                    SketchwareUtil.showMessage(getApplicationContext(), StringFogImpl.decrypt("EzUqRVk="));
                    return;
                }
                continue;
            } catch (Exception e4) {
            }
            i++;
            i2++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.documentfile.provider.DocumentFile] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.io.FileInputStream] */
    public boolean copy(File file, String str, Context context) throws Throwable {
        OutputStream outputStreamOpenOutputStream;
        ?? FromTreeUri = DocumentFile.fromTreeUri(getApplicationContext(), Uri.parse(pathToRealUri(str)));
        try {
            DocumentsContract.deleteDocument(getApplicationContext().getContentResolver(), FromTreeUri.findFile(Uri.parse(file.getPath()).getLastPathSegment()).getUri());
        } catch (Exception e) {
            e.printStackTrace();
        }
        String strMime = mime(file.toURI().toString());
        ?? name = file.getName();
        DocumentFile documentFileCreateFile = FromTreeUri.createFile(strMime, name);
        try {
            try {
                name = new FileInputStream(file);
                try {
                    outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(documentFileCreateFile.getUri());
                    try {
                        byte[] bArr = new byte[16384];
                        while (true) {
                            int i = name.read(bArr);
                            if (i == -1) {
                                try {
                                    name.close();
                                    outputStreamOpenOutputStream.close();
                                    return true;
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                }
                            } else {
                                outputStreamOpenOutputStream.write(bArr, 0, i);
                            }
                            return false;
                        }
                    } catch (FileNotFoundException e3) {
                        e = e3;
                        e.printStackTrace();
                        try {
                            name.close();
                            outputStreamOpenOutputStream.close();
                            return true;
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    } catch (IOException e5) {
                        e = e5;
                        e.printStackTrace();
                        try {
                            name.close();
                            outputStreamOpenOutputStream.close();
                            return true;
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                } catch (FileNotFoundException e7) {
                    e = e7;
                    outputStreamOpenOutputStream = null;
                } catch (IOException e8) {
                    e = e8;
                    outputStreamOpenOutputStream = null;
                } catch (Throwable th) {
                    th = th;
                    FromTreeUri = 0;
                    try {
                        name.close();
                        FromTreeUri.close();
                        return true;
                    } catch (IOException e9) {
                        e9.printStackTrace();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e10) {
            e = e10;
            outputStreamOpenOutputStream = null;
            name = 0;
        } catch (IOException e11) {
            e = e11;
            outputStreamOpenOutputStream = null;
            name = 0;
        } catch (Throwable th3) {
            th = th3;
            FromTreeUri = 0;
            name = 0;
        }
    }

    public String mime(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl == null) {
            return "";
        }
        return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
    }

    public void _clickAnimation(View view) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.9f, 1.0f, 0.9f, 1.0f, 1, 0.5f, 1, 0.7f);
        scaleAnimation.setDuration(300L);
        scaleAnimation.setFillAfter(true);
        view.startAnimation(scaleAnimation);
    }

    public void _dialogTheme() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        Class<?> cls = null;
        if (getIntent().getBooleanExtra(StringFogImpl.decrypt("MT0nQVcyAC5IVTA="), true)) {
            supportRequestWindowFeature(1);
            setTheme(2131755533);
            setFinishOnTouchOutside(true);
            try {
                Method declaredMethod = Activity.class.getDeclaredMethod(StringFogImpl.decrypt("MjEybFshPTBETCwbNllROjo1"), new Class[0]);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(this, new Object[0]);
                Class<?>[] declaredClasses = Activity.class.getDeclaredClasses();
                int length = declaredClasses.length;
                int i2 = 0;
                while (i2 < length) {
                    Class<?> cls2 = declaredClasses[i2];
                    if (!cls2.getSimpleName().contains(StringFogImpl.decrypt("ASYnQ0s5ISVIViEXKUNOMCY1RFc7GC9eTDA6I18="))) {
                        cls2 = cls;
                    }
                    i2++;
                    cls = cls2;
                }
                Method declaredMethod2 = Activity.class.getDeclaredMethod(StringFogImpl.decrypt("NjsoW10nIBJCbCc1KF5UIDcjQ0w="), cls, ActivityOptions.class);
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(this, null, objInvoke);
            } catch (Throwable th) {
            }
        }
        super.setContentView(i);
    }

    @Deprecated
    public void showMessage(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }

    @Deprecated
    public int getLocationX(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr[0];
    }

    @Deprecated
    public int getLocationY(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr[1];
    }

    @Deprecated
    public int getRandom(int i, int i2) {
        return new Random().nextInt((i2 - i) + 1) + i;
    }

    @Deprecated
    public ArrayList<Double> getCheckedItemPositionsToArray(ListView listView) {
        ArrayList<Double> arrayList = new ArrayList<>();
        SparseBooleanArray checkedItemPositions = listView.getCheckedItemPositions();
        for (int i = 0; i < checkedItemPositions.size(); i++) {
            if (checkedItemPositions.valueAt(i)) {
                arrayList.add(Double.valueOf(checkedItemPositions.keyAt(i)));
            }
        }
        return arrayList;
    }

    @Deprecated
    public float getDip(int i) {
        return TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    @Deprecated
    public int getDisplayWidthPixels() {
        return getResources().getDisplayMetrics().widthPixels;
    }

    @Deprecated
    public int getDisplayHeightPixels() {
        return getResources().getDisplayMetrics().heightPixels;
    }
}
