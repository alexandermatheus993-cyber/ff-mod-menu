package com.github.megatronking.stringfog.xor;

import android.util.Base64;
import com.github.megatronking.stringfog.IStringFog;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes56.dex */
public final class StringFogImpl implements IStringFog {
    public static final String CHARSET_NAME_UTF_8 = "UTF-8";

    public static String decrypt(String str) {
        return new StringFogImpl().decrypt(str, "UTF-8");
    }

    @Override // com.github.megatronking.stringfog.IStringFog
    public String encrypt(String str, String str2) {
        try {
            return new String(Base64.encode(xor(str.getBytes("UTF-8"), str2), 2));
        } catch (UnsupportedEncodingException e) {
            return new String(Base64.encode(xor(str.getBytes(), str2), 2));
        }
    }

    @Override // com.github.megatronking.stringfog.IStringFog
    public String decrypt(String str, String str2) {
        try {
            return new String(xor(Base64.decode(str, 2), str2), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return new String(xor(Base64.decode(str, 2), str2));
        }
    }

    @Override // com.github.megatronking.stringfog.IStringFog
    public boolean overflow(String str, String str2) {
        return str != null && (str.length() * 4) / 3 >= 65535;
    }

    private static byte[] xor(byte[] bArr, String str) {
        int length = bArr.length;
        int length2 = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            if (i >= length2) {
                i = 0;
            }
            bArr[i2] = (byte) (bArr[i2] ^ str.charAt(i));
            i2++;
            i++;
        }
        return bArr;
    }
}
