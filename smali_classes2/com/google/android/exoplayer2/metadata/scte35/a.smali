.class public final Lcom/google/android/exoplayer2/metadata/scte35/a;
.super Ljava/lang/Object;
.source "SpliceInfoDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/a;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/l;

.field private final b:Lcom/google/android/exoplayer2/util/k;

.field private c:Lcom/google/android/exoplayer2/util/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/l;

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/k;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/metadata/c;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/s;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/metadata/c;->d:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/s;

    .line 52
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/s;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/s;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/metadata/c;->c:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/util/s;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/s;

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/s;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/metadata/c;->c:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/metadata/c;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/s;->c(J)J

    .line 57
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/metadata/c;->b:Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 61
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/exoplayer2/util/k;->a([BI)V

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    int-to-long v0, v0

    .line 66
    shl-long/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v2, v0

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v1

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/k;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v4

    .line 71
    const/4 v0, 0x0

    .line 73
    iget-object v5, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/l;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 74
    sparse-switch v4, :sswitch_data_0

    move-object v1, v0

    .line 95
    :goto_0
    if-nez v1, :cond_2

    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v1, v7, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    :goto_1
    return-object v0

    .line 76
    :sswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    move-object v1, v0

    .line 77
    goto :goto_0

    .line 79
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v0

    move-object v1, v0

    .line 80
    goto :goto_0

    .line 82
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/s;

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->a(Lcom/google/android/exoplayer2/util/l;JLcom/google/android/exoplayer2/util/s;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v0

    move-object v1, v0

    .line 84
    goto :goto_0

    .line 86
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/s;

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->a(Lcom/google/android/exoplayer2/util/l;JLcom/google/android/exoplayer2/util/s;)Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v0

    move-object v1, v0

    .line 87
    goto :goto_0

    .line 89
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->a(Lcom/google/android/exoplayer2/util/l;IJ)Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v0

    move-object v1, v0

    .line 90
    goto :goto_0

    .line 95
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v2, v8, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v1, v2, v7

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_1

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method
