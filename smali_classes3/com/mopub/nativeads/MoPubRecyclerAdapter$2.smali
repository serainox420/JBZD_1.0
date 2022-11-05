.class Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;
.super Ljava/lang/Object;
.source "MoPubRecyclerAdapter.java"

# interfaces
.implements Lcom/mopub/nativeads/MoPubNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Lcom/mopub/nativeads/MoPubStreamAdPlacer;Landroid/support/v7/widget/RecyclerView$a;Lcom/mopub/nativeads/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/MoPubRecyclerAdapter;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(I)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->a(I)V

    .line 83
    return-void
.end method

.method public onAdRemoved(I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter$2;->a:Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->b(I)V

    .line 88
    return-void
.end method
