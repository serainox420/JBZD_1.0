.class Lcom/amazon/device/ads/AndroidTargetUtils;
.super Ljava/lang/Object;
.source "AndroidTargetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanMR1TargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;,
        Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;
    }
.end annotation


# static fields
.field public static final defaultAndroidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    new-instance v1, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v1}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;-><init>(Lcom/amazon/device/ads/AndroidBuildInfo;)V

    sput-object v0, Lcom/amazon/device/ads/AndroidTargetUtils;->defaultAndroidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disableHardwareAcceleration(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 168
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->disableHardwareAcceleration(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public static enableHardwareAcceleration(Lcom/amazon/device/ads/AndroidBuildInfo;Landroid/view/Window;)V
    .locals 1

    .prologue
    .line 259
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->enableHardwareAcceleration(Landroid/view/Window;)V

    .line 263
    :cond_0
    return-void
.end method

.method public static enableWebViewDebugging(Z)V
    .locals 1

    .prologue
    .line 251
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p0}, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;->enableWebViewDebugging(Z)V

    .line 255
    :cond_0
    return-void
.end method

.method public static varargs executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 214
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->executeAsyncTaskWithThreadPooling(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static getDefaultAndroidClassAdapter()Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/amazon/device/ads/AndroidTargetUtils;->defaultAndroidClassAdapter:Lcom/amazon/device/ads/AndroidTargetUtils$AndroidClassAdapter;

    return-object v0
.end method

.method public static hideActionAndStatusBars(Lcom/amazon/device/ads/AndroidBuildInfo;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 230
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->hideActionBar(Landroid/app/Activity;)V

    .line 234
    :cond_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-static {p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->hideStatusBar(Landroid/app/Activity;)V

    .line 238
    :cond_1
    return-void
.end method

.method public static isAdTransparent(Landroid/view/View;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 268
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAndroidAPI(I)Z
    .locals 1

    .prologue
    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/amazon/device/ads/AndroidBuildInfo;->getSDKInt()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtLeastAndroidAPI(I)Z
    .locals 1

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/amazon/device/ads/AndroidBuildInfo;->getSDKInt()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtOrBelowAndroidAPI(I)Z
    .locals 1

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAtOrBelowAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/amazon/device/ads/AndroidBuildInfo;->getSDKInt()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBetweenAndroidAPIs(Lcom/amazon/device/ads/AndroidBuildInfo;II)Z
    .locals 1

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtOrBelowAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$HoneycombTargetUtils;->removeJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 195
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->setBackgroundForLinerLayout(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setImageButtonAlpha(Landroid/widget/ImageButton;I)V
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {p0, p1}, Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanTargetUtils;->setImageButtonAlpha(Landroid/widget/ImageButton;I)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setAlpha(I)V

    goto :goto_0
.end method
