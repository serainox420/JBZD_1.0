.class public final Lcom/google/android/exoplayer2/extractor/a/d;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/a/d$b;,
        Lcom/google/android/exoplayer2/extractor/a/d$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/i;

.field private static final b:[B

.field private static final c:[B

.field private static final d:Ljava/util/UUID;


# instance fields
.field private A:Z

.field private B:J

.field private C:J

.field private D:J

.field private E:Lcom/google/android/exoplayer2/util/g;

.field private F:Lcom/google/android/exoplayer2/util/g;

.field private G:Z

.field private H:I

.field private I:J

.field private J:J

.field private K:I

.field private L:I

.field private M:[I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:B

.field private W:I

.field private X:I

.field private Y:I

.field private Z:Z

.field private aa:Z

.field private ab:Lcom/google/android/exoplayer2/extractor/h;

.field private final e:Lcom/google/android/exoplayer2/extractor/a/b;

.field private final f:Lcom/google/android/exoplayer2/extractor/a/f;

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/util/l;

.field private final i:Lcom/google/android/exoplayer2/util/l;

.field private final j:Lcom/google/android/exoplayer2/util/l;

.field private final k:Lcom/google/android/exoplayer2/util/l;

.field private final l:Lcom/google/android/exoplayer2/util/l;

.field private final m:Lcom/google/android/exoplayer2/util/l;

.field private final n:Lcom/google/android/exoplayer2/util/l;

.field private final o:Lcom/google/android/exoplayer2/util/l;

.field private final p:Lcom/google/android/exoplayer2/util/l;

.field private q:Ljava/nio/ByteBuffer;

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:Lcom/google/android/exoplayer2/extractor/a/d$b;

.field private x:Z

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/exoplayer2/extractor/a/d$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/a/d$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/a/d;->a:Lcom/google/android/exoplayer2/extractor/i;

    .line 185
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/a/d;->b:[B

    .line 193
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/a/d;->c:[B

    .line 219
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x100000000001000L

    const-wide v4, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/a/d;->d:Ljava/util/UUID;

    return-void

    .line 185
    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    .line 193
    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/google/android/exoplayer2/extractor/a/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/a/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/a/d;-><init>(Lcom/google/android/exoplayer2/extractor/a/b;)V

    .line 292
    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/extractor/a/b;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x4

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->s:J

    .line 239
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->t:J

    .line 240
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->u:J

    .line 241
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->v:J

    .line 255
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->B:J

    .line 256
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->C:J

    .line 257
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->D:J

    .line 295
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->e:Lcom/google/android/exoplayer2/extractor/a/b;

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->e:Lcom/google/android/exoplayer2/extractor/a/b;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/a/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/extractor/a/d$a;-><init>(Lcom/google/android/exoplayer2/extractor/a/d;Lcom/google/android/exoplayer2/extractor/a/d$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/a/b;->a(Lcom/google/android/exoplayer2/extractor/a/c;)V

    .line 297
    new-instance v0, Lcom/google/android/exoplayer2/extractor/a/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/a/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->f:Lcom/google/android/exoplayer2/extractor/a/f;

    .line 298
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->g:Landroid/util/SparseArray;

    .line 299
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    .line 300
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->k:Lcom/google/android/exoplayer2/util/l;

    .line 301
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->l:Lcom/google/android/exoplayer2/util/l;

    .line 302
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    sget-object v1, Lcom/google/android/exoplayer2/util/j;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->h:Lcom/google/android/exoplayer2/util/l;

    .line 303
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->i:Lcom/google/android/exoplayer2/util/l;

    .line 304
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->m:Lcom/google/android/exoplayer2/util/l;

    .line 305
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    .line 306
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->o:Lcom/google/android/exoplayer2/util/l;

    .line 307
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->p:Lcom/google/android/exoplayer2/util/l;

    .line 308
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/n;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->m:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    .line 1129
    if-lez v0, :cond_0

    .line 1130
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1131
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->m:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {p2, v1, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1135
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    .line 1136
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    .line 1137
    return v0

    .line 1133
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/g;IZ)I

    move-result v0

    goto :goto_0
.end method

.method private a(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 1203
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->t:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1204
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1206
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->t:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/android/exoplayer2/extractor/a/d;->d:Ljava/util/UUID;

    return-object v0
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/a/d$b;)V
    .locals 4

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->J:J

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/a/d;->a([BJ)V

    .line 1084
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/a/d$b;->x:Lcom/google/android/exoplayer2/extractor/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1085
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    .line 1086
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/a/d$b;J)V
    .locals 8

    .prologue
    .line 885
    const-string v0, "S_TEXT/UTF8"

    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/a/d$b;)V

    .line 888
    :cond_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/a/d$b;->x:Lcom/google/android/exoplayer2/extractor/n;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->P:I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/google/android/exoplayer2/extractor/a/d$b;->g:[B

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Z:Z

    .line 890
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a/d;->b()V

    .line 891
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/g;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 921
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->e()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 916
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/l;->a:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    .line 917
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v2

    .line 916
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/l;->b(I)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/a/d$b;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 925
    const-string v0, "S_TEXT/UTF8"

    iget-object v3, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    sget-object v0, Lcom/google/android/exoplayer2/extractor/a/d;->b:[B

    array-length v0, v0

    add-int/2addr v0, p3

    .line 927
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/l;->e()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 930
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    sget-object v3, Lcom/google/android/exoplayer2/extractor/a/d;->b:[B

    add-int v4, v0, p3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    sget-object v3, Lcom/google/android/exoplayer2/extractor/a/d;->b:[B

    array-length v3, v3

    invoke-interface {p1, v1, v3, p3}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 933
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 934
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->n:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/l;->b(I)V

    .line 1078
    :cond_1
    :goto_0
    return-void

    .line 940
    :cond_2
    iget-object v5, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->x:Lcom/google/android/exoplayer2/extractor/n;

    .line 941
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->R:Z

    if-nez v0, :cond_f

    .line 942
    iget-boolean v0, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->e:Z

    if-eqz v0, :cond_12

    .line 945
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->P:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->P:I

    .line 946
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->S:Z

    if-nez v0, :cond_4

    .line 947
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 948
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    .line 949
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_3

    .line 950
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Extension bit is set in signal byte"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    aget-byte v0, v0, v2

    iput-byte v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->V:B

    .line 953
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->S:Z

    .line 955
    :cond_4
    iget-byte v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->V:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    .line 956
    :goto_1
    if-eqz v0, :cond_e

    .line 957
    iget-byte v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->V:B

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v8, :cond_a

    move v0, v1

    .line 958
    :goto_2
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->P:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->P:I

    .line 959
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->T:Z

    if-nez v3, :cond_5

    .line 960
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->o:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v3, v2, v6}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 961
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    .line 962
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->T:Z

    .line 964
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    if-eqz v0, :cond_b

    const/16 v3, 0x80

    :goto_3
    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    .line 965
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 966
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v5, v3, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 967
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    .line 969
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->o:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 970
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->o:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v5, v3, v6}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 971
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    .line 973
    :cond_5
    if-eqz v0, :cond_e

    .line 974
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->U:Z

    if-nez v0, :cond_6

    .line 975
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 976
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 978
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->W:I

    .line 979
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->U:Z

    .line 981
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->W:I

    mul-int/lit8 v0, v0, 0x4

    .line 982
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 983
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v3, v2, v0}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 984
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    .line 985
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->W:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 986
    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v6, v3, 0x2

    .line 987
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    .line 988
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v6, :cond_8

    .line 989
    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    .line 991
    :cond_8
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 992
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v0, v2

    move v3, v2

    .line 1000
    :goto_4
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->W:I

    if-ge v0, v4, :cond_d

    .line 1002
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v4

    .line 1003
    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_c

    .line 1004
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    int-to-short v3, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1000
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_4

    :cond_9
    move v0, v2

    .line 955
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 957
    goto/16 :goto_2

    :cond_b
    move v3, v2

    .line 964
    goto/16 :goto_3

    .line 1007
    :cond_c
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1010
    :cond_d
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    sub-int v0, p3, v0

    sub-int/2addr v0, v3

    .line 1011
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->W:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_11

    .line 1012
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1017
    :goto_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->p:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 1018
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->p:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v5, v0, v6}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1019
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    .line 1026
    :cond_e
    :goto_7
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->R:Z

    .line 1028
    :cond_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->m:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v0

    add-int/2addr v0, p3

    .line 1030
    const-string v3, "V_MPEG4/ISO/AVC"

    iget-object v4, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "V_MPEGH/ISO/HEVC"

    iget-object v4, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1035
    :cond_10
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->i:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 1036
    aput-byte v2, v3, v2

    .line 1037
    aput-byte v2, v3, v1

    .line 1038
    aput-byte v2, v3, v8

    .line 1039
    iget v1, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->y:I

    .line 1040
    iget v4, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->y:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1044
    :goto_8
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    if-ge v6, v0, :cond_15

    .line 1045
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->X:I

    if-nez v6, :cond_13

    .line 1047
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;[BII)V

    .line 1049
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->i:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1050
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->i:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->X:I

    .line 1052
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->h:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1053
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->h:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v5, v6, v9}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1054
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    goto :goto_8

    .line 1014
    :cond_11
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1015
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 1022
    :cond_12
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->f:[B

    if-eqz v0, :cond_e

    .line 1024
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->m:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->f:[B

    iget-object v4, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->f:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    goto :goto_7

    .line 1057
    :cond_13
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->X:I

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->X:I

    .line 1058
    invoke-direct {p0, p1, v5, v7}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/n;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->X:I

    goto :goto_8

    .line 1062
    :cond_14
    :goto_9
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    if-ge v1, v0, :cond_15

    .line 1063
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v5, v1}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/n;I)I

    goto :goto_9

    .line 1067
    :cond_15
    const-string v0, "A_VORBIS"

    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/a/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->k:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1075
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->k:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v5, v0, v9}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1076
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    goto/16 :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/g;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->m:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1114
    add-int v1, p3, v0

    sub-int v2, p4, v0

    invoke-interface {p1, p2, v1, v2}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 1115
    if-lez v0, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->m:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 1118
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    .line 1119
    return-void
.end method

.method private static a([BJ)V
    .locals 9

    .prologue
    const-wide v4, 0xd693a400L

    const/4 v8, 0x0

    .line 1090
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1091
    sget-object v0, Lcom/google/android/exoplayer2/extractor/a/d;->c:[B

    .line 1103
    :goto_0
    const/16 v1, 0x13

    const/16 v2, 0xc

    invoke-static {v0, v8, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    return-void

    .line 1093
    :cond_0
    div-long v0, p1, v4

    long-to-int v0, v0

    .line 1094
    int-to-long v2, v0

    mul-long/2addr v2, v4

    sub-long v2, p1, v2

    .line 1095
    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v1, v4

    .line 1096
    const v4, 0x3938700

    mul-int/2addr v4, v1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 1097
    const-wide/32 v4, 0xf4240

    div-long v4, v2, v4

    long-to-int v4, v4

    .line 1098
    const v5, 0xf4240

    mul-int/2addr v5, v4

    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 1099
    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    .line 1100
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d:%02d,%03d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    .line 1101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1100
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/l;J)Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1186
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->A:Z

    if-eqz v2, :cond_0

    .line 1187
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->C:J

    .line 1188
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->B:J

    iput-wide v2, p1, Lcom/google/android/exoplayer2/extractor/l;->a:J

    .line 1189
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->A:Z

    .line 1199
    :goto_0
    return v0

    .line 1194
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->x:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->C:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1195
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->C:J

    iput-wide v2, p1, Lcom/google/android/exoplayer2/extractor/l;->a:J

    .line 1196
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->C:J

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1199
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1210
    const-string v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_VP9"

    .line 1211
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG2"

    .line 1212
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/SP"

    .line 1213
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 1214
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/AP"

    .line 1215
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 1216
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 1217
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_MS/VFW/FOURCC"

    .line 1218
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_THEORA"

    .line 1219
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_OPUS"

    .line 1220
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_VORBIS"

    .line 1221
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_AAC"

    .line 1222
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_MPEG/L2"

    .line 1223
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_MPEG/L3"

    .line 1224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_AC3"

    .line 1225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_EAC3"

    .line 1226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_TRUEHD"

    .line 1227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_DTS"

    .line 1228
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_DTS/EXPRESS"

    .line 1229
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_DTS/LOSSLESS"

    .line 1230
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_FLAC"

    .line 1231
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_MS/ACM"

    .line 1232
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_PCM/INT/LIT"

    .line 1233
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S_TEXT/UTF8"

    .line 1234
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S_VOBSUB"

    .line 1235
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S_HDMV/PGS"

    .line 1236
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([II)[I
    .locals 1

    .prologue
    .line 1244
    if-nez p0, :cond_1

    .line 1245
    new-array p0, p1, [I

    .line 1250
    :cond_0
    :goto_0
    return-object p0

    .line 1246
    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 1250
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 894
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Q:I

    .line 895
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Y:I

    .line 896
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->X:I

    .line 897
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->R:Z

    .line 898
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->S:Z

    .line 899
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->U:Z

    .line 900
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->W:I

    .line 901
    iput-byte v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->V:B

    .line 902
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->T:Z

    .line 903
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->m:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->a()V

    .line 904
    return-void
.end method

.method private d()Lcom/google/android/exoplayer2/extractor/m;
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v12, 0x0

    .line 1147
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->s:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->v:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->E:Lcom/google/android/exoplayer2/util/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->E:Lcom/google/android/exoplayer2/util/g;

    .line 1148
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/g;->a()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->F:Lcom/google/android/exoplayer2/util/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->F:Lcom/google/android/exoplayer2/util/g;

    .line 1149
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/g;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->E:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/g;->a()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1151
    :cond_0
    iput-object v12, p0, Lcom/google/android/exoplayer2/extractor/a/d;->E:Lcom/google/android/exoplayer2/util/g;

    .line 1152
    iput-object v12, p0, Lcom/google/android/exoplayer2/extractor/a/d;->F:Lcom/google/android/exoplayer2/util/g;

    .line 1153
    new-instance v0, Lcom/google/android/exoplayer2/extractor/m$a;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->v:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/m$a;-><init>(J)V

    .line 1173
    :goto_0
    return-object v0

    .line 1155
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->E:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/g;->a()I

    move-result v2

    .line 1156
    new-array v3, v2, [I

    .line 1157
    new-array v4, v2, [J

    .line 1158
    new-array v5, v2, [J

    .line 1159
    new-array v6, v2, [J

    move v1, v0

    .line 1160
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1161
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->E:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/util/g;->a(I)J

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 1162
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/a/d;->s:J

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->F:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer2/util/g;->a(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v4, v1

    .line 1160
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1164
    :cond_2
    :goto_2
    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_3

    .line 1165
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v4, v1

    aget-wide v10, v4, v0

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    .line 1166
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v6, v1

    aget-wide v10, v6, v0

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 1164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1168
    :cond_3
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/a/d;->s:J

    iget-wide v10, p0, Lcom/google/android/exoplayer2/extractor/a/d;->r:J

    add-long/2addr v8, v10

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v4, v1

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    .line 1170
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/a/d;->v:J

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v6, v1

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 1171
    iput-object v12, p0, Lcom/google/android/exoplayer2/extractor/a/d;->E:Lcom/google/android/exoplayer2/util/g;

    .line 1172
    iput-object v12, p0, Lcom/google/android/exoplayer2/extractor/a/d;->F:Lcom/google/android/exoplayer2/util/g;

    .line 1173
    new-instance v0, Lcom/google/android/exoplayer2/extractor/a;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/a;-><init>([I[J[J[J)V

    goto :goto_0
.end method


# virtual methods
.method a(I)I
    .locals 1

    .prologue
    .line 349
    sparse-switch p1, :sswitch_data_0

    .line 417
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 370
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 400
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 404
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 412
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 415
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1
        0x86 -> :sswitch_2
        0x88 -> :sswitch_1
        0x9b -> :sswitch_1
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xae -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb5 -> :sswitch_4
        0xb7 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
        0xd7 -> :sswitch_1
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1
        0xfb -> :sswitch_1
        0x4254 -> :sswitch_1
        0x4255 -> :sswitch_3
        0x4282 -> :sswitch_2
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_1
        0x4489 -> :sswitch_4
        0x47e1 -> :sswitch_1
        0x47e2 -> :sswitch_3
        0x47e7 -> :sswitch_0
        0x47e8 -> :sswitch_1
        0x4dbb -> :sswitch_0
        0x5031 -> :sswitch_1
        0x5032 -> :sswitch_1
        0x5034 -> :sswitch_0
        0x5035 -> :sswitch_0
        0x53ab -> :sswitch_3
        0x53ac -> :sswitch_1
        0x53b8 -> :sswitch_1
        0x54b0 -> :sswitch_1
        0x54b2 -> :sswitch_1
        0x54ba -> :sswitch_1
        0x55aa -> :sswitch_1
        0x56aa -> :sswitch_1
        0x56bb -> :sswitch_1
        0x6240 -> :sswitch_0
        0x6264 -> :sswitch_1
        0x63a2 -> :sswitch_3
        0x6d80 -> :sswitch_0
        0x7670 -> :sswitch_0
        0x7672 -> :sswitch_3
        0x22b59c -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_1
        0x114d9b74 -> :sswitch_0
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_0
        0x18538067 -> :sswitch_0
        0x1a45dfa3 -> :sswitch_0
        0x1c53bb6b -> :sswitch_0
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Z:Z

    move v2, v1

    .line 339
    :cond_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->Z:Z

    if-nez v3, :cond_2

    .line 340
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->e:Lcom/google/android/exoplayer2/extractor/a/b;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/extractor/a/b;->a(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v2

    .line 341
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v4

    invoke-direct {p0, p2, v4, v5}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/l;J)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 345
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0
.end method

.method a(ID)V
    .locals 2

    .prologue
    .line 689
    sparse-switch p1, :sswitch_data_0

    .line 699
    :goto_0
    return-void

    .line 691
    :sswitch_0
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->u:J

    goto :goto_0

    .line 694
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    double-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->s:I

    goto :goto_0

    .line 689
    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_1
        0x4489 -> :sswitch_0
    .end sparse-switch
.end method

.method a(IILcom/google/android/exoplayer2/extractor/g;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 722
    sparse-switch p1, :sswitch_data_0

    .line 880
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 724
    :sswitch_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->l:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 725
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->l:Lcom/google/android/exoplayer2/util/l;

    iget-object v2, v2, Lcom/google/android/exoplayer2/util/l;->a:[B

    rsub-int/lit8 v3, p2, 0x4

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 726
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->l:Lcom/google/android/exoplayer2/util/l;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 727
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->l:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->y:I

    .line 882
    :goto_0
    return-void

    .line 730
    :sswitch_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    .line 731
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->h:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    goto :goto_0

    .line 734
    :sswitch_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->o:[B

    .line 735
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->o:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    goto :goto_0

    .line 739
    :sswitch_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->f:[B

    .line 740
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->f:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    goto :goto_0

    .line 743
    :sswitch_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    move/from16 v0, p2

    new-array v3, v0, [B

    iput-object v3, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->g:[B

    .line 744
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->g:[B

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    goto :goto_0

    .line 753
    :sswitch_5
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->H:I

    if-nez v2, :cond_0

    .line 754
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->f:Lcom/google/android/exoplayer2/extractor/a/f;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/a/f;->a(Lcom/google/android/exoplayer2/extractor/g;ZZI)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->N:I

    .line 755
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->f:Lcom/google/android/exoplayer2/extractor/a/f;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/a/f;->b()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->O:I

    .line 756
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->J:J

    .line 757
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->H:I

    .line 758
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/l;->a()V

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->g:Landroid/util/SparseArray;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->N:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/a/d$b;

    .line 764
    if-nez v2, :cond_1

    .line 765
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->O:I

    sub-int v2, p2, v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 766
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->H:I

    goto/16 :goto_0

    .line 770
    :cond_1
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->H:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 772
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;I)V

    .line 773
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x1

    .line 774
    if-nez v3, :cond_4

    .line 775
    const/4 v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    .line 776
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/extractor/a/d;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    .line 777
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/a/d;->O:I

    sub-int v5, p2, v5

    add-int/lit8 v5, v5, -0x3

    aput v5, v3, v4

    .line 851
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 852
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->D:J

    int-to-long v6, v3

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer2/extractor/a/d;->a(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->I:J

    .line 853
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_13

    const/4 v3, 0x1

    .line 854
    :goto_2
    iget v4, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->c:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/16 v4, 0xa3

    move/from16 v0, p1

    if-ne v0, v4, :cond_14

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_14

    :cond_2
    const/4 v4, 0x1

    .line 856
    :goto_3
    if-eqz v4, :cond_15

    const/4 v4, 0x1

    :goto_4
    if-eqz v3, :cond_16

    const/high16 v3, -0x80000000

    :goto_5
    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->P:I

    .line 858
    const/4 v3, 0x2

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->H:I

    .line 859
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->K:I

    .line 862
    :cond_3
    const/16 v3, 0xa3

    move/from16 v0, p1

    if-ne v0, v3, :cond_18

    .line 864
    :goto_6
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->K:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    if-ge v3, v4, :cond_17

    .line 865
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->K:I

    aget v3, v3, v4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/a/d$b;I)V

    .line 866
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->I:J

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->K:I

    iget v6, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->d:I

    mul-int/2addr v3, v6

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 868
    invoke-direct {p0, v2, v4, v5}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/a/d$b;J)V

    .line 869
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->K:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->K:I

    goto :goto_6

    .line 779
    :cond_4
    const/16 v4, 0xa3

    move/from16 v0, p1

    if-eq v0, v4, :cond_5

    .line 780
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "Lacing only supported in SimpleBlocks."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 784
    :cond_5
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;I)V

    .line 785
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    .line 786
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    .line 787
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/a/d;->a([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    .line 788
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 789
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->O:I

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, -0x4

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    div-int/2addr v3, v4

    .line 791
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    invoke-static {v4, v5, v6, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1

    .line 792
    :cond_6
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 793
    const/4 v5, 0x0

    .line 794
    const/4 v4, 0x4

    .line 795
    const/4 v3, 0x0

    :goto_7
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_8

    .line 796
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    .line 799
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;I)V

    .line 800
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/l;->a:[B

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    .line 801
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    aget v8, v7, v3

    add-int/2addr v8, v6

    aput v8, v7, v3

    .line 802
    const/16 v7, 0xff

    if-eq v6, v7, :cond_7

    .line 803
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    .line 795
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 805
    :cond_8
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->O:I

    sub-int v7, p2, v7

    sub-int v4, v7, v4

    sub-int/2addr v4, v5

    aput v4, v3, v6

    goto/16 :goto_1

    .line 807
    :cond_9
    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    .line 808
    const/4 v5, 0x0

    .line 809
    const/4 v4, 0x4

    .line 810
    const/4 v3, 0x0

    :goto_8
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_11

    .line 811
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    .line 812
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;I)V

    .line 813
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v6, v6, Lcom/google/android/exoplayer2/util/l;->a:[B

    add-int/lit8 v7, v4, -0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_a

    .line 814
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "No valid varint length mask found"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 816
    :cond_a
    const-wide/16 v6, 0x0

    .line 817
    const/4 v8, 0x0

    move v10, v8

    :goto_9
    const/16 v8, 0x8

    if-ge v10, v8, :cond_c

    .line 818
    const/4 v8, 0x1

    rsub-int/lit8 v9, v10, 0x7

    shl-int/2addr v8, v9

    .line 819
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v9, v9, Lcom/google/android/exoplayer2/util/l;->a:[B

    add-int/lit8 v11, v4, -0x1

    aget-byte v9, v9, v11

    and-int/2addr v9, v8

    if-eqz v9, :cond_e

    .line 820
    add-int/lit8 v7, v4, -0x1

    .line 821
    add-int/2addr v4, v10

    .line 822
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;I)V

    .line 823
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v9, v6, Lcom/google/android/exoplayer2/util/l;->a:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    int-to-long v8, v7

    move v14, v6

    move-wide v6, v8

    move v8, v14

    .line 824
    :goto_a
    if-ge v8, v4, :cond_b

    .line 825
    const/16 v9, 0x8

    shl-long v12, v6, v9

    .line 826
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v7, v6, Lcom/google/android/exoplayer2/util/l;->a:[B

    add-int/lit8 v6, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    or-long/2addr v8, v12

    move v14, v6

    move-wide v6, v8

    move v8, v14

    goto :goto_a

    .line 829
    :cond_b
    if-lez v3, :cond_c

    .line 830
    const-wide/16 v8, 0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/lit8 v10, v10, 0x6

    shl-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 835
    :cond_c
    const-wide/32 v8, -0x80000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_d

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v6, v8

    if-lez v8, :cond_f

    .line 836
    :cond_d
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    const-string v3, "EBML lacing sample size out of range."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    :cond_e
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_9

    .line 838
    :cond_f
    long-to-int v6, v6

    .line 839
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    if-nez v3, :cond_10

    :goto_b
    aput v6, v7, v3

    .line 841
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    aget v6, v6, v3

    add-int/2addr v5, v6

    .line 810
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 839
    :cond_10
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    add-int/2addr v6, v8

    goto :goto_b

    .line 843
    :cond_11
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->L:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->O:I

    sub-int v7, p2, v7

    sub-int v4, v7, v4

    sub-int/2addr v4, v5

    aput v4, v3, v6

    goto/16 :goto_1

    .line 847
    :cond_12
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected lacing value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 853
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 854
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 856
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 871
    :cond_17
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->H:I

    goto/16 :goto_0

    .line 875
    :cond_18
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/a/d;->M:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/a/d$b;I)V

    goto/16 :goto_0

    .line 722
    nop

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_5
        0xa3 -> :sswitch_5
        0x4255 -> :sswitch_3
        0x47e2 -> :sswitch_4
        0x53ab -> :sswitch_0
        0x63a2 -> :sswitch_1
        0x7672 -> :sswitch_2
    .end sparse-switch
.end method

.method a(IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const-wide/16 v4, 0x1

    .line 550
    sparse-switch p1, :sswitch_data_0

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 553
    :sswitch_0
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :sswitch_1
    cmp-long v0, p2, v4

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 560
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocTypeReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :sswitch_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->s:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->z:J

    goto :goto_0

    .line 569
    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->t:J

    goto :goto_0

    .line 572
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->j:I

    goto :goto_0

    .line 575
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->k:I

    goto :goto_0

    .line 578
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->l:I

    goto :goto_0

    .line 581
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->m:I

    goto :goto_0

    .line 584
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->n:I

    goto :goto_0

    .line 587
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->b:I

    goto :goto_0

    .line 590
    :sswitch_a
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    cmp-long v3, p2, v4

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v0, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->v:Z

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 593
    :sswitch_b
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    cmp-long v3, p2, v4

    if-nez v3, :cond_3

    :goto_2
    iput-boolean v0, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->w:Z

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 596
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->c:I

    goto/16 :goto_0

    .line 599
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->d:I

    goto/16 :goto_0

    .line 602
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iput-wide p2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->t:J

    goto/16 :goto_0

    .line 605
    :sswitch_f
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iput-wide p2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->u:J

    goto/16 :goto_0

    .line 608
    :sswitch_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->q:I

    goto/16 :goto_0

    .line 611
    :sswitch_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->r:I

    goto/16 :goto_0

    .line 614
    :sswitch_12
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->aa:Z

    goto/16 :goto_0

    .line 618
    :sswitch_13
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :sswitch_14
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingScope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :sswitch_15
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 631
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentCompAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :sswitch_16
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :sswitch_17
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AESSettingsCipherMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :sswitch_18
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->E:Lcom/google/android/exoplayer2/util/g;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/util/g;->a(J)V

    goto/16 :goto_0

    .line 650
    :sswitch_19
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->G:Z

    if-nez v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->F:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/exoplayer2/util/g;->a(J)V

    .line 655
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->G:Z

    goto/16 :goto_0

    .line 659
    :sswitch_1a
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->D:J

    goto/16 :goto_0

    .line 662
    :sswitch_1b
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->J:J

    goto/16 :goto_0

    .line 665
    :sswitch_1c
    long-to-int v2, p2

    .line 666
    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_0

    .line 668
    :sswitch_1d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->p:I

    goto/16 :goto_0

    .line 671
    :sswitch_1e
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->p:I

    goto/16 :goto_0

    .line 674
    :sswitch_1f
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iput v0, v1, Lcom/google/android/exoplayer2/extractor/a/d$b;->p:I

    goto/16 :goto_0

    .line 677
    :sswitch_20
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->p:I

    goto/16 :goto_0

    .line 550
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_c
        0x88 -> :sswitch_a
        0x9b -> :sswitch_1b
        0x9f -> :sswitch_10
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_18
        0xba -> :sswitch_5
        0xd7 -> :sswitch_9
        0xe7 -> :sswitch_1a
        0xf1 -> :sswitch_19
        0xfb -> :sswitch_12
        0x4254 -> :sswitch_15
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_0
        0x47e1 -> :sswitch_16
        0x47e8 -> :sswitch_17
        0x5031 -> :sswitch_13
        0x5032 -> :sswitch_14
        0x53ac -> :sswitch_2
        0x53b8 -> :sswitch_1c
        0x54b0 -> :sswitch_6
        0x54b2 -> :sswitch_8
        0x54ba -> :sswitch_7
        0x55aa -> :sswitch_b
        0x56aa -> :sswitch_e
        0x56bb -> :sswitch_f
        0x6264 -> :sswitch_11
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_3
    .end sparse-switch

    .line 666
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_1e
        0x3 -> :sswitch_1f
        0xf -> :sswitch_20
    .end sparse-switch
.end method

.method a(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    .line 427
    sparse-switch p1, :sswitch_data_0

    .line 476
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 429
    :sswitch_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->s:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->s:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 431
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->s:J

    .line 434
    iput-wide p4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->r:J

    goto :goto_0

    .line 437
    :sswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->y:I

    .line 438
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->z:J

    goto :goto_0

    .line 441
    :sswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/util/g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->E:Lcom/google/android/exoplayer2/util/g;

    .line 442
    new-instance v0, Lcom/google/android/exoplayer2/util/g;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->F:Lcom/google/android/exoplayer2/util/g;

    goto :goto_0

    .line 445
    :sswitch_4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->G:Z

    goto :goto_0

    .line 448
    :sswitch_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->x:Z

    if-nez v0, :cond_0

    .line 450
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->B:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 452
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->A:Z

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->ab:Lcom/google/android/exoplayer2/extractor/h;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/m$a;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->v:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/m$a;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 457
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/a/d;->x:Z

    goto :goto_0

    .line 462
    :sswitch_6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->aa:Z

    goto :goto_0

    .line 468
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->e:Z

    goto :goto_0

    .line 471
    :sswitch_8
    new-instance v0, Lcom/google/android/exoplayer2/extractor/a/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/a/d$b;-><init>(Lcom/google/android/exoplayer2/extractor/a/d$1;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    goto :goto_0

    .line 427
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_6
        0xae -> :sswitch_8
        0xbb -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5035 -> :sswitch_7
        0x6240 -> :sswitch_0
        0x18538067 -> :sswitch_1
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method a(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 702
    sparse-switch p1, :sswitch_data_0

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 705
    :sswitch_0
    const-string v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iput-object p2, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 713
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/extractor/a/d$b;->a(Lcom/google/android/exoplayer2/extractor/a/d$b;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 702
    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_1
        0x4282 -> :sswitch_0
        0x22b59c -> :sswitch_2
    .end sparse-switch
.end method

.method public a(JJ)V
    .locals 2

    .prologue
    .line 322
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->D:J

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->H:I

    .line 324
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->e:Lcom/google/android/exoplayer2/extractor/a/b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/a/b;->a()V

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->f:Lcom/google/android/exoplayer2/extractor/a/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/a/f;->a()V

    .line 326
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a/d;->b()V

    .line 327
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->ab:Lcom/google/android/exoplayer2/extractor/h;

    .line 318
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/google/android/exoplayer2/extractor/a/e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/a/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/a/e;->a(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v0

    return v0
.end method

.method b(I)Z
    .locals 1

    .prologue
    .line 422
    const v0, 0x1549a966

    if-eq p1, v0, :cond_0

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_0

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_0

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method c(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 479
    sparse-switch p1, :sswitch_data_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 481
    :sswitch_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->t:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 483
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->t:J

    .line 485
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->u:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 486
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->u:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/a/d;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->v:J

    goto :goto_0

    .line 490
    :sswitch_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->z:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 491
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->y:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_0

    .line 494
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->z:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->B:J

    goto :goto_0

    .line 498
    :sswitch_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->x:Z

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->ab:Lcom/google/android/exoplayer2/extractor/h;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/a/d;->d()Lcom/google/android/exoplayer2/extractor/m;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 500
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->x:Z

    goto :goto_0

    .line 506
    :sswitch_3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 511
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->aa:Z

    if-nez v0, :cond_4

    .line 512
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->P:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->P:I

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->N:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->I:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Lcom/google/android/exoplayer2/extractor/a/d$b;J)V

    .line 515
    iput v7, p0, Lcom/google/android/exoplayer2/extractor/a/d;->H:I

    goto :goto_0

    .line 518
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->e:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->g:[B

    if-nez v0, :cond_5

    .line 520
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v2, v2, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lcom/google/android/exoplayer2/b;->b:Ljava/util/UUID;

    const-string v5, "video/webm"

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-object v6, v6, Lcom/google/android/exoplayer2/extractor/a/d$b;->g:[B

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v7

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto/16 :goto_0

    .line 527
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->f:[B

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/a/d$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->ab:Lcom/google/android/exoplayer2/extractor/h;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/a/d$b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/a/d$b;->a(Lcom/google/android/exoplayer2/extractor/h;I)V

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->g:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/a/d$b;->b:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->w:Lcom/google/android/exoplayer2/extractor/a/d$b;

    goto/16 :goto_0

    .line 539
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 540
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/d;->ab:Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/h;->a()V

    goto/16 :goto_0

    .line 479
    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_3
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_1
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_5
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_7
        0x1c53bb6b -> :sswitch_2
    .end sparse-switch
.end method
