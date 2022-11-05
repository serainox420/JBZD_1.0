.class public Lcom/inmobi/commons/internal/WrapperFunctions;
.super Ljava/lang/Object;
.source "WrapperFunctions.java"


# static fields
.field private static a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/webkit/WebView;I)V
    .locals 5

    .prologue
    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 260
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 271
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Cannot set hardware accl"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 264
    :catch_1
    move-exception v0

    .line 265
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Cannot set hardware accl"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 266
    :catch_2
    move-exception v0

    .line 267
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Cannot set hardware accl"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 268
    :catch_3
    move-exception v0

    .line 269
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Cannot set hardware accl"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static disableHardwareAccl(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->a(Landroid/webkit/WebView;I)V

    .line 275
    return-void
.end method

.method public static getCurrentOrientationInFixedValues(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 321
    :goto_0
    return v0

    .line 293
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 294
    goto :goto_0

    .line 297
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 299
    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 301
    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    move v0, v1

    .line 303
    goto :goto_0

    .line 308
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_3

    move v0, v2

    .line 309
    goto :goto_0

    .line 311
    :cond_3
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 313
    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_5

    :cond_4
    move v0, v2

    .line 315
    goto :goto_0

    :cond_5
    move v0, v3

    .line 317
    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDisplayHeight(Landroid/view/Display;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 153
    .line 155
    new-array v0, v3, [Ljava/lang/Class;

    .line 156
    const-class v4, Landroid/graphics/Point;

    aput-object v4, v0, v1

    .line 159
    :try_start_0
    const-class v4, Landroid/view/Display;

    const-string v5, "getSize"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move v0, v3

    .line 170
    :goto_0
    if-eqz v0, :cond_0

    .line 171
    :try_start_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 172
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 185
    :goto_1
    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    :try_start_2
    const-class v3, Landroid/view/Display;

    const-string v4, "getHeight"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 166
    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    const-string v3, "[InMobi]-4.5.5"

    const-string v4, "Cannot get display height"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 175
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v0

    goto :goto_1

    .line 177
    :catch_2
    move-exception v0

    .line 178
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get display height"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 183
    goto :goto_1

    .line 179
    :catch_3
    move-exception v0

    .line 180
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get display height"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 183
    goto :goto_1

    .line 181
    :catch_4
    move-exception v0

    .line 182
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get display height"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method public static getDisplayWidth(Landroid/view/Display;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 117
    .line 119
    new-array v0, v3, [Ljava/lang/Class;

    .line 120
    const-class v4, Landroid/graphics/Point;

    aput-object v4, v0, v1

    .line 123
    :try_start_0
    const-class v4, Landroid/view/Display;

    const-string v5, "getSize"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move v0, v3

    .line 134
    :goto_0
    if-eqz v0, :cond_0

    .line 135
    :try_start_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 136
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget v0, v0, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 149
    :goto_1
    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    :try_start_2
    const-class v3, Landroid/view/Display;

    const-string v4, "getWidth"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 130
    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    .line 129
    const-string v3, "[InMobi]-4.5.5"

    const-string v4, "Cannot get display width"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 139
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v0

    goto :goto_1

    .line 141
    :catch_2
    move-exception v0

    .line 142
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get display width"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 147
    goto :goto_1

    .line 143
    :catch_3
    move-exception v0

    .line 144
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get display width"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 147
    goto :goto_1

    .line 145
    :catch_4
    move-exception v0

    .line 146
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get display width"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method public static getParamConfigScreenSize()I
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 47
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 50
    :try_start_0
    const-string v3, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get screen size"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    :catch_1
    move-exception v1

    .line 56
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get screen size"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getParamConfigSmallestScreenSize()I
    .locals 4

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 64
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 67
    :try_start_0
    const-string v3, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get smallest screen size"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :catch_1
    move-exception v1

    .line 73
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get smallest screen size"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getParamFillParent()I
    .locals 6

    .prologue
    .line 189
    sget v0, Lcom/inmobi/commons/internal/WrapperFunctions;->a:I

    if-nez v0, :cond_1

    .line 190
    const-class v2, Lcom/inmobi/commons/internal/WrapperFunctions;

    monitor-enter v2

    .line 191
    :try_start_0
    sget v0, Lcom/inmobi/commons/internal/WrapperFunctions;->a:I

    if-nez v0, :cond_0

    .line 192
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 193
    const-class v0, Landroid/view/ViewGroup$LayoutParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    const/4 v1, 0x0

    .line 196
    :try_start_1
    const-string v4, "MATCH_PARENT"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 204
    :goto_0
    if-eqz v0, :cond_0

    .line 206
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/inmobi/commons/internal/WrapperFunctions;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :cond_1
    sget v0, Lcom/inmobi/commons/internal/WrapperFunctions;->a:I

    return v0

    .line 197
    :catch_0
    move-exception v4

    .line 199
    :try_start_4
    const-string v4, "FILL_PARENT"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    :try_start_5
    const-string v4, "[InMobi]-4.5.5"

    const-string v5, "Cannot get fill parent param"

    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 207
    :catch_2
    move-exception v0

    .line 208
    const-string v1, "[InMobi]-4.5.5"

    const-string v3, "Cannot get fill parent param"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public static getParamLandscapeOrientation(I)I
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 100
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 101
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 104
    :try_start_0
    const-string v3, "SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get landscape orientation"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 109
    :catch_1
    move-exception v1

    .line 110
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get landscape orientation"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getParamPortraitOrientation(I)I
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x1

    .line 80
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 81
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 82
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 85
    :try_start_0
    const-string v3, "SCREEN_ORIENTATION_REVERSE_PORTRAIT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get portrait orientation"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 90
    :catch_1
    move-exception v1

    .line 91
    const-string v2, "[InMobi]-4.5.5"

    const-string v3, "Cannot get portrait orientation"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSSLErrorUrl(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    :try_start_0
    const-string v0, "android.net.http.SslError"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 281
    const-string v1, "getUrl"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 282
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Cannot get SSL Url"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVideoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 247
    :try_start_0
    const-string v0, "android.media.ThumbnailUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    const-string v1, "createVideoThumbnail"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 249
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string v1, "[InMobi]-4.5.5"

    const-string v2, "Cannot get video bitmap"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    throw v0
.end method
