package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes53.dex
  classes6.dex
 */
/* JADX INFO: loaded from: classes6.dex */
public class FontsContractCompat {

    @Deprecated
    public static final String PARCEL_FONT_RESULTS = "font_results";

    @Deprecated
    static final int RESULT_CODE_PROVIDER_NOT_FOUND = -1;

    @Deprecated
    static final int RESULT_CODE_WRONG_CERTIFICATES = -2;

    /* JADX WARN: Classes with same name are omitted, all sources:
      classes53.dex
      classes6.dex
     */
    public static final class Columns implements BaseColumns {
        public static final String FILE_ID = "file_id";
        public static final String ITALIC = "font_italic";
        public static final String RESULT_CODE = "result_code";
        public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
        public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
        public static final int RESULT_CODE_MALFORMED_QUERY = 3;
        public static final int RESULT_CODE_OK = 0;
        public static final String TTC_INDEX = "font_ttc_index";
        public static final String VARIATION_SETTINGS = "font_variation_settings";
        public static final String WEIGHT = "font_weight";
    }

    private FontsContractCompat() {
    }

    public static Typeface buildTypeface(Context context, CancellationSignal cancellationSignal, FontInfo[] fonts) {
        return TypefaceCompat.createFromFontInfo(context, cancellationSignal, fonts, 0);
    }

    public static FontFamilyResult fetchFonts(Context context, CancellationSignal cancellationSignal, FontRequest request) throws PackageManager.NameNotFoundException {
        return FontProvider.getFontFamilyResult(context, request, cancellationSignal);
    }

    public static void requestFont(Context context, FontRequest request, FontRequestCallback callback, Handler handler) {
        CallbackWithHandler callbackWrapper = new CallbackWithHandler(callback);
        Executor executor = RequestExecutor.createHandlerExecutor(handler);
        FontRequestWorker.requestFontAsync(context.getApplicationContext(), request, 0, executor, callbackWrapper);
    }

    public static Typeface requestFont(Context context, FontRequest request, int style, boolean isBlockingFetch, int timeout, Handler handler, FontRequestCallback callback) {
        CallbackWithHandler callbackWrapper = new CallbackWithHandler(callback, handler);
        if (isBlockingFetch) {
            return FontRequestWorker.requestFontSync(context, request, callbackWrapper, style, timeout);
        }
        return FontRequestWorker.requestFontAsync(context, request, style, null, callbackWrapper);
    }

    public static void resetTypefaceCache() {
        FontRequestWorker.resetTypefaceCache();
    }

    /* JADX INFO: loaded from: classes53.dex */
    private static final class TypefaceResult {
        final int mResult;
        final Typeface mTypeface;

        TypefaceResult(@Nullable Typeface typeface, int i) {
            this.mTypeface = typeface;
            this.mResult = i;
        }
    }

    /* JADX INFO: renamed from: androidx.core.provider.FontsContractCompat$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes53.dex */
    class AnonymousClass1 implements Callable<TypefaceResult> {
        final /* synthetic */ Context val$context;
        final /* synthetic */ String val$id;
        final /* synthetic */ FontRequest val$request;
        final /* synthetic */ int val$style;

        AnonymousClass1(Context context, FontRequest fontRequest, int i, String str) {
            this.val$context = context;
            this.val$request = fontRequest;
            this.val$style = i;
            this.val$id = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public TypefaceResult call() throws Exception {
            TypefaceResult fontInternal = FontsContractCompat.getFontInternal(this.val$context, this.val$request, this.val$style);
            if (fontInternal.mTypeface != null) {
                FontsContractCompat.sTypefaceCache.put(this.val$id, fontInternal.mTypeface);
            }
            return fontInternal;
        }
    }

    /* JADX INFO: renamed from: androidx.core.provider.FontsContractCompat$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes53.dex */
    class AnonymousClass2 implements SelfDestructiveThread.ReplyCallback<TypefaceResult> {
        final /* synthetic */ ResourcesCompat.FontCallback val$fontCallback;
        final /* synthetic */ Handler val$handler;

        AnonymousClass2(ResourcesCompat.FontCallback fontCallback, Handler handler) {
            this.val$fontCallback = fontCallback;
            this.val$handler = handler;
        }

