package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.Px;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: Drawable.kt */
/* JADX INFO: loaded from: classes53.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a2\u0010\b\u001a\u00020\t*\u00020\u00022\b\b\u0003\u0010\n\u001a\u00020\u00042\b\b\u0003\u0010\u000b\u001a\u00020\u00042\b\b\u0003\u0010\f\u001a\u00020\u00042\b\b\u0003\u0010\r\u001a\u00020\u0004¨\u0006\u000e"}, d2 = {"toBitmap", "Landroid/graphics/Bitmap;", "Landroid/graphics/drawable/Drawable;", "width", "", "height", "config", "Landroid/graphics/Bitmap$Config;", "updateBounds", "", "left", "top", "right", "bottom", "core-ktx_release"}, k = 2, mv = {1, 4, 1})
public final class DrawableKt {
    public static /* synthetic */ Bitmap toBitmap$default(Drawable drawable, int i, int i2, Bitmap.Config config, int i3, Object obj) {
        int intrinsicWidth = i;
        int intrinsicHeight = i2;
        Bitmap.Config config2 = config;
        if ((i3 & 1) != 0) {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        if ((i3 & 2) != 0) {
            intrinsicHeight = drawable.getIntrinsicHeight();
        }
        if ((i3 & 4) != 0) {
            config2 = (Bitmap.Config) null;
        }
        return toBitmap(drawable, intrinsicWidth, intrinsicHeight, config2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002d, code lost:
    
        if (r11.getConfig() == r20) goto L8;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final android.graphics.Bitmap toBitmap(@org.jetbrains.annotations.NotNull android.graphics.drawable.Drawable r17, @androidx.annotation.Px int r18, @androidx.annotation.Px int r19, @org.jetbrains.annotations.Nullable android.graphics.Bitmap.Config r20) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.drawable.DrawableKt.toBitmap(android.graphics.drawable.Drawable, int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    public static /* synthetic */ void updateBounds$default(Drawable drawable, int i, int i2, int i3, int i4, int i5, Object obj) {
        int i6 = i;
        int i7 = i2;
        int i8 = i3;
        int i9 = i4;
        if ((i5 & 1) != 0) {
            i6 = drawable.getBounds().left;
        }
        if ((i5 & 2) != 0) {
            i7 = drawable.getBounds().top;
        }
        if ((i5 & 4) != 0) {
            i8 = drawable.getBounds().right;
        }
        if ((i5 & 8) != 0) {
            i9 = drawable.getBounds().bottom;
        }
        updateBounds(drawable, i6, i7, i8, i9);
    }

    public static final void updateBounds(@NotNull Drawable drawable, @Px int i, @Px int i2, @Px int i3, @Px int i4) {
        Intrinsics.checkNotNullParameter(drawable, "$this$updateBounds");
        drawable.setBounds(i, i2, i3, i4);
    }
}
