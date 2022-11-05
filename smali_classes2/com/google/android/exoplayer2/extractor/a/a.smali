.class final Lcom/google/android/exoplayer2/extractor/a/a;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/a/a$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer2/extractor/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/extractor/a/f;

.field private d:Lcom/google/android/exoplayer2/extractor/a/c;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->a:[B

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->b:Ljava/util/Stack;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/extractor/a/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->c:Lcom/google/android/exoplayer2/extractor/a/f;

    .line 227
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/g;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->a:[B

    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 176
    const-wide/16 v2, 0x0

    .line 177
    :goto_0
    if-ge v0, p2, :cond_0

    .line 178
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->a:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-wide v2
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/g;I)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a/a;->a(Lcom/google/android/exoplayer2/extractor/g;I)J

    move-result-wide v0

    .line 196
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 197
    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    .line 201
    :goto_0
    return-wide v0

    .line 199
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/g;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 149
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->a()V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->a:[B

    invoke-interface {p1, v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/g;->c([BII)V

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->a:[B

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/a/f;->a(I)I

    move-result v0

    .line 153
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-gt v0, v5, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->a:[B

    invoke-static {v1, v0, v4}, Lcom/google/android/exoplayer2/extractor/a/f;->a([BIZ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 155
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/a/c;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 157
    int-to-long v0, v1

    return-wide v0

    .line 160
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    goto :goto_0
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/g;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    if-nez p2, :cond_0

    .line 216
    const-string v0, ""

    .line 220
    :goto_0
    return-object v0

    .line 218
    :cond_0
    new-array v1, p2, [B

    .line 219
    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 220
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->c:Lcom/google/android/exoplayer2/extractor/a/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/a/f;->a()V

    .line 61
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/a/c;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    .line 54
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 67
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/a/a$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/a/a$a;->a(Lcom/google/android/exoplayer2/extractor/a/a$a;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/a/a$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/a/a$a;->b(Lcom/google/android/exoplayer2/extractor/a/a$a;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/a/c;->c(I)V

    .line 125
    :goto_2
    return v6

    :cond_0
    move v0, v7

    .line 65
    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->c:Lcom/google/android/exoplayer2/extractor/a/f;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v6, v7, v1}, Lcom/google/android/exoplayer2/extractor/a/f;->a(Lcom/google/android/exoplayer2/extractor/g;ZZI)J

    move-result-wide v0

    .line 75
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/a/a;->b(Lcom/google/android/exoplayer2/extractor/g;)J

    move-result-wide v0

    .line 78
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    move v6, v7

    .line 79
    goto :goto_2

    .line 82
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

    .line 83
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    .line 86
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    if-ne v0, v6, :cond_5

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->c:Lcom/google/android/exoplayer2/extractor/a/f;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v7, v6, v1}, Lcom/google/android/exoplayer2/extractor/a/f;->a(Lcom/google/android/exoplayer2/extractor/g;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    .line 88
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/a/c;->a(I)I

    move-result v0

    .line 92
    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid element type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v2

    .line 95
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    add-long/2addr v0, v2

    .line 96
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/a/a;->b:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/exoplayer2/extractor/a/a$a;

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

    const/4 v9, 0x0

    invoke-direct {v5, v8, v0, v1, v9}, Lcom/google/android/exoplayer2/extractor/a/a$a;-><init>(IJLcom/google/android/exoplayer2/extractor/a/a$1;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/a/c;->a(IJJ)V

    .line 98
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    goto :goto_2

    .line 101
    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    .line 102
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/extractor/a/a;->a(Lcom/google/android/exoplayer2/extractor/g;I)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/a/c;->a(IJ)V

    .line 105
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    goto/16 :goto_2

    .line 108
    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid float size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/extractor/a/a;->b(Lcom/google/android/exoplayer2/extractor/g;I)D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/a/c;->a(ID)V

    .line 113
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    goto/16 :goto_2

    .line 116
    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String element size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    long-to-int v2, v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/extractor/a/a;->c(Lcom/google/android/exoplayer2/extractor/g;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/a/c;->a(ILjava/lang/String;)V

    .line 120
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    goto/16 :goto_2

    .line 123
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->d:Lcom/google/android/exoplayer2/extractor/a/c;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    long-to-int v2, v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/extractor/a/c;->a(IILcom/google/android/exoplayer2/extractor/g;)V

    .line 124
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    goto/16 :goto_2

    .line 127
    :pswitch_5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 128
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/a/a;->e:I

    goto/16 :goto_1

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
