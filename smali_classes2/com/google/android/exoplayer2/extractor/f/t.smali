.class public final Lcom/google/android/exoplayer2/extractor/f/t;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/f/t$b;,
        Lcom/google/android/exoplayer2/extractor/f/t$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/i;

.field private static final b:J

.field private static final c:J

.field private static final d:J


# instance fields
.field private final e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/util/s;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/util/l;

.field private final h:Lcom/google/android/exoplayer2/util/k;

.field private final i:Landroid/util/SparseIntArray;

.field private final j:Lcom/google/android/exoplayer2/extractor/f/u$b;

.field private final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/f/u;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/util/SparseBooleanArray;

.field private m:Lcom/google/android/exoplayer2/extractor/h;

.field private n:I

.field private o:Z

.field private p:Lcom/google/android/exoplayer2/extractor/f/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/t$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/f/t$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/f/t;->a:Lcom/google/android/exoplayer2/extractor/i;

    .line 101
    const-string v0, "AC-3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/exoplayer2/extractor/f/t;->b:J

    .line 102
    const-string v0, "EAC3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/exoplayer2/extractor/f/t;->c:J

    .line 103
    const-string v0, "HEVC"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/exoplayer2/extractor/f/t;->d:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 124
    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/exoplayer2/util/s;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/s;-><init>(J)V

    new-instance v2, Lcom/google/android/exoplayer2/extractor/f/e;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/f/t;-><init>(ILcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/f/u$b;)V

    .line 125
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/f/u$b;)V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/u$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->j:Lcom/google/android/exoplayer2/extractor/f/u$b;

    .line 136
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/t;->e:I

    .line 137
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 138
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->f:Ljava/util/List;

    .line 143
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/16 v1, 0x3ac

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    .line 144
    new-instance v0, Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/k;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    .line 145
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->l:Landroid/util/SparseBooleanArray;

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->k:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->i:Landroid/util/SparseIntArray;

    .line 148
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/t;->e()V

    .line 149
    return-void

    .line 140
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->f:Ljava/util/List;

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/f/t;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/t;->n:I

    return p1
.end method

.method static synthetic a()J
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/google/android/exoplayer2/extractor/f/t;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/f/t;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->k:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/f/t;Lcom/google/android/exoplayer2/extractor/f/u;)Lcom/google/android/exoplayer2/extractor/f/u;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/t;->p:Lcom/google/android/exoplayer2/extractor/f/u;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/f/t;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/f/t;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/extractor/f/t;)I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/t;->n:I

    return v0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/google/android/exoplayer2/extractor/f/t;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/extractor/f/t;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->e:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/extractor/f/t;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->n:I

    return v0
.end method

.method static synthetic d()J
    .locals 2

    .prologue
    .line 48
    sget-wide v0, Lcom/google/android/exoplayer2/extractor/f/t;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/extractor/f/t;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->f:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->l:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->j:Lcom/google/android/exoplayer2/extractor/f/u$b;

    .line 291
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/f/u$b;->a()Landroid/util/SparseArray;

    move-result-object v2

    .line 292
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v0, v1

    .line 293
    :goto_0
    if-ge v0, v3, :cond_0

    .line 294
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/t;->k:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->k:Landroid/util/SparseArray;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/f/q;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/f/t$a;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/extractor/f/t$a;-><init>(Lcom/google/android/exoplayer2/extractor/f/t;)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/f/q;-><init>(Lcom/google/android/exoplayer2/extractor/f/p;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->p:Lcom/google/android/exoplayer2/extractor/f/u;

    .line 298
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/f/u;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->p:Lcom/google/android/exoplayer2/extractor/f/u;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/f/u$b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->j:Lcom/google/android/exoplayer2/extractor/f/u$b;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/extractor/f/t;)Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->m:Lcom/google/android/exoplayer2/extractor/h;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/extractor/f/t;)Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->l:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/extractor/f/t;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->o:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xbc

    const/4 v10, 0x2

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 199
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v4

    rsub-int v4, v4, 0x3ac

    if-ge v4, v7, :cond_1

    .line 200
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v4

    .line 201
    if-lez v4, :cond_0

    .line 202
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v5

    invoke-static {v3, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplayer2/util/l;->a([BI)V

    .line 207
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v4

    if-ge v4, v7, :cond_4

    .line 208
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v4

    .line 209
    rsub-int v5, v4, 0x3ac

    invoke-interface {p1, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/g;->a([BII)I

    move-result v5

    .line 210
    if-ne v5, v0, :cond_3

    move v2, v0

    .line 282
    :cond_2
    :goto_1
    return v2

    .line 213
    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    add-int/2addr v4, v5

    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/util/l;->b(I)V

    goto :goto_0

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v4

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 220
    :goto_2
    if-ge v0, v4, :cond_5

    aget-byte v5, v3, v0

    const/16 v6, 0x47

    if-eq v5, v6, :cond_5

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 223
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 225
    add-int/lit16 v5, v0, 0xbc

    .line 226
    if-gt v5, v4, :cond_2

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    const/4 v6, 0x3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/exoplayer2/util/l;->a(Lcom/google/android/exoplayer2/util/k;I)V

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_1

    .line 237
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v6

    .line 238
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v0

    .line 240
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/k;->b(I)V

    .line 241
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v7

    .line 242
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/k;->c()Z

    move-result v8

    .line 246
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t;->h:Lcom/google/android/exoplayer2/util/k;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer2/util/k;->c(I)I

    move-result v3

    .line 247
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/f/t;->e:I

    if-eq v9, v10, :cond_c

    .line 248
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/f/t;->i:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v9, v0, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 249
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/f/t;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    if-ne v9, v3, :cond_7

    .line 251
    if-eqz v8, :cond_c

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_1

    .line 256
    :cond_7
    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0x10

    if-eq v3, v9, :cond_c

    move v3, v1

    .line 262
    :goto_3
    if-eqz v7, :cond_8

    .line 263
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v7

    .line 264
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v9, v7}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 268
    :cond_8
    if-eqz v8, :cond_a

    .line 269
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/f/t;->k:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/f/u;

    .line 270
    if-eqz v0, :cond_a

    .line 271
    if-eqz v3, :cond_9

    .line 272
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/f/u;->a()V

    .line 274
    :cond_9
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/util/l;->b(I)V

    .line 275
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-interface {v0, v3, v6}, Lcom/google/android/exoplayer2/extractor/f/u;->a(Lcom/google/android/exoplayer2/util/l;Z)V

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    if-gt v0, v5, :cond_b

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/l;->b(I)V

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 276
    goto :goto_4

    :cond_c
    move v3, v2

    goto :goto_3
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 180
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/s;->d()V

    .line 180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->a()V

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/t;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/f/t;->e()V

    .line 187
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;)V
    .locals 4

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/t;->m:Lcom/google/android/exoplayer2/extractor/h;

    .line 174
    new-instance v0, Lcom/google/android/exoplayer2/extractor/m$a;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/m$a;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 175
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/t;->g:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 156
    const/16 v1, 0x3ac

    invoke-interface {p1, v3, v0, v1}, Lcom/google/android/exoplayer2/extractor/g;->c([BII)V

    move v2, v0

    .line 157
    :goto_0
    const/16 v1, 0xbc

    if-ge v2, v1, :cond_0

    move v1, v0

    .line 159
    :goto_1
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 160
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 161
    const/4 v0, 0x1

    .line 168
    :cond_0
    return v0

    .line 163
    :cond_1
    mul-int/lit16 v4, v1, 0xbc

    add-int/2addr v4, v2

    aget-byte v4, v3, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_2

    .line 157
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 158
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public c()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
