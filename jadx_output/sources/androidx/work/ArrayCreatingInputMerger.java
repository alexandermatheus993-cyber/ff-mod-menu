package androidx.work;

import androidx.annotation.NonNull;
import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes53.dex */
public final class ArrayCreatingInputMerger extends InputMerger {
    @Override // androidx.work.InputMerger
    @NonNull
    public Data merge(@NonNull List<Data> list) {
        Object objConcatenateArrayAndNonArray;
        Data.Builder builder = new Data.Builder();
        HashMap map = new HashMap();
        Iterator<Data> it = list.iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, Object> entry : it.next().getKeyValueMap().entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value.getClass();
                Object obj = map.get(key);
                if (obj == null) {
                    if (cls.isArray()) {
                        objConcatenateArrayAndNonArray = value;
                    } else {
                        objConcatenateArrayAndNonArray = createArrayFor(value);
                    }
                } else {
                    Class<?> cls2 = obj.getClass();
                    if (cls2.equals(cls)) {
                        if (cls2.isArray()) {
                            objConcatenateArrayAndNonArray = concatenateArrays(obj, value);
                        } else {
                            objConcatenateArrayAndNonArray = concatenateNonArrays(obj, value);
                        }
                    } else if (cls2.isArray() && cls2.getComponentType().equals(cls)) {
                        objConcatenateArrayAndNonArray = concatenateArrayAndNonArray(obj, value);
                    } else if (cls.isArray() && cls.getComponentType().equals(cls2)) {
                        objConcatenateArrayAndNonArray = concatenateArrayAndNonArray(value, obj);
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                map.put(key, objConcatenateArrayAndNonArray);
            }
        }
        builder.putAll(map);
        return builder.build();
    }

    private Object concatenateArrays(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        int length2 = Array.getLength(obj2);
        Object objNewInstance = Array.newInstance(obj.getClass().getComponentType(), length + length2);
        System.arraycopy(obj, 0, objNewInstance, 0, length);
        System.arraycopy(obj2, 0, objNewInstance, length, length2);
        return objNewInstance;
    }

    private Object concatenateNonArrays(Object obj, Object obj2) {
        Object objNewInstance = Array.newInstance(obj.getClass(), 2);
        Array.set(objNewInstance, 0, obj);
        Array.set(objNewInstance, 1, obj2);
        return objNewInstance;
    }

    private Object concatenateArrayAndNonArray(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        Object objNewInstance = Array.newInstance(obj2.getClass(), length + 1);
        System.arraycopy(obj, 0, objNewInstance, 0, length);
        Array.set(objNewInstance, length, obj2);
        return objNewInstance;
    }

    private Object createArrayFor(Object obj) {
        Object objNewInstance = Array.newInstance(obj.getClass(), 1);
        Array.set(objNewInstance, 0, obj);
        return objNewInstance;
    }
}
