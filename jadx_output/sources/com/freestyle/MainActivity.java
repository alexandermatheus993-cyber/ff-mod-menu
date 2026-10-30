package com.freestyle;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.BatteryManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.github.megatronking.stringfog.xor.StringFogImpl;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes56.dex */
public class MainActivity extends AppCompatActivity {
    private SharedPreferences Data;
    private View displayView;
    private ImageView imageview1;
    private ImageView imageview2;
    private ImageView imageview3;
    private WindowManager.LayoutParams layoutParams;
    private LinearLayout linear1;
    private LinearLayout linear12;
    private LinearLayout linear2;
    private LinearLayout linear3;
    private LinearLayout linear4;
    private LinearLayout linear5;
    private LinearLayout linear6;
    private LinearLayout linear8;
    private LinearLayout linear9;
    private ProgressDialog prog;
    private TextView textview1;
    private TextView textview2;
    private TextView textview3;
    private TextView textview4;
    private TextView textview5;
    private TextView textview6;
    private TimerTask ti;
    private TimerTask timer;
    private EditText user;
    private WindowManager windowManager;
    private Timer _timer = new Timer();
    private double Position = 0.0d;
    private String ID = "";
    private HashMap<String, Object> Map = new HashMap<>();
    private String Key = "";
    private String ValidadeString = "";
    private double b11 = 0.0d;
    private double n1 = 0.0d;
    private double n2 = 0.0d;
    private double n3 = 0.0d;
    private double n4 = 0.0d;
    private double n5 = 0.0d;
    private double n6 = 0.0d;
    private double n7 = 0.0d;
    private double n8 = 0.0d;
    private double n9 = 0.0d;
    private double rot = 0.0d;
    private double progressValue2 = 0.0d;
    private ArrayList<HashMap<String, Object>> mapList = new ArrayList<>();
    private Intent intent = new Intent();

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.main);
        initialize(bundle);
        initializeLogic();
    }

    private void initialize(Bundle bundle) {
        this.linear1 = (LinearLayout) findViewById(R.id.linear1);
        this.linear2 = (LinearLayout) findViewById(R.id.linear2);
        this.linear3 = (LinearLayout) findViewById(R.id.linear3);
        this.linear5 = (LinearLayout) findViewById(R.id.linear5);
        this.linear4 = (LinearLayout) findViewById(R.id.linear4);
        this.linear6 = (LinearLayout) findViewById(R.id.linear6);
        this.imageview1 = (ImageView) findViewById(R.id.imageview1);
        this.textview1 = (TextView) findViewById(R.id.textview1);
        this.textview2 = (TextView) findViewById(R.id.textview2);
        this.imageview2 = (ImageView) findViewById(R.id.imageview2);
        this.textview3 = (TextView) findViewById(R.id.textview3);
        this.linear8 = (LinearLayout) findViewById(R.id.linear8);
        this.linear9 = (LinearLayout) findViewById(R.id.linear9);
        this.linear12 = (LinearLayout) findViewById(R.id.linear12);
        this.textview4 = (TextView) findViewById(R.id.textview4);
        this.textview5 = (TextView) findViewById(R.id.textview5);
        this.imageview3 = (ImageView) findViewById(R.id.imageview3);
        this.user = (EditText) findViewById(R.id.user);
        this.textview6 = (TextView) findViewById(R.id.textview6);
        this.Data = getSharedPreferences(StringFogImpl.decrypt("ETUyTA=="), 0);
        this.linear12.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.user.getText().toString().equals(StringFogImpl.decrypt("MyYjSEshLSpI"))) {
                    MainActivity.this._llucas7e7();
                } else {
                    SketchwareUtil.showMessage(MainActivity.this.getApplicationContext(), StringFogImpl.decrypt("HjE/DVaW9ykNXTs3KUNMJzUiTA=="));
                }
            }
        });
    }

    private void initializeLogic() {
        this.windowManager = (WindowManager) getSystemService(StringFogImpl.decrypt("Ij0oSVci"));
        this.layoutParams = new WindowManager.LayoutParams();
        if (Build.VERSION.SDK_INT >= 26) {
            this.layoutParams.type = 2038;
        } else {
            this.layoutParams.type = 2002;
        }
        this.layoutParams.format = -2;
        this.layoutParams.gravity = 17;
        this.layoutParams.flags = 2013;
        this.layoutParams.width = -2;
        this.layoutParams.height = -2;
        this.layoutParams.x = 0;
        this.layoutParams.y = 0;
        _reCall();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFloatingWindow() {
        this.displayView = LayoutInflater.from(this).inflate(R.layout.esp, (ViewGroup) null);
        this.displayView.setOnTouchListener(new FloatingOnTouchListener(this, null));
        this.windowManager.addView(this.displayView, this.layoutParams);
    }

    private class FloatingOnTouchListener implements View.OnTouchListener {
        private int x;
        private int y;

        private FloatingOnTouchListener() {
        }

        /* synthetic */ FloatingOnTouchListener(MainActivity mainActivity, FloatingOnTouchListener floatingOnTouchListener) {
            this();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            switch (motionEvent.getAction()) {
                case 0:
                    this.x = (int) motionEvent.getRawX();
                    this.y = (int) motionEvent.getRawY();
                    break;
            }
            return true;
        }
    }

    public void closes() {
        try {
            this.windowManager.removeView(this.displayView);
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Type inference failed for: r1v11, types: [com.freestyle.MainActivity$3] */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.freestyle.MainActivity$4] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.freestyle.MainActivity$2] */
    private void _reCall() {
        if (getIntent().getBooleanExtra(StringFogImpl.decrypt("MT0nQVcyAC5IVTA="), true)) {
            getWindow().getDecorView().setBackgroundResource(android.R.color.transparent);
            GradientDrawable gradientDrawable = new GradientDrawable();
            int i = (int) getApplicationContext().getResources().getDisplayMetrics().density;
            gradientDrawable.setColor(0);
            gradientDrawable.setCornerRadius(i * 15);
            ((ViewGroup) getWindow().getDecorView()).getChildAt(0).setBackground(gradientDrawable);
            setFinishOnTouchOutside(false);
        }
        if (Build.VERSION.SDK_INT > 19) {
            Window window = getWindow();
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(-16316665);
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.linear2);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, -displayMetrics.heightPixels, 0.0f);
        translateAnimation.setDuration(1000L);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getApplicationContext(), android.R.anim.fade_in);
        animationLoadAnimation.setDuration(3000L);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(animationLoadAnimation);
        linearLayout.setVisibility(0);
        linearLayout.startAnimation(animationSet);
        this.linear2.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.2
            public GradientDrawable getIns(int i2, int i3) {
                setCornerRadius(i2);
                setColor(i3);
                return this;
            }
        }.getIns(10, -15724528));
        this.linear9.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.3
            public GradientDrawable getIns(int i2, int i3) {
                setCornerRadius(i2);
                setColor(i3);
                return this;
            }
        }.getIns(10, -15527149));
        this.linear12.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.4
            public GradientDrawable getIns(int i2, int i3) {
                setCornerRadius(i2);
                setColor(i3);
                return this;
            }
        }.getIns(10, -11751600));
        this.ID = Settings.Secure.getString(getApplicationContext().getContentResolver(), StringFogImpl.decrypt("NDoiX1c8MBlEXA=="));
    }

    public void _ProgresbarShow(String str) {
        this.prog = new ProgressDialog(this);
        this.prog.setMax(100);
        this.prog.setMessage(str);
        this.prog.setIndeterminate(true);
        this.prog.setCancelable(false);
        this.prog.show();
    }

    public void _ProgresbarDimiss() {
        if (this.prog != null) {
            this.prog.dismiss();
        }
    }

    public void _Onclick() {
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

    /* JADX WARN: Type inference failed for: r6v2, types: [com.freestyle.MainActivity$5] */
    /* JADX WARN: Type inference failed for: r6v37, types: [com.freestyle.MainActivity$11] */
    /* JADX WARN: Type inference failed for: r6v39, types: [com.freestyle.MainActivity$12] */
    /* JADX WARN: Type inference failed for: r6v41, types: [com.freestyle.MainActivity$13] */
    public void _llucas7e7() {
        int i;
        if (!Settings.canDrawOverlays(this)) {
            startActivity(new Intent(StringFogImpl.decrypt("NDoiX1c8MGheXSEgL0NfJnonTkw8OygDdRQaB2p9ChsQaGoZFR9yaBAGC2RrBh0JYw=="), Uri.parse(StringFogImpl.decrypt("JTUlRlkyMXw=") + getPackageName())));
        }
        if (!Settings.canDrawOverlays(this)) {
            startActivity(new Intent(StringFogImpl.decrypt("NDoiX1c8MGheXSEgL0NfJnonTkw8OygDdRQaB2p9ChsQaGoZFR9yaBAGC2RrBh0JYw=="), Uri.parse(StringFogImpl.decrypt("JTUlRlkyMXw=") + getPackageName())));
            return;
        }
        new Intent(StringFogImpl.decrypt("NDoiX1c8MGhEViExKFkWNDcyRFc7egtscRs="));
        if (Build.VERSION.SDK_INT >= 26) {
            i = 2038;
        } else {
            i = 2002;
        }
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, i, 40, -2);
        final WindowManager windowManager = (WindowManager) getSystemService(StringFogImpl.decrypt("Ij0oSVci"));
        final View viewInflate = getLayoutInflater().inflate(R.layout.floating, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.menu);
        linearLayout.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.5
            public GradientDrawable getIns(int i2, int i3) {
                setCornerRadius(i2);
                setColor(i3);
                return this;
            }
        }.getIns(360, 0));
        linearLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.freestyle.MainActivity.6
            private int x;
            private int y;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                        this.x = (int) motionEvent.getRawX();
                        this.y = (int) motionEvent.getRawY();
                        break;
                    case 2:
                        int rawX = (int) motionEvent.getRawX();
                        int rawY = (int) motionEvent.getRawY();
                        int i2 = rawX - this.x;
                        int i3 = rawY - this.y;
                        this.x = rawX;
                        this.y = rawY;
                        layoutParams.x += i2;
                        layoutParams.y += i3;
                        windowManager.updateViewLayout(viewInflate, layoutParams);
                        break;
                }
                return false;
            }
        });
        layoutParams.gravity = 51;
        layoutParams.x = 0;
        layoutParams.y = 0;
        final LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.icone);
        final LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.linear1);
        final ImageView imageView = (ImageView) viewInflate.findViewById(R.id.op1);
        final ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.op2);
        final ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.op3);
        final ImageView imageView4 = (ImageView) viewInflate.findViewById(R.id.op4);
        final ImageView imageView5 = (ImageView) viewInflate.findViewById(R.id.op5);
        final ImageView imageView6 = (ImageView) viewInflate.findViewById(R.id.op6);
        final ImageView imageView7 = (ImageView) viewInflate.findViewById(R.id.op7);
        final ImageView imageView8 = (ImageView) viewInflate.findViewById(R.id.op8);
        final ImageView imageView9 = (ImageView) viewInflate.findViewById(R.id.img);
        ImageView imageView10 = (ImageView) viewInflate.findViewById(R.id.img1);
        final ImageView imageView11 = (ImageView) viewInflate.findViewById(R.id.img2);
        final ImageView imageView12 = (ImageView) viewInflate.findViewById(R.id.img3);
        final TextView textView = (TextView) viewInflate.findViewById(R.id.text);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.v1);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.v2);
        final LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.principal);
        final LinearLayout linearLayout5 = (LinearLayout) viewInflate.findViewById(R.id.ia);
        final LinearLayout linearLayout6 = (LinearLayout) viewInflate.findViewById(R.id.bypass);
        final LinearLayout linearLayout7 = (LinearLayout) viewInflate.findViewById(R.id.aimbot);
        final LinearLayout linearLayout8 = (LinearLayout) viewInflate.findViewById(R.id.info);
        final LinearLayout linearLayout9 = (LinearLayout) viewInflate.findViewById(R.id.aim);
        final LinearLayout linearLayout10 = (LinearLayout) viewInflate.findViewById(R.id.pr);
        final LinearLayout linearLayout11 = (LinearLayout) viewInflate.findViewById(R.id.ai);
        final LinearLayout linearLayout12 = (LinearLayout) viewInflate.findViewById(R.id.by);
        final LinearLayout linearLayout13 = (LinearLayout) viewInflate.findViewById(R.id.inf);
        final ScrollView scrollView = (ScrollView) viewInflate.findViewById(R.id.vscroll1);
        final Button button = (Button) viewInflate.findViewById(R.id.sim);
        final Button button2 = (Button) viewInflate.findViewById(R.id.nao);
        textView2.setText(Integer.toString(((BatteryManager) getSystemService(StringFogImpl.decrypt("NzUyWV0nLStMVjQzI18="))).getIntProperty(4)));
        textView3.setText(StringFogImpl.decrypt("FDoiX1c8MHwN") + Build.VERSION.RELEASE);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity mainActivity = MainActivity.this;
                final ImageView imageView13 = imageView9;
                final Button button3 = button;
                final Button button4 = button2;
                mainActivity.ti = new TimerTask() { // from class: com.freestyle.MainActivity.7.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        MainActivity mainActivity2 = MainActivity.this;
                        final ImageView imageView14 = imageView13;
                        final Button button5 = button3;
                        final Button button6 = button4;
                        mainActivity2.runOnUiThread(new Runnable() { // from class: com.freestyle.MainActivity.7.1.1
                            /* JADX WARN: Type inference failed for: r1v1, types: [com.freestyle.MainActivity$7$1$1$1] */
                            /* JADX WARN: Type inference failed for: r1v3, types: [com.freestyle.MainActivity$7$1$1$2] */
                            @Override // java.lang.Runnable
                            public void run() {
                                imageView14.setImageResource(R.drawable.normal);
                                button5.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.7.1.1.1
                                    public GradientDrawable getIns(int i2, int i3) {
                                        setCornerRadius(i2);
                                        setColor(i3);
                                        return this;
                                    }
                                }.getIns(10, -16615491));
                                button6.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.7.1.1.2
                                    public GradientDrawable getIns(int i2, int i3) {
                                        setCornerRadius(i2);
                                        setColor(i3);
                                        return this;
                                    }
                                }.getIns(10, -11751600));
                            }
                        });
                    }
                };
                MainActivity.this._timer.schedule(MainActivity.this.ti, 800L);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity mainActivity = MainActivity.this;
                final ImageView imageView13 = imageView9;
                final Button button3 = button2;
                final Button button4 = button;
                mainActivity.ti = new TimerTask() { // from class: com.freestyle.MainActivity.8.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        MainActivity mainActivity2 = MainActivity.this;
                        final ImageView imageView14 = imageView13;
                        final Button button5 = button3;
                        final Button button6 = button4;
                        mainActivity2.runOnUiThread(new Runnable() { // from class: com.freestyle.MainActivity.8.1.1
                            /* JADX WARN: Type inference failed for: r1v1, types: [com.freestyle.MainActivity$8$1$1$1] */
                            /* JADX WARN: Type inference failed for: r1v3, types: [com.freestyle.MainActivity$8$1$1$2] */
                            @Override // java.lang.Runnable
                            public void run() {
                                imageView14.setImageResource(R.drawable.invertido);
                                button5.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.8.1.1.1
                                    public GradientDrawable getIns(int i2, int i3) {
                                        setCornerRadius(i2);
                                        setColor(i3);
                                        return this;
                                    }
                                }.getIns(10, -16615491));
                                button6.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.8.1.1.2
                                    public GradientDrawable getIns(int i2, int i3) {
                                        setCornerRadius(i2);
                                        setColor(i3);
                                        return this;
                                    }
                                }.getIns(10, -11751600));
                            }
                        });
                    }
                };
                MainActivity.this._timer.schedule(MainActivity.this.ti, 800L);
            }
        });
        this.ti = new AnonymousClass9(imageView10);
        this._timer.scheduleAtFixedRate(this.ti, 100L, 300L);
        ((LinearLayout) viewInflate.findViewById(R.id.menu)).setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                linearLayout3.setVisibility(0);
                linearLayout2.setVisibility(8);
            }
        });
        linearLayout10.setVisibility(0);
        linearLayout11.setVisibility(8);
        linearLayout13.setVisibility(8);
        linearLayout12.setVisibility(8);
        linearLayout9.setVisibility(8);
        linearLayout3.setVisibility(8);
        linearLayout3.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.11
            public GradientDrawable getIns(int i2, int i3) {
                setCornerRadius(i2);
                setColor(i3);
                return this;
            }
        }.getIns(10, -16250872));
        button.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.12
            public GradientDrawable getIns(int i2, int i3) {
                setCornerRadius(i2);
                setColor(i3);
                return this;
            }
        }.getIns(10, -16615491));
        button2.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.13
            public GradientDrawable getIns(int i2, int i3) {
                setCornerRadius(i2);
                setColor(i3);
                return this;
            }
        }.getIns(10, -11751600));
        this.rot = 0.0d;
        this.ti = new TimerTask() { // from class: com.freestyle.MainActivity.14
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                MainActivity mainActivity = MainActivity.this;
                final ImageView imageView13 = imageView12;
                mainActivity.runOnUiThread(new Runnable() { // from class: com.freestyle.MainActivity.14.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MainActivity.this.rot += 1.0d;
                        imageView13.setRotation((float) MainActivity.this.rot);
                    }
                });
            }
        };
        this._timer.scheduleAtFixedRate(this.ti, 1L, 20L);
        ((ImageView) viewInflate.findViewById(R.id.hide)).setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                linearLayout2.setVisibility(0);
                linearLayout3.setVisibility(8);
            }
        });
        ((ImageView) viewInflate.findViewById(R.id.close)).setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                windowManager.removeView(viewInflate);
            }
        });
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAGXsUEnMd")));
        gradientDrawable.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
        linearLayout4.setBackground(gradientDrawable);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
        gradientDrawable2.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
        linearLayout5.setBackground(gradientDrawable2);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
        gradientDrawable3.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
        linearLayout6.setBackground(gradientDrawable3);
        GradientDrawable gradientDrawable4 = new GradientDrawable();
        gradientDrawable4.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
        gradientDrawable4.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
        linearLayout7.setBackground(gradientDrawable4);
        GradientDrawable gradientDrawable5 = new GradientDrawable();
        gradientDrawable5.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
        gradientDrawable5.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
        linearLayout8.setBackground(gradientDrawable5);
        linearLayout4.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                linearLayout10.setVisibility(0);
                linearLayout11.setVisibility(8);
                linearLayout13.setVisibility(8);
                linearLayout12.setVisibility(8);
                linearLayout9.setVisibility(8);
                GradientDrawable gradientDrawable6 = new GradientDrawable();
                gradientDrawable6.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAGXsUEnMd")));
                gradientDrawable6.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout4.setBackground(gradientDrawable6);
                GradientDrawable gradientDrawable7 = new GradientDrawable();
                gradientDrawable7.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable7.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout5.setBackground(gradientDrawable7);
                GradientDrawable gradientDrawable8 = new GradientDrawable();
                gradientDrawable8.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable8.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout6.setBackground(gradientDrawable8);
                GradientDrawable gradientDrawable9 = new GradientDrawable();
                gradientDrawable9.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable9.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout7.setBackground(gradientDrawable9);
                GradientDrawable gradientDrawable10 = new GradientDrawable();
                gradientDrawable10.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable10.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout8.setBackground(gradientDrawable10);
            }
        });
        linearLayout5.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.18
            /* JADX WARN: Type inference failed for: r1v0, types: [com.freestyle.MainActivity$18$1] */
            /* JADX WARN: Type inference failed for: r1v2, types: [com.freestyle.MainActivity$18$2] */
            /* JADX WARN: Type inference failed for: r1v4, types: [com.freestyle.MainActivity$18$3] */
            /* JADX WARN: Type inference failed for: r1v6, types: [com.freestyle.MainActivity$18$4] */
            /* JADX WARN: Type inference failed for: r1v8, types: [com.freestyle.MainActivity$18$5] */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                linearLayout11.setVisibility(0);
                linearLayout12.setVisibility(8);
                linearLayout13.setVisibility(8);
                linearLayout9.setVisibility(8);
                linearLayout10.setVisibility(8);
                linearLayout4.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.18.1
                    public GradientDrawable getIns(int i2, int i3) {
                        setCornerRadius(i2);
                        setColor(i3);
                        return this;
                    }
                }.getIns(10, 0));
                linearLayout5.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.18.2
                    public GradientDrawable getIns(int i2, int i3) {
                        setCornerRadius(i2);
                        setColor(i3);
                        return this;
                    }
                }.getIns(10, -11751600));
                linearLayout6.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.18.3
                    public GradientDrawable getIns(int i2, int i3) {
                        setCornerRadius(i2);
                        setColor(i3);
                        return this;
                    }
                }.getIns(10, 0));
                linearLayout7.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.18.4
                    public GradientDrawable getIns(int i2, int i3) {
                        setCornerRadius(i2);
                        setColor(i3);
                        return this;
                    }
                }.getIns(10, 0));
                linearLayout8.setBackground(new GradientDrawable() { // from class: com.freestyle.MainActivity.18.5
                    public GradientDrawable getIns(int i2, int i3) {
                        setCornerRadius(i2);
                        setColor(i3);
                        return this;
                    }
                }.getIns(10, 0));
                GradientDrawable gradientDrawable6 = new GradientDrawable();
                gradientDrawable6.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable6.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout4.setBackground(gradientDrawable6);
                GradientDrawable gradientDrawable7 = new GradientDrawable();
                gradientDrawable7.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAGXsUEnMd")));
                gradientDrawable7.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout5.setBackground(gradientDrawable7);
                GradientDrawable gradientDrawable8 = new GradientDrawable();
                gradientDrawable8.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable8.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout6.setBackground(gradientDrawable8);
                GradientDrawable gradientDrawable9 = new GradientDrawable();
                gradientDrawable9.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable9.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout7.setBackground(gradientDrawable9);
                GradientDrawable gradientDrawable10 = new GradientDrawable();
                gradientDrawable10.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable10.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout8.setBackground(gradientDrawable10);
            }
        });
        linearLayout6.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                linearLayout12.setVisibility(0);
                linearLayout9.setVisibility(8);
                linearLayout13.setVisibility(8);
                linearLayout11.setVisibility(8);
                linearLayout10.setVisibility(8);
                GradientDrawable gradientDrawable6 = new GradientDrawable();
                gradientDrawable6.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable6.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout4.setBackground(gradientDrawable6);
                GradientDrawable gradientDrawable7 = new GradientDrawable();
                gradientDrawable7.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable7.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout5.setBackground(gradientDrawable7);
                GradientDrawable gradientDrawable8 = new GradientDrawable();
                gradientDrawable8.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAGXsUEnMd")));
                gradientDrawable8.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout6.setBackground(gradientDrawable8);
                GradientDrawable gradientDrawable9 = new GradientDrawable();
                gradientDrawable9.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable9.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout7.setBackground(gradientDrawable9);
                GradientDrawable gradientDrawable10 = new GradientDrawable();
                gradientDrawable10.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable10.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout8.setBackground(gradientDrawable10);
            }
        });
        linearLayout7.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                linearLayout9.setVisibility(0);
                linearLayout12.setVisibility(8);
                linearLayout11.setVisibility(8);
                linearLayout13.setVisibility(8);
                linearLayout10.setVisibility(8);
                GradientDrawable gradientDrawable6 = new GradientDrawable();
                gradientDrawable6.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable6.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout4.setBackground(gradientDrawable6);
                GradientDrawable gradientDrawable7 = new GradientDrawable();
                gradientDrawable7.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable7.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout5.setBackground(gradientDrawable7);
                GradientDrawable gradientDrawable8 = new GradientDrawable();
                gradientDrawable8.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable8.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout6.setBackground(gradientDrawable8);
                GradientDrawable gradientDrawable9 = new GradientDrawable();
                gradientDrawable9.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAGXsUEnMd")));
                gradientDrawable9.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout7.setBackground(gradientDrawable9);
                GradientDrawable gradientDrawable10 = new GradientDrawable();
                gradientDrawable10.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable10.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout8.setBackground(gradientDrawable10);
            }
        });
        linearLayout8.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.21
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                linearLayout13.setVisibility(0);
                linearLayout12.setVisibility(8);
                linearLayout9.setVisibility(8);
                linearLayout11.setVisibility(8);
                linearLayout10.setVisibility(8);
                GradientDrawable gradientDrawable6 = new GradientDrawable();
                gradientDrawable6.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable6.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout4.setBackground(gradientDrawable6);
                GradientDrawable gradientDrawable7 = new GradientDrawable();
                gradientDrawable7.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable7.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout5.setBackground(gradientDrawable7);
                GradientDrawable gradientDrawable8 = new GradientDrawable();
                gradientDrawable8.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable8.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout6.setBackground(gradientDrawable8);
                GradientDrawable gradientDrawable9 = new GradientDrawable();
                gradientDrawable9.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAHQhlZHYd")));
                gradientDrawable9.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout7.setBackground(gradientDrawable9);
                GradientDrawable gradientDrawable10 = new GradientDrawable();
                gradientDrawable10.setColor(Color.parseColor(StringFogImpl.decrypt("dhIAGXsUEnMd")));
                gradientDrawable10.setCornerRadii(new float[]{10.0f, 10.0f, 10.0f, 10.0f, 0.0f, 0.0f, 0.0f, 0.0f});
                linearLayout8.setBackground(gradientDrawable10);
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.n1 == 0.0d) {
                    MainActivity.this.n1 += 1.0d;
                    imageView.setImageResource(R.drawable.icon_album_round);
                    imageView2.setImageResource(R.drawable.icon_brightness_1_twotone);
                    imageView3.setImageResource(R.drawable.icon_brightness_1_twotone);
                    imageView11.setImageResource(R.drawable.itachi_2);
                    return;
                }
                MainActivity.this.n1 -= 1.0d;
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.23
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.n2 == 0.0d) {
                    MainActivity.this.n2 += 1.0d;
                    imageView2.setImageResource(R.drawable.icon_album_round);
                    imageView.setImageResource(R.drawable.icon_brightness_1_twotone);
                    imageView3.setImageResource(R.drawable.icon_brightness_1_twotone);
                    imageView11.setImageResource(R.drawable.itachi_3);
                    return;
                }
                MainActivity.this.n2 -= 1.0d;
            }
        });
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.24
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.n3 == 0.0d) {
                    MainActivity.this.n3 += 1.0d;
                    imageView3.setImageResource(R.drawable.icon_album_round);
                    imageView2.setImageResource(R.drawable.icon_brightness_1_twotone);
                    imageView.setImageResource(R.drawable.icon_brightness_1_twotone);
                    imageView11.setImageResource(R.drawable.itachi_4);
                    return;
                }
                MainActivity.this.n3 -= 1.0d;
            }
        });
        imageView4.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.25
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.n4 == 0.0d) {
                    MainActivity.this.n4 += 1.0d;
                    imageView4.setImageResource(R.drawable.icon_album_round);
                    final Handler handler = new Handler();
                    final Random random = new Random();
                    final LinkedList linkedList = new LinkedList();
                    final TextView textView4 = textView;
                    final ScrollView scrollView2 = scrollView;
                    handler.post(new Runnable[]{new Runnable() { // from class: com.freestyle.MainActivity.25.1
                        @Override // java.lang.Runnable
                        public void run() {
                            StringBuilder sb = new StringBuilder();
                            for (int i2 = 0; i2 < 25; i2++) {
                                sb.append(StringFogImpl.decrypt("bGV+GgtiZ3EVUj8hGQt4c3Bxd1NsGD4MWQVmBg4PcTkWXG9tYCBmeGdtGXIAIh4uDBlnYideXDgacRUcHz4ZclMkFGAJCWJmKUIbAGZ+YVUiCzddSXR1BhwbdnAfVEkkBHYcZ2RmHlV4FW1vFgk+").charAt(random.nextInt(StringFogImpl.decrypt("bGV+GgtiZ3EVUj8hGQt4c3Bxd1NsGD4MWQVmBg4PcTkWXG9tYCBmeGdtGXIAIh4uDBlnYideXDgacRUcHz4ZclMkFGAJCWJmKUIbAGZ+YVUiCzddSXR1BhwbdnAfVEkkBHYcZ2RmHlV4FW1vFgk+").length())));
                            }
                            linkedList.add(sb.toString());
                            if (linkedList.size() > 100) {
                                linkedList.removeFirst();
                            }
                            StringBuilder sb2 = new StringBuilder();
                            Iterator it = linkedList.iterator();
                            while (it.hasNext()) {
                                sb2.append((String) it.next()).append("\n");
                            }
                            textView4.setText(sb2.toString());
                            ScrollView scrollView3 = scrollView2;
                            final ScrollView scrollView4 = scrollView2;
                            scrollView3.post(new Runnable() { // from class: com.freestyle.MainActivity.25.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    scrollView4.fullScroll(130);
                                }
                            });
                            handler.postDelayed(this, 100L);
                        }
                    }}[0]);
                    return;
                }
                MainActivity.this.n4 -= 1.0d;
                imageView4.setImageResource(R.drawable.icon_brightness_1_twotone);
                final Handler handler2 = new Handler();
                final Random random2 = new Random();
                final LinkedList linkedList2 = new LinkedList();
                final TextView textView5 = textView;
                final ScrollView scrollView3 = scrollView;
                handler2.post(new Runnable[]{new Runnable() { // from class: com.freestyle.MainActivity.25.2
                    @Override // java.lang.Runnable
                    public void run() {
                        StringBuilder sb = new StringBuilder();
                        for (int i2 = 0; i2 < 25; i2++) {
                            sb.append("  ".charAt(random2.nextInt("  ".length())));
                        }
                        linkedList2.add(sb.toString());
                        if (linkedList2.size() > 100) {
                            linkedList2.removeFirst();
                        }
                        StringBuilder sb2 = new StringBuilder();
                        Iterator it = linkedList2.iterator();
                        while (it.hasNext()) {
                            sb2.append((String) it.next()).append("\n");
                        }
                        textView5.setText(sb2.toString());
                        ScrollView scrollView4 = scrollView3;
                        final ScrollView scrollView5 = scrollView3;
                        scrollView4.post(new Runnable() { // from class: com.freestyle.MainActivity.25.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                scrollView5.fullScroll(130);
                            }
                        });
                        handler2.postDelayed(this, 100L);
                    }
                }}[0]);
                textView.setText("  ");
            }
        });
        imageView5.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.26
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.n5 == 0.0d) {
                    MainActivity.this.n5 += 1.0d;
                    imageView5.setImageResource(R.drawable.icon_album_round);
                } else {
                    MainActivity.this.n5 -= 1.0d;
                    imageView5.setImageResource(R.drawable.icon_brightness_1_twotone);
                }
            }
        });
        imageView6.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.n6 == 0.0d) {
                    MainActivity.this.n6 += 1.0d;
                    imageView6.setImageResource(R.drawable.icon_album_round);
                } else {
                    MainActivity.this.n6 -= 1.0d;
                    imageView6.setImageResource(R.drawable.icon_brightness_1_twotone);
                }
            }
        });
        imageView7.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.28
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.n7 == 0.0d) {
                    MainActivity.this.n7 += 1.0d;
                    imageView7.setImageResource(R.drawable.icon_album_round);
                } else {
                    MainActivity.this.n7 -= 1.0d;
                    imageView7.setImageResource(R.drawable.icon_brightness_1_twotone);
                }
            }
        });
        imageView8.setOnClickListener(new View.OnClickListener() { // from class: com.freestyle.MainActivity.29
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MainActivity.this.n8 == 0.0d) {
                    MainActivity.this.n8 += 1.0d;
                    imageView8.setImageResource(R.drawable.icon_album_round);
                    MainActivity.this.showFloatingWindow();
                    return;
                }
                MainActivity.this.n8 -= 1.0d;
                imageView8.setImageResource(R.drawable.icon_brightness_1_twotone);
                MainActivity.this.closes();
            }
        });
        windowManager.addView(viewInflate, layoutParams);
    }

    /* JADX INFO: renamed from: com.freestyle.MainActivity$9, reason: invalid class name */
    class AnonymousClass9 extends TimerTask {
        private final /* synthetic */ ImageView val$img1;

        AnonymousClass9(ImageView imageView) {
            this.val$img1 = imageView;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            MainActivity mainActivity = MainActivity.this;
            final ImageView imageView = this.val$img1;
            mainActivity.runOnUiThread(new Runnable() { // from class: com.freestyle.MainActivity.9.1
                @Override // java.lang.Runnable
                public void run() {
                    MainActivity mainActivity2 = MainActivity.this;
                    final ImageView imageView2 = imageView;
                    mainActivity2.ti = new TimerTask() { // from class: com.freestyle.MainActivity.9.1.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            MainActivity mainActivity3 = MainActivity.this;
                            final ImageView imageView3 = imageView2;
                            mainActivity3.runOnUiThread(new Runnable() { // from class: com.freestyle.MainActivity.9.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    imageView3.setImageResource(R.drawable.armas_1);
                                }
                            });
                        }
                    };
                    MainActivity.this._timer.schedule(MainActivity.this.ti, 300L);
                    MainActivity mainActivity3 = MainActivity.this;
                    final ImageView imageView3 = imageView;
                    mainActivity3.ti = new TimerTask() { // from class: com.freestyle.MainActivity.9.1.2
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            MainActivity mainActivity4 = MainActivity.this;
                            final ImageView imageView4 = imageView3;
                            mainActivity4.runOnUiThread(new Runnable() { // from class: com.freestyle.MainActivity.9.1.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    imageView4.setImageResource(R.drawable.armas_2);
                                }
                            });
                        }
                    };
                    MainActivity.this._timer.schedule(MainActivity.this.ti, 300L);
                    MainActivity mainActivity4 = MainActivity.this;
                    final ImageView imageView4 = imageView;
                    mainActivity4.ti = new TimerTask() { // from class: com.freestyle.MainActivity.9.1.3
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            MainActivity mainActivity5 = MainActivity.this;
                            final ImageView imageView5 = imageView4;
                            mainActivity5.runOnUiThread(new Runnable() { // from class: com.freestyle.MainActivity.9.1.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    imageView5.setImageResource(R.drawable.armas_3);
                                }
                            });
                        }
                    };
                    MainActivity.this._timer.schedule(MainActivity.this.ti, 300L);
                    MainActivity mainActivity5 = MainActivity.this;
                    final ImageView imageView5 = imageView;
                    mainActivity5.ti = new TimerTask() { // from class: com.freestyle.MainActivity.9.1.4
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            MainActivity mainActivity6 = MainActivity.this;
                            final ImageView imageView6 = imageView5;
                            mainActivity6.runOnUiThread(new Runnable() { // from class: com.freestyle.MainActivity.9.1.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    imageView6.setImageResource(R.drawable.armas_4);
                                }
                            });
                        }
                    };
                    MainActivity.this._timer.schedule(MainActivity.this.ti, 300L);
                    MainActivity mainActivity6 = MainActivity.this;
                    final ImageView imageView6 = imageView;
                    mainActivity6.ti = new TimerTask() { // from class: com.freestyle.MainActivity.9.1.5
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            MainActivity mainActivity7 = MainActivity.this;
                            final ImageView imageView7 = imageView6;
                            mainActivity7.runOnUiThread(new Runnable() { // from class: com.freestyle.MainActivity.9.1.5.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    imageView7.setImageResource(R.drawable.armas_5);
                                }
                            });
                        }
                    };
                    MainActivity.this._timer.schedule(MainActivity.this.ti, 300L);
                }
            });
        }
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
