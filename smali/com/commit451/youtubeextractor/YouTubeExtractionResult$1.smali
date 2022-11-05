.class final Lcom/commit451/youtubeextractor/YouTubeExtractionResult$1;
.super Ljava/lang/Object;
.source "YouTubeExtractionResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
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
        "Lcom/commit451/youtubeextractor/YouTubeExtractionResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    invoke-direct {v0, p1}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/commit451/youtubeextractor/YouTubeExtractionResult;
    .locals 1

    .prologue
    .line 192
    new-array v0, p1, [Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult$1;->a(Landroid/os/Parcel;)Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/commit451/youtubeextractor/YouTubeExtractionResult$1;->a(I)[Lcom/commit451/youtubeextractor/YouTubeExtractionResult;

    move-result-object v0

    return-object v0
.end method