        @Override // androidx.core.provider.SelfDestructiveThread.ReplyCallback
        public void onReply(TypefaceResult typefaceResult) {
            if (typefaceResult == null) {
                this.val$fontCallback.callbackFailAsync(1, this.val$handler);
            } else if (typefaceResult.mResult == 0) {
                this.val$fontCallback.callbackSuccessAsync(typefaceResult.mTypeface, this.val$handler);
            } else {
                this.val$fontCallback.callbackFailAsync(typefaceResult.mResult, this.val$handler);
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted, all sources:
      classes53.dex
      classes6.dex
     */
    public static class FontInfo {
        private final boolean mItalic;
        private final int mResultCode;
        private final int mTtcIndex;
        private final Uri mUri;
        private final int mWeight;

        @Deprecated
        public FontInfo(Uri uri, int ttcIndex, int weight, boolean italic, int resultCode) {
            this.mUri = (Uri) Preconditions.checkNotNull(uri);
            this.mTtcIndex = ttcIndex;
            this.mWeight = weight;
            this.mItalic = italic;
            this.mResultCode = resultCode;
        }

        static FontInfo create(Uri uri, int ttcIndex, int weight, boolean italic, int resultCode) {
            return new FontInfo(uri, ttcIndex, weight, italic, resultCode);
        }

        public Uri getUri() {
            return this.mUri;
        }

        public int getTtcIndex() {
            return this.mTtcIndex;
        }

        public int getWeight() {
            return this.mWeight;
        }

        public boolean isItalic() {
            return this.mItalic;
        }

        public int getResultCode() {
            return this.mResultCode;
        }
    }

    /* JADX INFO: renamed from: androidx.core.provider.FontsContractCompat$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes53.dex */
    class AnonymousClass3 implements SelfDestructiveThread.ReplyCallback<TypefaceResult> {
        final /* synthetic */ String val$id;

        AnonymousClass3(String str) {
            this.val$id = str;
        }

        @Override // androidx.core.provider.SelfDestructiveThread.ReplyCallback
        public void onReply(TypefaceResult typefaceResult) {
            synchronized (FontsContractCompat.sLock) {
                ArrayList arrayList = (ArrayList) FontsContractCompat.sPendingReplies.get(this.val$id);
                if (arrayList != null) {
                    FontsContractCompat.sPendingReplies.remove(this.val$id);
                    for (int i = 0; i < arrayList.size(); i++) {
                        ((SelfDestructiveThread.ReplyCallback) arrayList.get(i)).onReply(typefaceResult);
                    }
                }
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted, all sources:
      classes53.dex
      classes6.dex
     */
    public static class FontFamilyResult {
        public static final int STATUS_OK = 0;
        public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
        public static final int STATUS_WRONG_CERTIFICATES = 1;
        private final FontInfo[] mFonts;
        private final int mStatusCode;

        @Deprecated
        public FontFamilyResult(int statusCode, FontInfo[] fonts) {
            this.mStatusCode = statusCode;
            this.mFonts = fonts;
        }

        public int getStatusCode() {
            return this.mStatusCode;
        }

        public FontInfo[] getFonts() {
            return this.mFonts;
        }

        static FontFamilyResult create(int statusCode, FontInfo[] fonts) {
            return new FontFamilyResult(statusCode, fonts);
        }
    }

    /* JADX WARN: Classes with same name are omitted, all sources:
      classes53.dex
      classes6.dex
     */
    public static class FontRequestCallback {
        public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
        public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
        public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
        public static final int FAIL_REASON_MALFORMED_QUERY = 3;
        public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
        public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
        public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;

        @Deprecated
        public static final int RESULT_OK = 0;
        static final int RESULT_SUCCESS = 0;

        /* JADX WARN: Classes with same name are omitted, all sources:
          classes53.dex
          classes6.dex
         */
        @Retention(RetentionPolicy.SOURCE)
        public @interface FontRequestFailReason {
        }

        public void onTypefaceRetrieved(Typeface typeface) {
        }

        public void onTypefaceRequestFailed(int reason) {
        }
    }

    /* JADX INFO: renamed from: androidx.core.provider.FontsContractCompat$4, reason: invalid class name */
    /* JADX INFO: loaded from: classes53.dex */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ Context val$appContext;
        final /* synthetic */ FontRequestCallback val$callback;
        final /* synthetic */ Handler val$callerThreadHandler;
        final /* synthetic */ FontRequest val$request;

        AnonymousClass4(Context context, FontRequest fontRequest, Handler handler, FontRequestCallback fontRequestCallback) {
            this.val$appContext = context;
            this.val$request = fontRequest;
            this.val$callerThreadHandler = handler;
            this.val$callback = fontRequestCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                FontFamilyResult fontFamilyResultFetchFonts = FontsContractCompat.fetchFonts(this.val$appContext, null, this.val$request);
                if (fontFamilyResultFetchFonts.getStatusCode() != 0) {
                    switch (fontFamilyResultFetchFonts.getStatusCode()) {
                        case 1:
                            this.val$callerThreadHandler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4.this.val$callback.onTypefaceRequestFailed(-2);
                                }
                            });
                            break;
                        case 2:
                            this.val$callerThreadHandler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4.this.val$callback.onTypefaceRequestFailed(-3);
                                }
                            });
                            break;
                        default:
                            this.val$callerThreadHandler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4.this.val$callback.onTypefaceRequestFailed(-3);
                                }
                            });
                            break;
                    }
                    return;
                }
                FontInfo[] fonts = fontFamilyResultFetchFonts.getFonts();
                if (fonts == null || fonts.length == 0) {
                    this.val$callerThreadHandler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.5
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass4.this.val$callback.onTypefaceRequestFailed(1);
                        }
                    });
                    return;
                }
                for (FontInfo fontInfo : fonts) {
                    if (fontInfo.getResultCode() != 0) {
                        final int resultCode = fontInfo.getResultCode();
                        if (resultCode < 0) {
                            this.val$callerThreadHandler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.6
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4.this.val$callback.onTypefaceRequestFailed(-3);
                                }
                            });
                            return;
                        } else {
                            this.val$callerThreadHandler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.7
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4.this.val$callback.onTypefaceRequestFailed(resultCode);
                                }
                            });
                            return;
                        }
                    }
                }
                final Typeface typefaceBuildTypeface = FontsContractCompat.buildTypeface(this.val$appContext, null, fonts);
                if (typefaceBuildTypeface == null) {
                    this.val$callerThreadHandler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.8
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass4.this.val$callback.onTypefaceRequestFailed(-3);
                        }
                    });
                } else {
                    this.val$callerThreadHandler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.9
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass4.this.val$callback.onTypefaceRetrieved(typefaceBuildTypeface);
                        }
                    });
                }
            } catch (PackageManager.NameNotFoundException e) {
                this.val$callerThreadHandler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass4.this.val$callback.onTypefaceRequestFailed(-1);
                    }
                });
            }
        }
    }

    @Deprecated
    public static Typeface getFontSync(Context context, FontRequest request, ResourcesCompat.FontCallback fontCallback, Handler handler, boolean isBlockingFetch, int timeout, int style) {
        FontRequestCallback newCallback = new TypefaceCompat.ResourcesCallbackAdapter(fontCallback);
        Handler newHandler = ResourcesCompat.FontCallback.getHandler(handler);
        return requestFont(context, request, style, isBlockingFetch, timeout, newHandler, newCallback);
    }

    @Deprecated
    public static void resetCache() {
        FontRequestWorker.resetTypefaceCache();
    }

    @Deprecated
    public static Map<Uri, ByteBuffer> prepareFontData(Context context, FontInfo[] fonts, CancellationSignal cancellationSignal) {
        return TypefaceCompatUtil.readFontInfoIntoByteBuffer(context, fonts, cancellationSignal);
    }

    @Deprecated
    public static ProviderInfo getProvider(PackageManager packageManager, FontRequest request, Resources resources) throws PackageManager.NameNotFoundException {
        return FontProvider.getProvider(packageManager, request, resources);
    }

    /* JADX INFO: renamed from: androidx.core.provider.FontsContractCompat$5, reason: invalid class name */
    /* JADX INFO: loaded from: classes53.dex */
    class AnonymousClass5 implements Comparator<byte[]> {
        AnonymousClass5() {
        }

        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            if (bArr.length != bArr2.length) {
                return bArr.length - bArr2.length;
            }
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] != bArr2[i]) {
                    return bArr[i] - bArr2[i];
                }
            }
            return 0;
        }
    }
}
