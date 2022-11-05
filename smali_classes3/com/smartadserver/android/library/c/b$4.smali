.class Lcom/smartadserver/android/library/c/b$4;
.super Ljava/lang/Object;
.source "SASAdMobAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/c/b;->a(Landroid/content/Context;Lcom/smartadserver/android/library/ui/SASAdView;Ljava/util/HashMap;Lcom/smartadserver/android/library/c/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/c/b;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/c/b;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/smartadserver/android/library/c/b$4;->a:Lcom/smartadserver/android/library/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/smartadserver/android/library/c/b$4;->a:Lcom/smartadserver/android/library/c/b;

    invoke-static {v0, p1}, Lcom/smartadserver/android/library/c/b;->a(Lcom/smartadserver/android/library/c/b;Lcom/google/android/gms/ads/formats/NativeAd;)V

    .line 617
    return-void
.end method
