.class Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;
.super Ljava/lang/Object;
.source "SmartAdServerBanner.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->createResponseHandler()Lcom/smartadserver/android/library/ui/SASAdView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/model/SASAdElement;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 173
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$700(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$800(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)Landroid/app/Activity;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    const-string v1, "Activity is null!"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$900(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 181
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 185
    if-ne v0, v8, :cond_3

    .line 186
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getPortraitWidth()I

    move-result v1

    .line 187
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getPortraitHeight()I

    move-result v0

    .line 197
    :cond_1
    :goto_1
    int-to-float v1, v1

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-double v4, v1

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 198
    int-to-float v0, v0

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v0, v0

    .line 200
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 201
    if-le v2, v1, :cond_5

    .line 202
    int-to-double v4, v0

    int-to-double v2, v2

    div-double v2, v4, v2

    .line 204
    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 207
    :goto_2
    iget-object v2, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    new-instance v3, Lcom/intentsoftware/addapptr/ad/BannerAd$a;

    iget-object v4, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-direct {v3, v4, v1, v0, v8}, Lcom/intentsoftware/addapptr/ad/BannerAd$a;-><init>(Lcom/intentsoftware/addapptr/ad/BannerAd;IIZ)V

    invoke-static {v2, v3}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$1002(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Lcom/intentsoftware/addapptr/ad/BannerAd$a;)Lcom/intentsoftware/addapptr/ad/BannerAd$a;

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-static {v0}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$1100(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getLandscapeWidth()I

    move-result v1

    .line 190
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getLandscapeHeight()I

    move-result v0

    .line 191
    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    .line 192
    :cond_4
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getPortraitWidth()I

    move-result v1

    .line 193
    invoke-virtual {p1}, Lcom/smartadserver/android/library/model/SASAdElement;->getPortraitHeight()I

    move-result v0

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner$3;->this$0:Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;->access$600(Lcom/intentsoftware/addapptr/banners/SmartAdServerBanner;Ljava/lang/String;)V

    .line 169
    return-void
.end method
