package com.freestyle;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import com.github.megatronking.stringfog.xor.StringFogImpl;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes56.dex */
public class FileUtil {
    private static void createNewFile(String str) {
        int iLastIndexOf = str.lastIndexOf(File.separator);
        if (iLastIndexOf > 0) {
            makeDir(str.substring(0, iLastIndexOf));
        }
        File file = new File(str);
        try {
            if (!file.exists()) {
                file.createNewFile();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String readFile(String str) throws Throwable {
        FileReader fileReader;
        createNewFile(str);
        StringBuilder sb = new StringBuilder();
        FileReader fileReader2 = null;
        try {
            try {
                fileReader = new FileReader(new File(str));
                try {
                    char[] cArr = new char[1024];
                    while (true) {
                        int i = fileReader.read(cArr);
                        if (i <= 0) {
                            break;
                        }
                        sb.append(new String(cArr, 0, i));
                    }
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        fileReader2.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            fileReader = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                fileReader2.close();
            }
            throw th;
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:32:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void writeFile(String str, String str2) throws Throwable {
        FileWriter fileWriter;
        createNewFile(str);
        FileWriter fileWriter2 = null;
        try {
            fileWriter = new FileWriter(new File(str), false);
            try {
                try {
                    fileWriter.write(str2);
                    fileWriter.flush();
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th) {
                th = th;
                fileWriter2 = fileWriter;
                if (fileWriter2 != null) {
                    try {
                        fileWriter2.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            fileWriter = null;
        } catch (Throwable th2) {
            th = th2;
            if (fileWriter2 != null) {
                fileWriter2.close();
            }
            throw th;
        }
    }

    public static void copyFile(String str, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        if (isExistFile(str)) {
            createNewFile(str2);
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    fileOutputStream = new FileOutputStream(str2, false);
                    try {
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int i = fileInputStream.read(bArr);
                                if (i <= 0) {
                                    break;
                                } else {
                                    fileOutputStream.write(bArr, 0, i);
                                }
                                th = th;
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                        } catch (IOException e5) {
                            e = e5;
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e7) {
                                    e7.printStackTrace();
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (IOException e8) {
                    e = e8;
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
            } catch (IOException e9) {
                e = e9;
                fileOutputStream = null;
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
                fileInputStream = null;
            }
        }
    }

    public static void copyDir(String str, String str2) throws Throwable {
        File[] fileArrListFiles = new File(str).listFiles();
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                copyFile(file2.getPath(), String.valueOf(str2) + StringFogImpl.decrypt("eg==") + file2.getName());
            } else if (file2.isDirectory()) {
                copyDir(file2.getPath(), String.valueOf(str2) + StringFogImpl.decrypt("eg==") + file2.getName());
            }
        }
    }

    public static void moveFile(String str, String str2) throws Throwable {
        copyFile(str, str2);
        deleteFile(str);
    }

    public static void deleteFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory()) {
                        deleteFile(file2.getAbsolutePath());
                    }
                    if (file2.isFile()) {
                        file2.delete();
                    }
                }
            }
            file.delete();
        }
    }

    public static boolean isExistFile(String str) {
        return new File(str).exists();
    }

    public static void makeDir(String str) {
        if (!isExistFile(str)) {
            new File(str).mkdirs();
        }
    }

    public static void listDir(String str, ArrayList<String> arrayList) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (file.exists() && !file.isFile() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0 && arrayList != null) {
            arrayList.clear();
            for (File file2 : fileArrListFiles) {
                arrayList.add(file2.getAbsolutePath());
            }
        }
    }

    public static boolean isDirectory(String str) {
        if (isExistFile(str)) {
            return new File(str).isDirectory();
        }
        return false;
    }

    public static boolean isFile(String str) {
        if (isExistFile(str)) {
            return new File(str).isFile();
        }
        return false;
    }

    public static long getFileLength(String str) {
        if (isExistFile(str)) {
            return new File(str).length();
        }
        return 0L;
    }

    public static String getExternalStorageDir() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static String getPackageDataDir(Context context) {
        return context.getExternalFilesDir(null).getAbsolutePath();
    }

    public static String getPublicDir(String str) {
        return Environment.getExternalStoragePublicDirectory(str).getAbsolutePath();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0141  */
    public static String convertUriToFilePath(Context context, Uri uri) throws Throwable {
        String path;
        Uri uri2;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (isExternalStorageDocument(uri)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(StringFogImpl.decrypt("bw=="));
                if (StringFogImpl.decrypt("JSYvQFknLQ==").equalsIgnoreCase(strArrSplit[0])) {
                    path = Environment.getExternalStorageDirectory() + StringFogImpl.decrypt("eg==") + strArrSplit[1];
                } else {
                    path = null;
                }
            } else if (isDownloadsDocument(uri)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                String[] strArrSplit2 = documentId.split(StringFogImpl.decrypt("bw=="));
                String str = strArrSplit2[0];
                if (StringFogImpl.decrypt("JzUx").equalsIgnoreCase(str)) {
                    return strArrSplit2[1];
                }
                if (Build.VERSION.SDK_INT >= 29 && StringFogImpl.decrypt("OCcg").equalsIgnoreCase(str)) {
                    path = getDataColumn(context, MediaStore.Downloads.EXTERNAL_CONTENT_URI, StringFogImpl.decrypt("Cj0iEAc="), new String[]{strArrSplit2[1]});
                } else {
                    path = getDataColumn(context, ContentUris.withAppendedId(Uri.parse(StringFogImpl.decrypt("NjsoWV07IHwCFzE7MUNUOjUiXhclISRBUTYLIkJPOzgpTFwm")), Long.valueOf(documentId).longValue()), null, null);
                }
            } else if (isMediaDocument(uri)) {
                String[] strArrSplit3 = DocumentsContract.getDocumentId(uri).split(StringFogImpl.decrypt("bw=="));
                String str2 = strArrSplit3[0];
                if (StringFogImpl.decrypt("PDknSl0=").equals(str2)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if (StringFogImpl.decrypt("Iz0iSFc=").equals(str2)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else {
                    uri2 = StringFogImpl.decrypt("NCEiRFc=").equals(str2) ? MediaStore.Audio.Media.EXTERNAL_CONTENT_URI : null;
                }
                path = getDataColumn(context, uri2, StringFogImpl.decrypt("Cj0iEAc="), new String[]{strArrSplit3[1]});
            } else {
                path = null;
            }
        } else if (StringFogImpl.decrypt("NjsoWV07IA==").equalsIgnoreCase(uri.getScheme())) {
            path = getDataColumn(context, uri, null, null);
        } else if (StringFogImpl.decrypt("Mz0qSA==").equalsIgnoreCase(uri.getScheme())) {
            path = uri.getPath();
        } else {
            path = null;
        }
        if (path == null) {
            return null;
        }
        try {
            return URLDecoder.decode(path, StringFogImpl.decrypt("AAAAAAA="));
        } catch (Exception e) {
            return null;
        }
    }

    private static String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Throwable th;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{StringFogImpl.decrypt("CjAnWVk=")}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(StringFogImpl.decrypt("CjAnWVk=")));
                        if (cursorQuery != null) {
                            cursorQuery.close();
                            return string;
                        }
                        return string;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorQuery == null) {
                        throw th;
                    }
                    try {
                        cursorQuery.close();
                        throw th;
                    } catch (Throwable th3) {
                        th = th3;
                        if (th != null) {
                            if (th != th) {
                                try {
                                    th.addSuppressed(th);
                                } catch (Exception e) {
                                }
                            }
                            th = th;
                        }
                        throw th;
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            th = null;
        }
    }

    private static boolean isExternalStorageDocument(Uri uri) {
        return StringFogImpl.decrypt("NjsrA1k7MDRCUTF6I1VMMCYoTFQmIClfWTIxaElXNiErSFYhJw==").equals(uri.getAuthority());
    }

    private static boolean isDownloadsDocument(Uri uri) {
        return StringFogImpl.decrypt("NjsrA1k7MDRCUTF6Nl9XIz0iSEomeiJCTzs4KUxcJnoiQlsgOSNDTCY=").equals(uri.getAuthority());
    }

    private static boolean isMediaDocument(Uri uri) {
        return StringFogImpl.decrypt("NjsrA1k7MDRCUTF6Nl9XIz0iSEomeitIXDw1aElXNiErSFYhJw==").equals(uri.getAuthority());
    }

    private static void saveBitmap(Bitmap bitmap, String str) throws Throwable {
        createNewFile(str);
        Throwable th = null;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            } finally {
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                if (null != th) {
                    try {
                        th.addSuppressed(th);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                th = null;
            }
            throw th;
        }
    }

    public static Bitmap getScaledBitmap(String str, int i) {
        int i2;
        int i3;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        int width = bitmapDecodeFile.getWidth();
        int height = bitmapDecodeFile.getHeight();
        if (width > height) {
            i3 = (int) ((i / width) * height);
            i2 = i;
        } else {
            i2 = (int) (width * (i / height));
            i3 = i;
        }
        return Bitmap.createScaledBitmap(bitmapDecodeFile, i2, i3, true);
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        int i5 = 1;
        if (i4 > i2 || i3 > i) {
            int i6 = i4 / 2;
            int i7 = i3 / 2;
            while (i6 / i5 >= i2 && i7 / i5 >= i) {
                i5 *= 2;
            }
        }
        return i5;
    }

    public static Bitmap decodeSampleBitmapFromPath(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public static void resizeBitmapFileRetainRatio(String str, String str2, int i) throws Throwable {
        if (isExistFile(str)) {
            saveBitmap(getScaledBitmap(str, i), str2);
        }
    }

    public static void resizeBitmapFileToSquare(String str, String str2, int i) throws Throwable {
        if (isExistFile(str)) {
            saveBitmap(Bitmap.createScaledBitmap(BitmapFactory.decodeFile(str), i, i, true), str2);
        }
    }

    public static void resizeBitmapFileToCircle(String str, String str2) throws Throwable {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-12434878);
            canvas.drawCircle(bitmapDecodeFile.getWidth() / 2, bitmapDecodeFile.getHeight() / 2, bitmapDecodeFile.getWidth() / 2, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmapDecodeFile, rect, rect, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static void resizeBitmapFileWithRoundedBorder(String str, String str2, int i) throws Throwable {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
            RectF rectF = new RectF(rect);
            float f = i;
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-12434878);
            canvas.drawRoundRect(rectF, f, f, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmapDecodeFile, rect, rect, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static void cropBitmapFileFromCenter(String str, String str2, int i, int i2) throws Throwable {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            int width = bitmapDecodeFile.getWidth();
            int height = bitmapDecodeFile.getHeight();
            if (width >= i || height >= i2) {
                int i3 = width > i ? (width - i) / 2 : 0;
                int i4 = height > i2 ? (height - i2) / 2 : 0;
                if (i > width) {
                    i = width;
                }
                if (i2 > height) {
                    i2 = height;
                }
                saveBitmap(Bitmap.createBitmap(bitmapDecodeFile, i3, i4, i, i2), str2);
            }
        }
    }

    public static void rotateBitmapFile(String str, String str2, float f) throws Throwable {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Matrix matrix = new Matrix();
            matrix.postRotate(f);
            saveBitmap(Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true), str2);
        }
    }

    public static void scaleBitmapFile(String str, String str2, float f, float f2) throws Throwable {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Matrix matrix = new Matrix();
            matrix.postScale(f, f2);
            saveBitmap(Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true), str2);
        }
    }

