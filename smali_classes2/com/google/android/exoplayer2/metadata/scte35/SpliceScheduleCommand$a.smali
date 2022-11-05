.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;
.super Ljava/lang/Object;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;->a:I

    .line 162
    iput-wide p2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;->b:J

    .line 163
    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;
    .locals 1

    .prologue
    .line 155
    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;->b(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;->c(Landroid/os/Parcel;)V

    return-void
.end method

.method private static b(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;
    .locals 4

    .prologue
    .line 166
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;-><init>(IJ)V

    return-object v0
.end method

.method private c(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$a;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 172
    return-void
.end method
