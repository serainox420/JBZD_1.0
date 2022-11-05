.class final Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo$1;
.super Ljava/lang/Object;
.source "MMVideoView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;-><init>(Landroid/os/Parcel;Lcom/millennialmedia/internal/video/MMVideoView$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;
    .locals 1

    .prologue
    .line 132
    new-array v0, p1, [Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo$1;->newArray(I)[Lcom/millennialmedia/internal/video/MMVideoView$MMVideoViewInfo;

    move-result-object v0

    return-object v0
.end method
