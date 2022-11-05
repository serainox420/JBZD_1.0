.class public abstract Lcom/millennialmedia/internal/adadapters/InterstitialAdapter;
.super Lcom/millennialmedia/internal/adadapters/AdAdapter;
.source "InterstitialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;
    }
.end annotation


# instance fields
.field protected c:Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;Lcom/millennialmedia/internal/adadapters/InterstitialAdapter$InterstitialAdapterListener;)V
.end method

.method public abstract show(Landroid/content/Context;Lcom/millennialmedia/InterstitialAd$DisplayOptions;)V
.end method
