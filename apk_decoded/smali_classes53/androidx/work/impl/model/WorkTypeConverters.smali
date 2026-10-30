.class public Landroidx/work/impl/model/WorkTypeConverters;
.super Ljava/lang/Object;
.source "WorkTypeConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkTypeConverters$NetworkTypeIds;,
        Landroidx/work/impl/model/WorkTypeConverters$BackoffPolicyIds;,
        Landroidx/work/impl/model/WorkTypeConverters$StateIds;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 328
    return-void
.end method

.method public static backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I
    .locals 6
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    sget-object v1, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$BackoffPolicy:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/work/BackoffPolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    .line 160
    :goto_0
    return v0

    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static byteArrayToContentUriTriggers([B)Landroidx/work/ContentUriTriggers;
    .locals 13
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    new-instance v9, Landroidx/work/ContentUriTriggers;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroidx/work/ContentUriTriggers;-><init>()V

    move-object v1, v9

    .line 295
    move-object v9, v0

    if-nez v9, :cond_0

    .line 297
    move-object v9, v1

    move-object v0, v9

    .line 324
    :goto_0
    return-object v0

    .line 299
    :cond_0
    new-instance v9, Ljava/io/ByteArrayInputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v9

    .line 300
    const/4 v9, 0x0

    move-object v3, v9

    .line 302
    :try_start_0
    new-instance v9, Ljava/io/ObjectInputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-direct {v10, v11}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v9

    .line 303
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    move v4, v9

    :goto_1
    move v9, v4

    if-lez v9, :cond_1

    .line 304
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object v5, v9

    .line 305
    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v9

    move v6, v9

    .line 306
    move-object v9, v1

    move-object v10, v5

    move v11, v6

    invoke-virtual {v9, v10, v11}, Landroidx/work/ContentUriTriggers;->add(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 311
    :cond_1
    move-object v9, v3

    if-eqz v9, :cond_2

    .line 313
    move-object v9, v3

    :try_start_1
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    :cond_2
    :goto_2
    move-object v9, v2

    :try_start_2
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 324
    :goto_3
    move-object v9, v1

    move-object v0, v9

    goto :goto_0

    .line 314
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 315
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 320
    :catch_1
    move-exception v9

    move-object v4, v9

    .line 321
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    goto :goto_3

    .line 308
    :catch_2
    move-exception v9

    move-object v4, v9

    .line 309
    move-object v9, v4

    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    move-object v9, v3

    if-eqz v9, :cond_3

    .line 313
    move-object v9, v3

    :try_start_4
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 319
    :cond_3
    :goto_4
    move-object v9, v2

    :try_start_5
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 322
    goto :goto_3

    .line 314
    :catch_3
    move-exception v9

    move-object v4, v9

    .line 315
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 320
    :catch_4
    move-exception v9

    move-object v4, v9

    .line 321
    move-object v9, v4

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    goto :goto_3

    .line 311
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v3

    if-eqz v9, :cond_4

    .line 313
    move-object v9, v3

    :try_start_6
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 319
    :cond_4
    :goto_5
    move-object v9, v2

    :try_start_7
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 323
    :goto_6
    move-object v9, v7

    throw v9

    .line 314
    :catch_5
    move-exception v9

    move-object v8, v9

    .line 315
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 320
    :catch_6
    move-exception v9

    move-object v8, v9

    .line 321
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public static contentUriTriggersToByteArray(Landroidx/work/ContentUriTriggers;)[B
    .locals 11
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .prologue
    .line 256
    move-object v0, p0

    move-object v7, v0

    invoke-virtual {v7}, Landroidx/work/ContentUriTriggers;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 257
    const/4 v7, 0x0

    move-object v0, v7

    .line 284
    :goto_0
    return-object v0

    .line 259
    :cond_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v7

    .line 260
    const/4 v7, 0x0

    move-object v2, v7

    .line 262
    :try_start_0
    new-instance v7, Ljava/io/ObjectOutputStream;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v7

    .line 263
    move-object v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Landroidx/work/ContentUriTriggers;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 264
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/work/ContentUriTriggers;->getTriggers()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/work/ContentUriTriggers$Trigger;

    move-object v4, v7

    .line 265
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/work/ContentUriTriggers$Trigger;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 266
    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v8}, Landroidx/work/ContentUriTriggers$Trigger;->shouldTriggerForDescendants()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    goto :goto_1

    .line 271
    :cond_1
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 273
    move-object v7, v2

    :try_start_1
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    :cond_2
    :goto_2
    move-object v7, v1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 284
    :goto_3
    move-object v7, v1

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 274
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 275
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 280
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 281
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    goto :goto_3

    .line 268
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 269
    move-object v7, v3

    :try_start_3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    move-object v7, v2

    if-eqz v7, :cond_3

    .line 273
    move-object v7, v2

    :try_start_4
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 279
    :cond_3
    :goto_4
    move-object v7, v1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 282
    goto :goto_3

    .line 274
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 275
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 280
    :catch_4
    move-exception v7

    move-object v3, v7

    .line 281
    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    goto :goto_3

    .line 271
    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v2

    if-eqz v7, :cond_4

    .line 273
    move-object v7, v2

    :try_start_6
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 279
    :cond_4
    :goto_5
    move-object v7, v1

    :try_start_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 283
    :goto_6
    move-object v7, v5

    throw v7

    .line 274
    :catch_5
    move-exception v7

    move-object v6, v7

    .line 275
    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 280
    :catch_6
    move-exception v7

    move-object v6, v7

    .line 281
    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public static intToBackoffPolicy(I)Landroidx/work/BackoffPolicy;
    .locals 6
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .prologue
    .line 176
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to BackoffPolicy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :pswitch_0
    sget-object v1, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    move-object v0, v1

    .line 181
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    move-object v0, v1

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static intToNetworkType(I)Landroidx/work/NetworkType;
    .locals 6
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .prologue
    .line 227
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 244
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to NetworkType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :pswitch_0
    sget-object v1, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    move-object v0, v1

    .line 241
    :goto_0
    return-object v0

    .line 232
    :pswitch_1
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    move-object v0, v1

    goto :goto_0

    .line 235
    :pswitch_2
    sget-object v1, Landroidx/work/NetworkType;->UNMETERED:Landroidx/work/NetworkType;

    move-object v0, v1

    goto :goto_0

    .line 238
    :pswitch_3
    sget-object v1, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    move-object v0, v1

    goto :goto_0

    .line 241
    :pswitch_4
    sget-object v1, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    move-object v0, v1

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static intToState(I)Landroidx/work/WorkInfo$State;
    .locals 6
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .prologue
    .line 122
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :pswitch_0
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    move-object v0, v1

    .line 139
    :goto_0
    return-object v0

    .line 127
    :pswitch_1
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    move-object v0, v1

    goto :goto_0

    .line 130
    :pswitch_2
    sget-object v1, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    move-object v0, v1

    goto :goto_0

    .line 133
    :pswitch_3
    sget-object v1, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    move-object v0, v1

    goto :goto_0

    .line 136
    :pswitch_4
    sget-object v1, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    move-object v0, v1

    goto :goto_0

    .line 139
    :pswitch_5
    sget-object v1, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    move-object v0, v1

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static networkTypeToInt(Landroidx/work/NetworkType;)I
    .locals 6
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    sget-object v1, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$NetworkType:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/work/NetworkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    .line 211
    :goto_0
    return v0

    .line 202
    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 205
    :pswitch_2
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 208
    :pswitch_3
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 211
    :pswitch_4
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static stateToInt(Landroidx/work/WorkInfo$State;)I
    .locals 6
    .annotation build Landroidx/room/TypeConverter;
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    sget-object v1, Landroidx/work/impl/model/WorkTypeConverters$1;->$SwitchMap$androidx$work$WorkInfo$State:[I

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/work/WorkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :pswitch_0
    const/4 v1, 0x0

    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 94
    :pswitch_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 97
    :pswitch_2
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 100
    :pswitch_3
    const/4 v1, 0x3

    move v0, v1

    goto :goto_0

    .line 103
    :pswitch_4
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 106
    :pswitch_5
    const/4 v1, 0x5

    move v0, v1

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
