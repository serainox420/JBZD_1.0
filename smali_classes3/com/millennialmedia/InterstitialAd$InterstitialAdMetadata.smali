.class public Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;
.super Lcom/millennialmedia/internal/AdPlacementMetadata;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterstitialAdMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/internal/AdPlacementMetadata",
        "<",
        "Lcom/millennialmedia/InterstitialAd$InterstitialAdMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    const-string v0, "interstitial"

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/AdPlacementMetadata;-><init>(Ljava/lang/String;)V

    .line 174
    return-void
.end method
