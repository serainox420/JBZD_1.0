.class Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$2;
.super Ljava/lang/Object;
.source "SASNativeAdMediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$2;->b:Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$2;->a:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$2;->b:Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a(Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;)Lcom/smartadserver/android/library/SASBannerView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$2;->a:Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartadserver/android/library/SASBannerView;->a(Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;J)V

    .line 131
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView$2;->b:Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;->a(Lcom/smartadserver/android/library/ui/SASNativeAdMediaView;)Lcom/smartadserver/android/library/SASBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASBannerView;->getMRAIDController()Lcom/smartadserver/android/library/controller/mraid/a;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->setState(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/smartadserver/android/library/exception/SASAdDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Lcom/smartadserver/android/library/exception/SASAdDisplayException;->printStackTrace()V

    goto :goto_0
.end method
