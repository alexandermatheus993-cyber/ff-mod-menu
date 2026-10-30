package androidx.core.net;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes53.dex
  classes6.dex
 */
/* JADX INFO: loaded from: classes6.dex */
public class ParseException extends RuntimeException {
    public final String response;

    ParseException(String response) {
        super(response);
        this.response = response;
    }
}
