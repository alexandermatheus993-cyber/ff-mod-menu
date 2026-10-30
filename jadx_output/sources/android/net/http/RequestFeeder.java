package android.net.http;

import org.apache.http.HttpHost;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes.dex
  classes54.dex
 */
/* JADX INFO: loaded from: classes.dex */
interface RequestFeeder {
    Request getRequest();

    Request getRequest(HttpHost httpHost);

    boolean haveRequest(HttpHost httpHost);

    void requeueRequest(Request request);
}
