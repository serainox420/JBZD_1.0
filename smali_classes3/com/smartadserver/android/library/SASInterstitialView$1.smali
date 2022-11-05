.class Lcom/smartadserver/android/library/SASInterstitialView$1;
.super Ljava/lang/Object;
.source "SASInterstitialView.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASAdView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASInterstitialView;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/SASInterstitialView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/SASInterstitialView;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView$1;->a:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onStateChanged(Lcom/smartadserver/android/library/ui/SASAdView$i;)V
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/smartadserver/android/library/ui/SASAdView$i;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
