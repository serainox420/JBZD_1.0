.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;
.super Ljava/lang/Object;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method private constructor <init>(IJJ)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;->a:I

    .line 151
    iput-wide p2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;->b:J

    .line 152
    iput-wide p4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;->c:J

    .line 153
    return-void
.end method

.method synthetic constructor <init>(IJJLcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;-><init>(IJJ)V

    return-void
.end method

.method public static b(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;
    .locals 6

    .prologue
    .line 162
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;-><init>(IJJ)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$a;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    return-void
.end method