    public static void skewBitmapFile(String str, String str2, float f, float f2) throws Throwable {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Matrix matrix = new Matrix();
            matrix.postSkew(f, f2);
            saveBitmap(Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true), str2);
        }
    }

    public static void setBitmapFileColorFilter(String str, String str2, int i) throws Throwable {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth() - 1, bitmapDecodeFile.getHeight() - 1);
            Paint paint = new Paint();
            paint.setColorFilter(new LightingColorFilter(i, 1));
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static void setBitmapFileBrightness(String str, String str2, float f) throws Throwable {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            ColorMatrix colorMatrix = new ColorMatrix(new float[]{1.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 1.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 1.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), bitmapDecodeFile.getConfig());
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            canvas.drawBitmap(bitmapDecodeFile, 0.0f, 0.0f, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static void setBitmapFileContrast(String str, String str2, float f) throws Throwable {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            ColorMatrix colorMatrix = new ColorMatrix(new float[]{f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), bitmapDecodeFile.getConfig());
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            canvas.drawBitmap(bitmapDecodeFile, 0.0f, 0.0f, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static int getJpegRotate(String str) {
        try {
            switch (new ExifInterface(str).getAttributeInt(StringFogImpl.decrypt("GiYvSFYhNTJEVzs="), -1)) {
                case 3:
                    return 180;
                case 4:
                case 5:
                case 7:
                default:
                    return 0;
                case 6:
                    return 90;
                case 8:
                    return 270;
            }
        } catch (IOException e) {
            return 0;
        }
    }

    public static File createNewPictureFile(Context context) {
        return new File(String.valueOf(context.getExternalFilesDir(Environment.DIRECTORY_DCIM).getAbsolutePath()) + File.separator + (String.valueOf(new SimpleDateFormat(StringFogImpl.decrypt("LC0/VHUYMCJycB05K15L")).format(new Date())) + StringFogImpl.decrypt("ez42Sg==")));
    }
}
