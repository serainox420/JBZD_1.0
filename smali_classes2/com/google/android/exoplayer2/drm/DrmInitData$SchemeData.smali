.class public final Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field public final c:Z

.field private d:I

.field private final e:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c:Z

    .line 212
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    .line 202
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    .line 203
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    .line 204
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c:Z

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    instance-of v2, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    if-nez v2, :cond_1

    move v0, v1

    .line 234
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    if-eq p1, p0, :cond_0

    .line 232
    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 233
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    iget-object v3, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    .line 234
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->d:I

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 241
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->d:I

    .line 245
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->d:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->e:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->b:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 261
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 262
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
