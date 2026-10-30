package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes4.dex
  classes53.dex
 */
/* JADX INFO: loaded from: classes4.dex */
@Target({ElementType.METHOD})
@Deprecated
@Retention(RetentionPolicy.SOURCE)
public @interface InspectableProperty {

    /* JADX WARN: Classes with same name are omitted, all sources:
      classes4.dex
      classes53.dex
     */
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface EnumEntry {
        String name();

        int value();
    }

    /* JADX WARN: Classes with same name are omitted, all sources:
      classes4.dex
      classes53.dex
     */
    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface FlagEntry {
        int mask() default 0;

        String name();

        int target();
    }

    /* JADX WARN: Classes with same name are omitted, all sources:
      classes4.dex
      classes53.dex
     */
    public enum ValueType {
        NONE,
        INFERRED,
        INT_ENUM,
        INT_FLAG,
        COLOR,
        GRAVITY,
        RESOURCE_ID
    }

    int attributeId() default 0;

    EnumEntry[] enumMapping() default {};

    FlagEntry[] flagMapping() default {};

    boolean hasAttributeId() default true;

    String name() default "";

    ValueType valueType() default ValueType.INFERRED;
}
