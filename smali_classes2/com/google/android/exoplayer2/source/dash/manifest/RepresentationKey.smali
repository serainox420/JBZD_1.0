.class public final Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;
.super Ljava/lang/Object;
.source "RepresentationKey.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->a:I

    .line 32
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->b:I

    .line 33
    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->c:I

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;)I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->a:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->a:I

    sub-int/2addr v0, v1

    .line 73
    if-nez v0, :cond_0

    .line 74
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->b:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->b:I

    sub-int/2addr v0, v1

    .line 75
    if-nez v0, :cond_0

    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->c:I

    iget v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->c:I

    sub-int/2addr v0, v1

    .line 79
    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->a(Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RepresentationKey;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
