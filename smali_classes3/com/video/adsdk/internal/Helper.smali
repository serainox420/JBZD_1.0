.class public Lcom/video/adsdk/internal/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field static ID_BUTTONCLOSE:I

.field static ID_UIVIEWCONTAINER:I

.field static ID_VIDEOVIEW:I

.field static ID_VIDEOVIEWCONTAINER:I

.field static ID_WEBVIEW:I

.field static ID_WEBVIEWCONTAINER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x1e240

    sput v0, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEWCONTAINER:I

    .line 40
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEWCONTAINER:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEW:I

    .line 41
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEWCONTAINER:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/video/adsdk/internal/Helper;->ID_WEBVIEWCONTAINER:I

    .line 42
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEWCONTAINER:I

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/video/adsdk/internal/Helper;->ID_UIVIEWCONTAINER:I

    .line 43
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEWCONTAINER:I

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    .line 44
    sget v0, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEWCONTAINER:I

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/video/adsdk/internal/Helper;->ID_WEBVIEW:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 183
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 184
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/video/adsdk/internal/Helper;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 50
    const/16 v1, 0x800

    new-array v1, v1, [C

    .line 52
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 55
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 56
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 166
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 167
    aget-byte v2, p0, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    move v3, v2

    move v2, v1

    .line 170
    :goto_1
    if-ltz v3, :cond_0

    const/16 v4, 0x9

    if-gt v3, v4, :cond_0

    .line 171
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :goto_2
    aget-byte v3, p0, v0

    and-int/lit8 v4, v3, 0xf

    .line 175
    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x1

    if-lt v2, v6, :cond_2

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 177
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v2, v3

    move v3, v4

    goto :goto_1
.end method

.method static createAdVideoView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 202
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 204
    sget v1, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEWCONTAINER:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 209
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {v1, v4}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 211
    sget v2, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEW:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setId(I)V

    .line 215
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 217
    sget v3, Lcom/video/adsdk/internal/Helper;->ID_WEBVIEWCONTAINER:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 221
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 223
    sget v4, Lcom/video/adsdk/internal/Helper;->ID_UIVIEWCONTAINER:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 226
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "closebox"

    const-string v7, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 230
    const-string v5, "Close"

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 231
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 232
    const/4 v5, -0x2

    .line 234
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    const/16 v5, 0xb

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 237
    const/4 v5, 0x5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 238
    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    sget v5, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 244
    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-static {}, Lcom/video/adsdk/internal/Helper;->createFillCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-static {}, Lcom/video/adsdk/internal/Helper;->createFillCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-static {}, Lcom/video/adsdk/internal/Helper;->createFillCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    return-object v0
.end method

.method static createFakeAdVideoView(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 9

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 258
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 260
    sget v1, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEWCONTAINER:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 263
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 265
    sget v2, Lcom/video/adsdk/internal/Helper;->ID_UIVIEWCONTAINER:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 268
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 270
    sget v3, Lcom/video/adsdk/internal/Helper;->ID_VIDEOVIEW:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 271
    const-string v3, "AD NOT AVAILABLE IN EMULATOR"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 273
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "closebox"

    const-string v7, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 282
    const-string v5, "Close"

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 284
    const/4 v5, 0x1

    const/high16 v6, 0x42800000    # 64.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 286
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    const/16 v5, 0xb

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 289
    const/4 v5, 0x5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 290
    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    sget v5, Lcom/video/adsdk/internal/Helper;->ID_BUTTONCLOSE:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setId(I)V

    .line 294
    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    invoke-static {}, Lcom/video/adsdk/internal/Helper;->createFillCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    return-object v0
.end method

.method private static createFillCenterLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 191
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    return-object v0
.end method

.method public static createWebViewForJavascriptInteraction(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 125
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 126
    sget v1, Lcom/video/adsdk/internal/Helper;->ID_WEBVIEW:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 127
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 128
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 129
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 130
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 131
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 132
    new-instance v1, Lcom/video/adsdk/internal/Helper$1;

    invoke-direct {v1}, Lcom/video/adsdk/internal/Helper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 148
    invoke-static {v0}, Lcom/video/adsdk/internal/Helper;->setTransparentWebviewBackground(Landroid/webkit/WebView;)V

    .line 150
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-object v0
.end method

.method public static getJavascriptContentToInject(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/video/adsdk/internal/JavascriptCode;->jsCode:Ljava/lang/String;

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    :try_start_0
    const-string v0, "MD5"

    .line 106
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 107
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 111
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 113
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 121
    :goto_1
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 121
    :goto_2
    const-string v0, ""

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    .line 119
    const-string v0, "VIDEOADSDK"

    const-string v1, "UTF-8 not supported as encoding"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static readTextFromResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 68
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 70
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 71
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 72
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 75
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveTextToSD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 92
    :cond_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 93
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 95
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 96
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static setTransparentWebviewBackground(Landroid/webkit/WebView;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 158
    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 160
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 161
    :cond_0
    return-void
.end method
