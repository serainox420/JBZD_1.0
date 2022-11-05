.class public Lcom/video/adsdk/internal/checker/ADResolutionChecker;
.super Ljava/lang/Object;
.source "ADResolutionChecker.java"

# interfaces
.implements Lcom/video/adsdk/interfaces/checker/ResolutionChecker;


# instance fields
.field private context:Landroid/content/Context;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/video/adsdk/internal/checker/ADResolutionChecker;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/video/adsdk/internal/checker/ADResolutionChecker;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/video/adsdk/internal/checker/ADResolutionChecker;->screenWidth:I

    return v0
.end method

.method public readCurrentValues()Z
    .locals 3

    .prologue
    .line 31
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 32
    iget-object v0, p0, Lcom/video/adsdk/internal/checker/ADResolutionChecker;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 33
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/video/adsdk/internal/checker/ADResolutionChecker;->screenWidth:I

    .line 35
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/video/adsdk/internal/checker/ADResolutionChecker;->screenHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    const/4 v0, 0x0

    goto :goto_0
.end method
