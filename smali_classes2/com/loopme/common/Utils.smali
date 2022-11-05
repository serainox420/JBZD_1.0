.class public Lcom/loopme/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sAudioManager:Landroid/media/AudioManager;

.field private static sLocationManager:Landroid/location/LocationManager;

.field private static sPackageManager:Landroid/content/pm/PackageManager;

.field private static sResources:Landroid/content/res/Resources;

.field private static sWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/loopme/common/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/Utils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateAppear(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    .line 171
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 173
    return-void
.end method

.method public static calculateNewLayoutParams(Landroid/widget/FrameLayout$LayoutParams;IIIILcom/loopme/constants/StretchOption;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 277
    const/16 v0, 0x11

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    const/4 v0, 0x0

    .line 282
    if-le p1, p2, :cond_2

    .line 283
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 284
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 286
    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v1, p4, v1

    .line 287
    iget v2, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v2, :cond_0

    .line 288
    mul-int/lit8 v0, v1, 0x64

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 300
    :cond_0
    :goto_0
    sget-object v1, Lcom/loopme/common/Utils$1;->$SwitchMap$com$loopme$constants$StretchOption:[I

    invoke-virtual {p5}, Lcom/loopme/constants/StretchOption;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 317
    :cond_1
    :goto_1
    return-object p0

    .line 291
    :cond_2
    iput p4, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 292
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    int-to-float v2, p4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 294
    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v1, p3, v1

    .line 295
    iget v2, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eqz v2, :cond_0

    .line 296
    mul-int/lit8 v0, v1, 0x64

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 302
    :pswitch_0
    const/high16 v1, 0x41300000    # 11.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 303
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 304
    iput p4, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    .line 309
    :pswitch_1
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 310
    iput p4, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 337
    invoke-static {p0}, Lcom/loopme/common/VideoUtils;->clearCache(Landroid/content/Context;)V

    .line 338
    return-void
.end method

.method public static convertDpToPixel(F)I
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/loopme/common/Utils;->sResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    sget-object v1, Lcom/loopme/common/Utils;->sResources:Landroid/content/res/Resources;

    .line 68
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 67
    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 268
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public static getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 146
    sget-object v1, Lcom/loopme/common/Utils;->sWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-object v0

    .line 149
    :cond_0
    sget-object v1, Lcom/loopme/common/Utils;->sWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public static getLastKnownLocation()Landroid/location/Location;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 104
    sget-object v0, Lcom/loopme/common/Utils;->sLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v1

    .line 109
    :cond_1
    :try_start_0
    sget-object v0, Lcom/loopme/common/Utils;->sLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 118
    :goto_1
    :try_start_1
    sget-object v2, Lcom/loopme/common/Utils;->sLocationManager:Landroid/location/LocationManager;

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 125
    :goto_2
    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    .line 129
    :cond_2
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 130
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    :cond_3
    :goto_3
    move-object v1, v0

    .line 141
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    sget-object v0, Lcom/loopme/common/Utils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve GPS location: access appears to be disabled."

    invoke-static {v0, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 114
    goto :goto_1

    .line 112
    :catch_1
    move-exception v0

    .line 113
    sget-object v0, Lcom/loopme/common/Utils;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static {v0, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 119
    :catch_2
    move-exception v2

    .line 120
    sget-object v2, Lcom/loopme/common/Utils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to retrieve network location: access appears to be disabled."

    invoke-static {v2, v3}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 123
    goto :goto_2

    .line 121
    :catch_3
    move-exception v2

    .line 122
    sget-object v2, Lcom/loopme/common/Utils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to retrieve network location: device has no network provider."

    invoke-static {v2, v3}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 133
    goto :goto_3

    .line 135
    :cond_5
    if-nez v0, :cond_3

    move-object v0, v2

    .line 138
    goto :goto_3
.end method

.method public static getScreenHeight()I
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/loopme/common/Utils;->sWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 260
    :cond_0
    sget-object v0, Lcom/loopme/common/Utils;->sWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 261
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 262
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 263
    iget v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public static getScreenOrientation()I
    .locals 8

    .prologue
    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 188
    sget-object v4, Lcom/loopme/common/Utils;->sWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 189
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 190
    sget-object v6, Lcom/loopme/common/Utils;->sWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 192
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 195
    if-eqz v4, :cond_0

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    :cond_0
    if-gt v5, v6, :cond_3

    :cond_1
    if-eq v4, v0, :cond_2

    const/4 v7, 0x3

    if-ne v4, v7, :cond_4

    :cond_2
    if-le v6, v5, :cond_4

    .line 199
    :cond_3
    packed-switch v4, :pswitch_data_0

    .line 243
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 205
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 209
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 213
    goto :goto_0

    .line 222
    :cond_4
    packed-switch v4, :pswitch_data_1

    move v0, v1

    .line 238
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 225
    goto :goto_0

    :pswitch_5
    move v0, v3

    .line 232
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 236
    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 222
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getScreenWidth()I
    .locals 2

    .prologue
    .line 247
    sget-object v0, Lcom/loopme/common/Utils;->sWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    .line 250
    :cond_0
    sget-object v0, Lcom/loopme/common/Utils;->sWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 251
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 252
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 253
    iget v0, v1, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method public static getStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 90
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 91
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 98
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getSystemVolume()F
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 176
    sget-object v0, Lcom/loopme/common/Utils;->sAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/loopme/common/Utils;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 178
    sget-object v1, Lcom/loopme/common/Utils;->sAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 179
    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 180
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 182
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getViewVisibility(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 333
    :goto_0
    return-object v0

    .line 324
    :sswitch_0
    const-string v0, "VISIBLE"

    goto :goto_0

    .line 327
    :sswitch_1
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 330
    :sswitch_2
    const-string v0, "GONE"

    goto :goto_0

    .line 322
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .line 76
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/loopme/common/Utils;->sWindowManager:Landroid/view/WindowManager;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/Utils;->sResources:Landroid/content/res/Resources;

    .line 78
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/loopme/common/Utils;->sLocationManager:Landroid/location/LocationManager;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/Utils;->sPackageManager:Landroid/content/pm/PackageManager;

    .line 80
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/loopme/common/Utils;->sAudioManager:Landroid/media/AudioManager;

    .line 82
    :cond_0
    return-void
.end method

.method public static isEmulator()Z
    .locals 2

    .prologue
    .line 341
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK"

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    .line 344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    :try_start_0
    const-string v0, "connectivity"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 56
    goto :goto_0

    :cond_1
    move v0, v1

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-object v0, Lcom/loopme/common/Utils;->sPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v3

    .line 157
    :cond_1
    sget-object v0, Lcom/loopme/common/Utils;->sPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move v2, v3

    .line 160
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 161
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    const/4 v3, 0x1

    goto :goto_0

    .line 160
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method
