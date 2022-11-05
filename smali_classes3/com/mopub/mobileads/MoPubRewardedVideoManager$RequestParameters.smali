.class public final Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestParameters"
.end annotation


# instance fields
.field public final mCustomerId:Ljava/lang/String;

.field public final mKeywords:Ljava/lang/String;

.field public final mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;-><init>(Ljava/lang/String;Landroid/location/Location;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;-><init>(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mKeywords:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mLocation:Landroid/location/Location;

    .line 107
    iput-object p3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mCustomerId:Ljava/lang/String;

    .line 108
    return-void
.end method
