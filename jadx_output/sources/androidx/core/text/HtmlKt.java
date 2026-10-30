package androidx.core.text;

import android.text.Html;
import android.text.Spanned;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: Html.kt */
/* JADX INFO: loaded from: classes53.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0086\b\u001a\u0017\u0010\t\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u0004H\u0086\b¨\u0006\u000b"}, d2 = {"parseAsHtml", "Landroid/text/Spanned;", "", "flags", "", "imageGetter", "Landroid/text/Html$ImageGetter;", "tagHandler", "Landroid/text/Html$TagHandler;", "toHtml", "option", "core-ktx_release"}, k = 2, mv = {1, 4, 1})
public final class HtmlKt {
    public static /* synthetic */ Spanned parseAsHtml$default(String str, int i, Html.ImageGetter imageGetter, Html.TagHandler tagHandler, int i2, Object obj) {
        int i3 = i;
        Html.ImageGetter imageGetter2 = imageGetter;
        Html.TagHandler tagHandler2 = tagHandler;
        if ((i2 & 1) != 0) {
            i3 = 0;
        }
        if ((i2 & 2) != 0) {
            imageGetter2 = (Html.ImageGetter) null;
        }
        if ((i2 & 4) != 0) {
            tagHandler2 = (Html.TagHandler) null;
        }
        Intrinsics.checkNotNullParameter(str, "$this$parseAsHtml");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(str, i3, imageGetter2, tagHandler2);
        Intrinsics.checkNotNullExpressionValue(spannedFromHtml, "HtmlCompat.fromHtml(this… imageGetter, tagHandler)");
        return spannedFromHtml;
    }

    @NotNull
    public static final Spanned parseAsHtml(@NotNull String str, int i, @Nullable Html.ImageGetter imageGetter, @Nullable Html.TagHandler tagHandler) {
        Intrinsics.checkNotNullParameter(str, "$this$parseAsHtml");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(str, i, imageGetter, tagHandler);
        Intrinsics.checkNotNullExpressionValue(spannedFromHtml, "HtmlCompat.fromHtml(this… imageGetter, tagHandler)");
        return spannedFromHtml;
    }

    public static /* synthetic */ String toHtml$default(Spanned spanned, int i, int i2, Object obj) {
        int i3 = i;
        if ((i2 & 1) != 0) {
            i3 = 0;
        }
        Intrinsics.checkNotNullParameter(spanned, "$this$toHtml");
        String html = HtmlCompat.toHtml(spanned, i3);
        Intrinsics.checkNotNullExpressionValue(html, "HtmlCompat.toHtml(this, option)");
        return html;
    }

    @NotNull
    public static final String toHtml(@NotNull Spanned spanned, int i) {
        Intrinsics.checkNotNullParameter(spanned, "$this$toHtml");
        String html = HtmlCompat.toHtml(spanned, i);
        Intrinsics.checkNotNullExpressionValue(html, "HtmlCompat.toHtml(this, option)");
        return html;
    }
}
