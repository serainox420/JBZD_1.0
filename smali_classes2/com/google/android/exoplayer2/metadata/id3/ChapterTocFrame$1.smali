.class final Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame$1;
.super Ljava/lang/Object;
.source "ChapterTocFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
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
        "Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 1

    .prologue
    .line 118
    new-array v0, p1, [Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame$1;->a(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame$1;->a(I)[Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v0

    return-object v0
.end method
