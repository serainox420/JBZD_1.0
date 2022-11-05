.class Lcom/amazon/device/ads/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static rotationArray:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/device/ads/DisplayUtils;->rotationArray:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x9
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x9
        0x8
        0x1
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineCanonicalScreenOrientation(Landroid/content/Context;Lcom/amazon/device/ads/AndroidBuildInfo;)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 30
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 31
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 36
    if-ne v0, v2, :cond_2

    .line 37
    if-eqz v3, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v2

    .line 43
    :goto_0
    if-eqz v0, :cond_6

    .line 44
    :goto_1
    sget-object v0, Lcom/amazon/device/ads/DisplayUtils;->rotationArray:[[I

    aget-object v0, v0, v1

    aget v0, v0, v3

    return v0

    :cond_1
    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    if-ne v0, v4, :cond_5

    .line 39
    if-eq v3, v2, :cond_3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 41
    goto :goto_0

    :cond_6
    move v1, v2

    .line 43
    goto :goto_1
.end method
