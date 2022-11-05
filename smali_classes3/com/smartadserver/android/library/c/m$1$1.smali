.class Lcom/smartadserver/android/library/c/m$1$1;
.super Ljava/lang/Object;
.source "SASUnityAdsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/m$1;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/m$1;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/m$1;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/smartadserver/android/library/c/m$1$1;->a:Lcom/smartadserver/android/library/c/m$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartadserver/android/library/c/m$1$1;->a:Lcom/smartadserver/android/library/c/m$1;

    iget-object v0, v0, Lcom/smartadserver/android/library/c/m$1;->a:Lcom/smartadserver/android/library/c/m;

    invoke-static {v0}, Lcom/smartadserver/android/library/c/m;->e(Lcom/smartadserver/android/library/c/m;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->n()V

    .line 75
    return-void
.end method
