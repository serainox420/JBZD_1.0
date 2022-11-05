.class public abstract Lcom/millennialmedia/internal/adadapters/NativeAdapter;
.super Lcom/millennialmedia/internal/adadapters/AdAdapter;
.source "NativeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;,
        Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;,
        Lcom/millennialmedia/internal/adadapters/NativeAdapter$ComponentInfo;,
        Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/millennialmedia/internal/adadapters/AdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBodyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallToActionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClickTrackers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultAction()Ljava/lang/String;
.end method

.method public abstract getDisclaimerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIconImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImpressionTrackers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMainImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRatingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/NativeAdapter$TextComponentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract init(Lcom/millennialmedia/internal/adadapters/NativeAdapter$NativeAdapterListener;)V
.end method
