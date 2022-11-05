.class final Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->c(Ljava/lang/String;)V

    .line 607
    return-void
.end method
