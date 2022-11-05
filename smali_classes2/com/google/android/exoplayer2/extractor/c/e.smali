.class public final Lcom/google/android/exoplayer2/extractor/c/e;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/c/e$b;,
        Lcom/google/android/exoplayer2/extractor/c/e$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/i;

.field private static final b:I

.field private static final c:[B


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Lcom/google/android/exoplayer2/extractor/h;

.field private E:Lcom/google/android/exoplayer2/extractor/n;

.field private F:[Lcom/google/android/exoplayer2/extractor/n;

.field private G:Z

.field private final d:I

.field private final e:Lcom/google/android/exoplayer2/extractor/c/j;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/c/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/util/l;

.field private final h:Lcom/google/android/exoplayer2/util/l;

.field private final i:Lcom/google/android/exoplayer2/util/l;

.field private final j:Lcom/google/android/exoplayer2/util/l;

.field private final k:Lcom/google/android/exoplayer2/util/s;

.field private final l:Lcom/google/android/exoplayer2/util/l;

.field private final m:[B

.field private final n:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer2/extractor/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/extractor/c/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:I

.field private r:J

.field private s:I

.field private t:Lcom/google/android/exoplayer2/util/l;

.field private u:J

.field private v:I

.field private w:J

.field private x:J

.field private y:Lcom/google/android/exoplayer2/extractor/c/e$b;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/exoplayer2/extractor/c/e$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/c/e$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/c/e;->a:Lcom/google/android/exoplayer2/extractor/i;

    .line 108
    const-string v0, "seig"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/e;->b:I

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/c/e;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/e;-><init>(I)V

    .line 167
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/c/e;-><init>(ILcom/google/android/exoplayer2/util/s;)V

    .line 174
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/s;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/c/e;-><init>(ILcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/c/j;)V

    .line 182
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/s;Lcom/google/android/exoplayer2/extractor/c/j;)V
    .locals 6

    .prologue
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v1, 0x10

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->d:I

    .line 193
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->k:Lcom/google/android/exoplayer2/util/s;

    .line 194
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/c/e;->e:Lcom/google/android/exoplayer2/extractor/c/j;

    .line 195
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->l:Lcom/google/android/exoplayer2/util/l;

    .line 196
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    sget-object v2, Lcom/google/android/exoplayer2/util/j;->a:[B

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->g:Lcom/google/android/exoplayer2/util/l;

    .line 197
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->h:Lcom/google/android/exoplayer2/util/l;

    .line 198
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->i:Lcom/google/android/exoplayer2/util/l;

    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->j:Lcom/google/android/exoplayer2/util/l;

    .line 200
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->m:[B

    .line 201
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    .line 202
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->o:Ljava/util/LinkedList;

    .line 203
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    .line 204
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->w:J

    .line 205
    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->x:J

    .line 206
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/e;->a()V

    .line 207
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/c/e$b;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1192
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    .line 1193
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/c/l;->q:Lcom/google/android/exoplayer2/util/l;

    .line 1194
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/c/l;->a:Lcom/google/android/exoplayer2/extractor/c/c;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/c/c;->a:I

    .line 1195
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/c/l;->o:Lcom/google/android/exoplayer2/extractor/c/k;

    if-eqz v4, :cond_0

    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/c/l;->o:Lcom/google/android/exoplayer2/extractor/c/k;

    .line 1198
    :goto_0
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/k;->b:I

    .line 1199
    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/c/l;->n:[Z

    iget v2, p1, Lcom/google/android/exoplayer2/extractor/c/e$b;->e:I

    aget-boolean v2, v0, v2

    .line 1203
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->j:Lcom/google/android/exoplayer2/util/l;

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    if-eqz v2, :cond_1

    const/16 v0, 0x80

    :goto_1
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    .line 1204
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->j:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1205
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/e$b;->b:Lcom/google/android/exoplayer2/extractor/n;

    .line 1206
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->j:Lcom/google/android/exoplayer2/util/l;

    const/4 v5, 0x1

    invoke-interface {v0, v1, v5}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1208
    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1210
    if-nez v2, :cond_2

    .line 1211
    add-int/lit8 v0, v4, 0x1

    .line 1218
    :goto_2
    return v0

    .line 1195
    :cond_0
    iget-object v4, p1, Lcom/google/android/exoplayer2/extractor/c/e$b;->c:Lcom/google/android/exoplayer2/extractor/c/j;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/c/j;->h:[Lcom/google/android/exoplayer2/extractor/c/k;

    aget-object v0, v4, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1203
    goto :goto_1

    .line 1214
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v1

    .line 1215
    const/4 v2, -0x2

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 1216
    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x2

    .line 1217
    invoke-interface {v0, v3, v1}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1218
    add-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/c/e$b;IJILcom/google/android/exoplayer2/util/l;I)I
    .locals 28

    .prologue
    .line 752
    const/16 v2, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 753
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v2

    .line 754
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/c/a;->b(I)I

    move-result v3

    .line 756
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->c:Lcom/google/android/exoplayer2/extractor/c/j;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    move-object/from16 v20, v0

    .line 758
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/l;->a:Lcom/google/android/exoplayer2/extractor/c/c;

    move-object/from16 v21, v0

    .line 760
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/l;->h:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v4

    aput v4, v2, p1

    .line 761
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/l;->g:[J

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/c/l;->c:J

    aput-wide v4, v2, p1

    .line 762
    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_0

    .line 763
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/l;->g:[J

    aget-wide v4, v2, p1

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, p1

    .line 766
    :cond_0
    and-int/lit8 v2, v3, 0x4

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v8, v2

    .line 767
    :goto_0
    move-object/from16 v0, v21

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/c/c;->d:I

    .line 768
    if-eqz v8, :cond_1

    .line 769
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v14

    .line 772
    :cond_1
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    move/from16 v19, v2

    .line 773
    :goto_1
    and-int/lit16 v2, v3, 0x200

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 774
    :goto_2
    and-int/lit16 v2, v3, 0x400

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move/from16 v17, v2

    .line 775
    :goto_3
    and-int/lit16 v2, v3, 0x800

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move v9, v2

    .line 780
    :goto_4
    const-wide/16 v2, 0x0

    .line 784
    iget-object v4, v13, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    if-eqz v4, :cond_11

    iget-object v4, v13, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    iget-object v4, v13, Lcom/google/android/exoplayer2/extractor/c/j;->i:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    .line 786
    iget-object v2, v13, Lcom/google/android/exoplayer2/extractor/c/j;->j:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const-wide/16 v4, 0x3e8

    iget-wide v6, v13, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v2

    move-wide v10, v2

    .line 789
    :goto_5
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/l;->i:[I

    move-object/from16 v22, v0

    .line 790
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/l;->j:[I

    move-object/from16 v23, v0

    .line 791
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/l;->k:[J

    move-object/from16 v24, v0

    .line 792
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/l;->l:[Z

    move-object/from16 v25, v0

    .line 794
    iget v2, v13, Lcom/google/android/exoplayer2/extractor/c/j;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v12, v2

    .line 797
    :goto_6
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/c/l;->h:[I

    aget v2, v2, p1

    add-int v26, p6, v2

    .line 798
    iget-wide v6, v13, Lcom/google/android/exoplayer2/extractor/c/j;->c:J

    .line 799
    if-lez p1, :cond_2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/c/l;->s:J

    move-wide/from16 p2, v0

    :cond_2
    move-wide/from16 v2, p2

    .line 800
    :goto_7
    move/from16 v0, p6

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    .line 802
    if-eqz v19, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v4

    move/from16 v16, v4

    .line 804
    :goto_8
    if-eqz v18, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v4

    move v15, v4

    .line 805
    :goto_9
    if-nez p6, :cond_c

    if-eqz v8, :cond_c

    move v13, v14

    .line 807
    :goto_a
    if-eqz v9, :cond_e

    .line 813
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v4

    .line 814
    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v23, p6

    .line 818
    :goto_b
    const-wide/16 v4, 0x3e8

    .line 819
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    aput-wide v4, v24, p6

    .line 820
    aput v15, v22, p6

    .line 821
    shr-int/lit8 v4, v13, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_f

    if-eqz v12, :cond_3

    if-nez p6, :cond_f

    :cond_3
    const/4 v4, 0x1

    :goto_c
    aput-boolean v4, v25, p6

    .line 823
    move/from16 v0, v16

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 800
    add-int/lit8 p6, p6, 0x1

    goto :goto_7

    .line 766
    :cond_4
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_0

    .line 772
    :cond_5
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_1

    .line 773
    :cond_6
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_2

    .line 774
    :cond_7
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_3

    .line 775
    :cond_8
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_4

    .line 794
    :cond_9
    const/4 v2, 0x0

    move v12, v2

    goto :goto_6

    .line 802
    :cond_a
    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/c;->b:I

    move/from16 v16, v4

    goto :goto_8

    .line 804
    :cond_b
    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/c;->c:I

    move v15, v4

    goto :goto_9

    .line 805
    :cond_c
    if-eqz v17, :cond_d

    .line 806
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v4

    move v13, v4

    goto :goto_a

    :cond_d
    move-object/from16 v0, v21

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/c;->d:I

    move v13, v4

    goto :goto_a

    .line 816
    :cond_e
    const/4 v4, 0x0

    aput v4, v23, p6

    goto :goto_b

    .line 821
    :cond_f
    const/4 v4, 0x0

    goto :goto_c

    .line 825
    :cond_10
    move-object/from16 v0, v20

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/c/l;->s:J

    .line 826
    return v26

    :cond_11
    move-wide v10, v2

    goto/16 :goto_5
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/l;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/extractor/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 926
    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v4

    .line 928
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v4

    .line 930
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v8

    .line 934
    if-nez v4, :cond_0

    .line 935
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v6

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v4

    add-long v4, v4, p1

    move-wide v10, v4

    move-wide v4, v6

    .line 941
    :goto_0
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v12

    .line 944
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v18

    .line 947
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 948
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 949
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 950
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v22, v0

    .line 954
    const/4 v6, 0x0

    move-wide/from16 v16, v10

    move v10, v6

    move-wide v6, v4

    move-wide v4, v12

    :goto_1
    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v11

    .line 957
    const/high16 v14, -0x80000000

    and-int/2addr v14, v11

    .line 958
    if-eqz v14, :cond_1

    .line 959
    new-instance v4, Lcom/google/android/exoplayer2/ParserException;

    const-string v5, "Unhandled indirect reference"

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 938
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v6

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v4

    add-long v4, v4, p1

    move-wide v10, v4

    move-wide v4, v6

    goto :goto_0

    .line 961
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v14

    .line 963
    const v23, 0x7fffffff

    and-int v11, v11, v23

    aput v11, v19, v10

    .line 964
    aput-wide v16, v20, v10

    .line 968
    aput-wide v4, v22, v10

    .line 969
    add-long v4, v6, v14

    .line 970
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v14

    .line 971
    aget-wide v6, v22, v10

    sub-long v6, v14, v6

    aput-wide v6, v21, v10

    .line 973
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 974
    aget v6, v19, v10

    int-to-long v6, v6

    add-long v16, v16, v6

    .line 954
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    move-wide v6, v4

    move-wide v4, v14

    goto :goto_1

    .line 977
    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/android/exoplayer2/extractor/a;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/a;-><init>([I[J[J[J)V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/extractor/c/a$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1224
    .line 1225
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 1226
    const/4 v0, 0x0

    move v3, v0

    move-object v1, v2

    :goto_0
    if-ge v3, v4, :cond_3

    .line 1227
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$b;

    .line 1228
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aP:I

    sget v6, Lcom/google/android/exoplayer2/extractor/c/a;->U:I

    if-ne v5, v6, :cond_1

    .line 1229
    if-nez v1, :cond_0

    .line 1230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 1233
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/h;->a([B)Ljava/util/UUID;

    move-result-object v5

    .line 1234
    if-nez v5, :cond_2

    .line 1235
    const-string v0, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_1
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1237
    :cond_2
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1241
    :cond_3
    if-nez v1, :cond_4

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method private static a(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/c/e$b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/c/e$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/c/e$b;"
        }
    .end annotation

    .prologue
    .line 1164
    const/4 v1, 0x0

    .line 1165
    const-wide v2, 0x7fffffffffffffffL

    .line 1167
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1168
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    .line 1169
    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/e$b;

    .line 1170
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->g:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/c/l;->e:I

    if-ne v4, v5, :cond_0

    move-wide v9, v2

    move-object v2, v1

    move-wide v0, v9

    .line 1168
    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-wide v9, v0

    move-object v1, v2

    move-wide v2, v9

    goto :goto_0

    .line 1173
    :cond_0
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/c/l;->g:[J

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->g:I

    aget-wide v4, v4, v5

    .line 1174
    cmp-long v8, v4, v2

    if-gez v8, :cond_2

    move-object v2, v0

    move-wide v0, v4

    .line 1176
    goto :goto_1

    .line 1180
    :cond_1
    return-object v1

    :cond_2
    move-wide v9, v2

    move-object v2, v1

    move-wide v0, v9

    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/c/e$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/l;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/c/e$b;",
            ">;I)",
            "Lcom/google/android/exoplayer2/extractor/c/e$b;"
        }
    .end annotation

    .prologue
    .line 697
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 698
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 699
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->b(I)I

    move-result v5

    .line 700
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 701
    and-int/lit8 v1, p2, 0x10

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/e$b;

    .line 702
    if-nez v0, :cond_1

    .line 703
    const/4 v0, 0x0

    .line 723
    :goto_1
    return-object v0

    .line 701
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 705
    :cond_1
    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_2

    .line 706
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v2

    .line 707
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    iput-wide v2, v1, Lcom/google/android/exoplayer2/extractor/c/l;->c:J

    .line 708
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    iput-wide v2, v1, Lcom/google/android/exoplayer2/extractor/c/l;->d:J

    .line 711
    :cond_2
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->d:Lcom/google/android/exoplayer2/extractor/c/c;

    .line 712
    and-int/lit8 v1, v5, 0x2

    if-eqz v1, :cond_3

    .line 714
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    .line 715
    :goto_2
    and-int/lit8 v1, v5, 0x8

    if-eqz v1, :cond_4

    .line 716
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v1

    move v3, v1

    .line 717
    :goto_3
    and-int/lit8 v1, v5, 0x10

    if-eqz v1, :cond_5

    .line 718
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v1

    move v2, v1

    .line 719
    :goto_4
    and-int/lit8 v1, v5, 0x20

    if-eqz v1, :cond_6

    .line 720
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v1

    .line 721
    :goto_5
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    new-instance v6, Lcom/google/android/exoplayer2/extractor/c/c;

    invoke-direct {v6, v4, v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/c/c;-><init>(IIII)V

    iput-object v6, v5, Lcom/google/android/exoplayer2/extractor/c/l;->a:Lcom/google/android/exoplayer2/extractor/c/c;

    goto :goto_1

    .line 714
    :cond_3
    iget v1, v6, Lcom/google/android/exoplayer2/extractor/c/c;->a:I

    move v4, v1

    goto :goto_2

    .line 716
    :cond_4
    iget v1, v6, Lcom/google/android/exoplayer2/extractor/c/c;->b:I

    move v3, v1

    goto :goto_3

    .line 718
    :cond_5
    iget v1, v6, Lcom/google/android/exoplayer2/extractor/c/c;->c:I

    move v2, v1

    goto :goto_4

    .line 720
    :cond_6
    iget v1, v6, Lcom/google/android/exoplayer2/extractor/c/c;->d:I

    goto :goto_5
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->p:I

    .line 269
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    .line 270
    return-void
.end method

.method private a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 361
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aQ:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/extractor/c/a$a;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/e;->a()V

    .line 365
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/c/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 381
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$a;->aP:I

    sget v1, Lcom/google/android/exoplayer2/extractor/c/a;->B:I

    if-ne v0, v1, :cond_1

    .line 382
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/e;->b(Lcom/google/android/exoplayer2/extractor/c/a$a;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$a;->aP:I

    sget v1, Lcom/google/android/exoplayer2/extractor/c/a;->K:I

    if-ne v0, v1, :cond_2

    .line 384
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/e;->c(Lcom/google/android/exoplayer2/extractor/c/a$a;)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/c/a$a;->a(Lcom/google/android/exoplayer2/extractor/c/a$a;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/c/a$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/c/a$a;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/c/e$b;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 531
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    .line 534
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aP:I

    sget v4, Lcom/google/android/exoplayer2/extractor/c/a;->L:I

    if-ne v3, v4, :cond_0

    .line 535
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/c/e;->b(Lcom/google/android/exoplayer2/extractor/c/a$a;Landroid/util/SparseArray;I[B)V

    .line 531
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 538
    :cond_1
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/c/a$a;Lcom/google/android/exoplayer2/extractor/c/e$b;JI)V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 596
    .line 598
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aR:Ljava/util/List;

    .line 599
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v4, v3

    move v1, v3

    move v2, v3

    .line 600
    :goto_0
    if-ge v4, v10, :cond_0

    .line 601
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$b;

    .line 602
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aP:I

    sget v6, Lcom/google/android/exoplayer2/extractor/c/a;->z:I

    if-ne v5, v6, :cond_3

    .line 603
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    .line 604
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 605
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v0

    .line 606
    if-lez v0, :cond_3

    .line 607
    add-int/2addr v0, v1

    .line 608
    add-int/lit8 v1, v2, 0x1

    .line 600
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 612
    :cond_0
    iput v3, p1, Lcom/google/android/exoplayer2/extractor/c/e$b;->g:I

    .line 613
    iput v3, p1, Lcom/google/android/exoplayer2/extractor/c/e$b;->f:I

    .line 614
    iput v3, p1, Lcom/google/android/exoplayer2/extractor/c/e$b;->e:I

    .line 615
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/c/l;->a(II)V

    move v8, v3

    move v6, v3

    move v1, v3

    .line 619
    :goto_2
    if-ge v8, v10, :cond_2

    .line 620
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$b;

    .line 621
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aP:I

    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->z:I

    if-ne v2, v3, :cond_1

    .line 622
    add-int/lit8 v7, v1, 0x1

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    move-object v0, p1

    move-wide v2, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/extractor/c/e$b;IJILcom/google/android/exoplayer2/util/l;I)I

    move-result v6

    move v1, v7

    .line 619
    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 626
    :cond_2
    return-void

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/c/a$b;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/c/a$a;->a(Lcom/google/android/exoplayer2/extractor/c/a$b;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$b;->aP:I

    sget v1, Lcom/google/android/exoplayer2/extractor/c/a;->A:I

    if-ne v0, v1, :cond_2

    .line 371
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/util/l;J)Landroid/util/Pair;

    move-result-object v1

    .line 372
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->x:J

    .line 373
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->D:Lcom/google/android/exoplayer2/extractor/h;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->G:Z

    goto :goto_0

    .line 375
    :cond_2
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$b;->aP:I

    sget v1, Lcom/google/android/exoplayer2/extractor/c/a;->aG:I

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/util/l;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/c/k;Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 630
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/c/k;->b:I

    .line 631
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 632
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 633
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->b(I)I

    move-result v0

    .line 634
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 635
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 637
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 639
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v6

    .line 640
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/c/l;->f:I

    if-eq v6, v3, :cond_1

    .line 641
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer2/extractor/c/l;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_1
    if-nez v0, :cond_3

    .line 646
    iget-object v7, p2, Lcom/google/android/exoplayer2/extractor/c/l;->n:[Z

    move v3, v2

    move v0, v2

    .line 647
    :goto_0
    if-ge v3, v6, :cond_4

    .line 648
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v8

    .line 649
    add-int v4, v0, v8

    .line 650
    if-le v8, v5, :cond_2

    move v0, v1

    :goto_1
    aput-boolean v0, v7, v3

    .line 647
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 650
    goto :goto_1

    .line 653
    :cond_3
    if-le v0, v5, :cond_5

    .line 654
    :goto_2
    mul-int/2addr v0, v6

    add-int/2addr v0, v2

    .line 655
    iget-object v3, p2, Lcom/google/android/exoplayer2/extractor/c/l;->n:[Z

    invoke-static {v3, v2, v6, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 657
    :cond_4
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/extractor/c/l;->a(I)V

    .line 658
    return-void

    :cond_5
    move v1, v2

    .line 653
    goto :goto_2
.end method

.method private a(Lcom/google/android/exoplayer2/util/l;)V
    .locals 8

    .prologue
    const/16 v6, 0xc

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->E:Lcom/google/android/exoplayer2/extractor/n;

    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 480
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->w()Ljava/lang/String;

    .line 481
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->w()Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v4

    .line 484
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/v;->a(JJJ)J

    move-result-wide v2

    .line 486
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 487
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v5

    .line 488
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->E:Lcom/google/android/exoplayer2/extractor/n;

    invoke-interface {v0, p1, v5}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 490
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->x:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 492
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->E:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/c/e;->x:J

    add-long/2addr v2, v6

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->o:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/c/e$a;

    invoke-direct {v1, v2, v3, v5}, Lcom/google/android/exoplayer2/extractor/c/e$a;-><init>(JI)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 499
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->v:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->v:I

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;ILcom/google/android/exoplayer2/extractor/c/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 851
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 852
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 853
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->b(I)I

    move-result v0

    .line 855
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 857
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 861
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v2

    .line 862
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/c/l;->f:I

    if-eq v2, v3, :cond_2

    .line 863
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length mismatch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer2/extractor/c/l;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 860
    goto :goto_0

    .line 866
    :cond_2
    iget-object v3, p2, Lcom/google/android/exoplayer2/extractor/c/l;->n:[Z

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 867
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/extractor/c/l;->a(I)V

    .line 868
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/extractor/c/l;->a(Lcom/google/android/exoplayer2/util/l;)V

    .line 869
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 667
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 668
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 669
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->b(I)I

    move-result v1

    .line 670
    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 671
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v1

    .line 675
    if-eq v1, v2, :cond_1

    .line 677
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected saio entry count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v0

    .line 681
    iget-wide v2, p1, Lcom/google/android/exoplayer2/extractor/c/l;->d:J

    if-nez v0, :cond_2

    .line 682
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v0

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/google/android/exoplayer2/extractor/c/l;->d:J

    .line 683
    return-void

    .line 682
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 831
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 832
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 835
    sget-object v0, Lcom/google/android/exoplayer2/extractor/c/e;->c:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    :goto_0
    return-void

    .line 842
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/util/l;ILcom/google/android/exoplayer2/extractor/c/l;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 873
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 874
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 875
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    sget v4, Lcom/google/android/exoplayer2/extractor/c/e;->b:I

    if-eq v3, v4, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 880
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 882
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 883
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_3
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 887
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 888
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    sget v4, Lcom/google/android/exoplayer2/extractor/c/e;->b:I

    if-ne v3, v4, :cond_0

    .line 892
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v0

    .line 893
    if-ne v0, v1, :cond_4

    .line 894
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 895
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_4
    if-lt v0, v8, :cond_5

    .line 898
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 900
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 901
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_6
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 905
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    .line 906
    :goto_1
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v3

    .line 910
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 911
    array-length v5, v4

    invoke-virtual {p1, v4, v2, v5}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 912
    iput-boolean v1, p2, Lcom/google/android/exoplayer2/extractor/c/l;->m:Z

    .line 913
    new-instance v1, Lcom/google/android/exoplayer2/extractor/c/k;

    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/c/k;-><init>(ZI[B)V

    iput-object v1, p2, Lcom/google/android/exoplayer2/extractor/c/l;->o:Lcom/google/android/exoplayer2/extractor/c/k;

    goto :goto_0

    :cond_7
    move v0, v2

    .line 905
    goto :goto_1
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 1246
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->S:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->R:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->C:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->A:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->T:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->w:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->x:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->O:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->y:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->z:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->U:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ac:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ad:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ah:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ag:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ae:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->af:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->Q:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->N:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->aG:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/l;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/c/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 508
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 509
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 510
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v2

    .line 511
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v3

    .line 512
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v4

    .line 514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Lcom/google/android/exoplayer2/extractor/c/c;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/c/c;-><init>(IIII)V

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 457
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->E:Lcom/google/android/exoplayer2/extractor/n;

    if-nez v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->D:Lcom/google/android/exoplayer2/extractor/h;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->E:Lcom/google/android/exoplayer2/extractor/n;

    .line 459
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->E:Lcom/google/android/exoplayer2/extractor/n;

    const-string v2, "application/x-emsg"

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v0, v2, v6, v7}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 462
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->F:[Lcom/google/android/exoplayer2/extractor/n;

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->D:Lcom/google/android/exoplayer2/extractor/h;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v7

    .line 465
    const-string v1, "application/cea-608"

    const/4 v3, -0x1

    move-object v2, v0

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 467
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/n;

    aput-object v7, v0, v4

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->F:[Lcom/google/android/exoplayer2/extractor/n;

    .line 469
    :cond_1
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/c/a$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->e:Lcom/google/android/exoplayer2/extractor/c/j;

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    const-string v1, "Unexpected moov box."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 393
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$a;->aR:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v4

    .line 396
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->M:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/c/a$a;->e(I)Lcom/google/android/exoplayer2/extractor/c/a$a;

    move-result-object v7

    .line 397
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 398
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 399
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/c/a$a;->aR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move v1, v5

    .line 400
    :goto_1
    if-ge v1, v9, :cond_3

    .line 401
    iget-object v0, v7, Lcom/google/android/exoplayer2/extractor/c/a$a;->aR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$b;

    .line 402
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aP:I

    sget v11, Lcom/google/android/exoplayer2/extractor/c/a;->y:I

    if-ne v10, v11, :cond_2

    .line 403
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/e;->b(Lcom/google/android/exoplayer2/util/l;)Landroid/util/Pair;

    move-result-object v10

    .line 404
    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v5

    .line 391
    goto :goto_0

    .line 405
    :cond_2
    iget v10, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aP:I

    sget v11, Lcom/google/android/exoplayer2/extractor/c/a;->N:I

    if-ne v10, v11, :cond_0

    .line 406
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/e;->c(Lcom/google/android/exoplayer2/util/l;)J

    move-result-wide v2

    goto :goto_2

    .line 411
    :cond_3
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 412
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$a;->aS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    move v7, v5

    .line 413
    :goto_3
    if-ge v7, v10, :cond_5

    .line 414
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$a;->aS:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$a;

    .line 415
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aP:I

    sget v11, Lcom/google/android/exoplayer2/extractor/c/a;->D:I

    if-ne v1, v11, :cond_4

    .line 416
    sget v1, Lcom/google/android/exoplayer2/extractor/c/a;->C:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/c/b;->a(Lcom/google/android/exoplayer2/extractor/c/a$a;Lcom/google/android/exoplayer2/extractor/c/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/c/j;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_4

    .line 419
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/c/j;->a:I

    invoke-virtual {v9, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    .line 424
    :cond_5
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 427
    :goto_4
    if-ge v5, v3, :cond_6

    .line 428
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/j;

    .line 429
    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->D:Lcom/google/android/exoplayer2/extractor/h;

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/j;->b:I

    invoke-interface {v1, v5, v4}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/extractor/c/e$b;-><init>(Lcom/google/android/exoplayer2/extractor/n;)V

    .line 430
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/c/j;->a:I

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/c/c;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/c/e$b;->a(Lcom/google/android/exoplayer2/extractor/c/j;Lcom/google/android/exoplayer2/extractor/c/c;)V

    .line 431
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/j;->a:I

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/c/e;->w:J

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/c/j;->e:J

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->w:J

    .line 427
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 434
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/e;->b()V

    .line 435
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->D:Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/h;->a()V

    .line 443
    :cond_7
    return-void

    .line 437
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v3, :cond_9

    :goto_5
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 438
    :goto_6
    if-ge v5, v3, :cond_7

    .line 439
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/j;

    .line 440
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/c/j;->a:I

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/c/c;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/c/e$b;->a(Lcom/google/android/exoplayer2/extractor/c/j;Lcom/google/android/exoplayer2/extractor/c/c;)V

    .line 438
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    move v6, v5

    .line 437
    goto :goto_5
.end method

.method private static b(Lcom/google/android/exoplayer2/extractor/c/a$a;Landroid/util/SparseArray;I[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/c/a$a;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/c/e$b;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 545
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->x:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v0

    .line 546
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/util/l;Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/c/e$b;

    move-result-object v2

    .line 547
    if-nez v2, :cond_1

    .line 592
    :cond_0
    return-void

    .line 551
    :cond_1
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    .line 552
    iget-wide v0, v3, Lcom/google/android/exoplayer2/extractor/c/l;->s:J

    .line 553
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/c/e$b;->a()V

    .line 555
    sget v4, Lcom/google/android/exoplayer2/extractor/c/a;->w:I

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v4

    .line 556
    if-eqz v4, :cond_2

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    .line 557
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->w:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/e;->d(Lcom/google/android/exoplayer2/util/l;)J

    move-result-wide v0

    .line 560
    :cond_2
    invoke-static {p0, v2, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/extractor/c/a$a;Lcom/google/android/exoplayer2/extractor/c/e$b;JI)V

    .line 562
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ac:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_3

    .line 564
    iget-object v1, v2, Lcom/google/android/exoplayer2/extractor/c/e$b;->c:Lcom/google/android/exoplayer2/extractor/c/j;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/c/j;->h:[Lcom/google/android/exoplayer2/extractor/c/k;

    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/c/l;->a:Lcom/google/android/exoplayer2/extractor/c/c;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/c/c;->a:I

    aget-object v1, v1, v2

    .line 566
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v1, v0, v3}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/extractor/c/k;Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;)V

    .line 569
    :cond_3
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ad:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_4

    .line 571
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;)V

    .line 574
    :cond_4
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ah:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_5

    .line 576
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/extractor/c/e;->b(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;)V

    .line 579
    :cond_5
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->ae:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v0

    .line 580
    sget v1, Lcom/google/android/exoplayer2/extractor/c/a;->af:I

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/c/a$a;->d(I)Lcom/google/android/exoplayer2/extractor/c/a$b;

    move-result-object v1

    .line 581
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 582
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;)V

    .line 585
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 586
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/a$a;->aR:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/a$b;

    .line 588
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aP:I

    sget v5, Lcom/google/android/exoplayer2/extractor/c/a;->ag:I

    if-ne v4, v5, :cond_7

    .line 589
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/a$b;->aQ:Lcom/google/android/exoplayer2/util/l;

    invoke-static {v0, v3, p3}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;[B)V

    .line 586
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/extractor/c/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 846
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/util/l;ILcom/google/android/exoplayer2/extractor/c/l;)V

    .line 847
    return-void
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 1257
    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->B:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->D:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->E:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->F:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->G:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->K:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->L:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->M:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer2/extractor/c/a;->P:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x7fffffff

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->l:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v0, v1, v8, v2}, Lcom/google/android/exoplayer2/extractor/g;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 346
    :goto_0
    return v0

    .line 278
    :cond_0
    iput v8, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->l:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->l:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->l:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->q:I

    .line 284
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->l:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 288
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->l:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    .line 292
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    .line 293
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Atom size less than header length (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 297
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->q:I

    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->K:I

    if-ne v0, v3, :cond_4

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v3, v1

    .line 300
    :goto_1
    if-ge v3, v6, :cond_4

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    .line 302
    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/c/l;->b:J

    .line 303
    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/c/l;->d:J

    .line 304
    iput-wide v4, v0, Lcom/google/android/exoplayer2/extractor/c/l;->c:J

    .line 300
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 308
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->q:I

    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->h:I

    if-ne v0, v3, :cond_6

    .line 309
    iput-object v9, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    .line 310
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->u:J

    .line 311
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->G:Z

    if-nez v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->D:Lcom/google/android/exoplayer2/extractor/h;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/m$a;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->w:J

    invoke-direct {v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/m$a;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 313
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->G:Z

    .line 315
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->p:I

    move v0, v2

    .line 316
    goto/16 :goto_0

    .line 319
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->q:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 320
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 321
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/exoplayer2/extractor/c/a$a;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/c/e;->q:I

    invoke-direct {v4, v5, v0, v1}, Lcom/google/android/exoplayer2/extractor/c/a$a;-><init>(IJ)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 322
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/c/e;->a(J)V

    :goto_2
    move v0, v2

    .line 346
    goto/16 :goto_0

    .line 326
    :cond_7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/e;->a()V

    goto :goto_2

    .line 328
    :cond_8
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->q:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 329
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    if-eq v0, v8, :cond_9

    .line 330
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_9
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    cmp-long v0, v4, v10

    if-lez v0, :cond_a

    .line 333
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/util/l;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/util/l;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->t:Lcom/google/android/exoplayer2/util/l;

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->l:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/c/e;->t:Lcom/google/android/exoplayer2/util/l;

    iget-object v3, v3, Lcom/google/android/exoplayer2/util/l;->a:[B

    invoke-static {v0, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->p:I

    goto :goto_2

    .line 339
    :cond_b
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_c

    .line 340
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_c
    iput-object v9, p0, Lcom/google/android/exoplayer2/extractor/c/e;->t:Lcom/google/android/exoplayer2/util/l;

    .line 343
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->p:I

    goto :goto_2
.end method

.method private static c(Lcom/google/android/exoplayer2/util/l;)J
    .locals 2

    .prologue
    .line 522
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 523
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 524
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v0

    .line 525
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v0

    goto :goto_0
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/c/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->d:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->m:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/extractor/c/a$a;Landroid/util/SparseArray;I[B)V

    .line 447
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/c/a$a;->aR:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v2

    .line 448
    if-eqz v2, :cond_0

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 450
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/e$b;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/c/e$b;->a(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    .line 450
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->r:J

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->s:I

    sub-int/2addr v0, v1

    .line 351
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->t:Lcom/google/android/exoplayer2/util/l;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->t:Lcom/google/android/exoplayer2/util/l;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 353
    new-instance v0, Lcom/google/android/exoplayer2/extractor/c/a$b;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->q:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->t:Lcom/google/android/exoplayer2/util/l;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/c/a$b;-><init>(ILcom/google/android/exoplayer2/util/l;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/extractor/c/a$b;J)V

    .line 357
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/c/e;->a(J)V

    .line 358
    return-void

    .line 355
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    goto :goto_0
.end method

.method private static d(Lcom/google/android/exoplayer2/util/l;)J
    .locals 2

    .prologue
    .line 733
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 734
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 735
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->a(I)I

    move-result v0

    .line 736
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->u()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->k()J

    move-result-wide v0

    goto :goto_0
.end method

.method private d(Lcom/google/android/exoplayer2/extractor/g;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 982
    const/4 v1, 0x0

    .line 983
    const-wide v2, 0x7fffffffffffffffL

    .line 984
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 985
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    .line 986
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    .line 987
    iget-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/c/l;->r:Z

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/c/l;->d:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    .line 989
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/c/l;->d:J

    .line 990
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/e$b;

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    .line 985
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-wide v8, v0

    move-object v1, v2

    move-wide v2, v8

    goto :goto_0

    .line 993
    :cond_0
    if-nez v1, :cond_1

    .line 994
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->p:I

    .line 1003
    :goto_2
    return-void

    .line 997
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 998
    if-gez v0, :cond_2

    .line 999
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Offset to encryption data was negative."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_2
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 1002
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/c/l;->a(Lcom/google/android/exoplayer2/extractor/g;)V

    goto :goto_2

    :cond_3
    move-wide v8, v2

    move-object v2, v1

    move-wide v0, v8

    goto :goto_1
.end method

.method private e(Lcom/google/android/exoplayer2/extractor/g;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1020
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1021
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    if-nez v0, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/c/e$b;

    move-result-object v1

    .line 1023
    if-nez v1, :cond_1

    .line 1026
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->u:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1027
    if-gez v0, :cond_0

    .line 1028
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Offset to end of mdat was negative."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 1031
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/e;->a()V

    .line 1032
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return v0

    .line 1035
    :cond_1
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/l;->g:[J

    iget v2, v1, Lcom/google/android/exoplayer2/extractor/c/e$b;->g:I

    aget-wide v2, v0, v2

    .line 1038
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/g;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 1039
    if-gez v0, :cond_2

    .line 1041
    const-string v0, "FragmentedMp4Extractor"

    const-string v2, "Ignoring negative offset to sample data."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/4 v0, 0x0

    .line 1044
    :cond_2
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 1045
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/l;->i:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/c/e$b;->e:I

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    .line 1049
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/extractor/c/l;->m:Z

    if-eqz v0, :cond_6

    .line 1050
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/c/e;->a(Lcom/google/android/exoplayer2/extractor/c/e$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    .line 1051
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    .line 1055
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->c:Lcom/google/android/exoplayer2/extractor/c/j;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/c/j;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1056
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    .line 1057
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/g;->b(I)V

    .line 1059
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->p:I

    .line 1060
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    .line 1063
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->a:Lcom/google/android/exoplayer2/extractor/c/l;

    .line 1064
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->c:Lcom/google/android/exoplayer2/extractor/c/j;

    .line 1065
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->b:Lcom/google/android/exoplayer2/extractor/n;

    .line 1066
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->e:I

    .line 1067
    iget v0, v3, Lcom/google/android/exoplayer2/extractor/c/j;->k:I

    if-eqz v0, :cond_b

    .line 1070
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->h:Lcom/google/android/exoplayer2/util/l;

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    .line 1071
    const/4 v0, 0x0

    const/4 v2, 0x0

    aput-byte v2, v5, v0

    .line 1072
    const/4 v0, 0x1

    const/4 v2, 0x0

    aput-byte v2, v5, v0

    .line 1073
    const/4 v0, 0x2

    const/4 v2, 0x0

    aput-byte v2, v5, v0

    .line 1074
    iget v0, v3, Lcom/google/android/exoplayer2/extractor/c/j;->k:I

    add-int/lit8 v6, v0, 0x1

    .line 1075
    iget v0, v3, Lcom/google/android/exoplayer2/extractor/c/j;->k:I

    rsub-int/lit8 v7, v0, 0x4

    .line 1079
    :goto_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    if-ge v0, v2, :cond_c

    .line 1080
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    if-nez v0, :cond_8

    .line 1082
    invoke-interface {p1, v5, v7, v6}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 1083
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->h:Lcom/google/android/exoplayer2/util/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1084
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->h:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->s()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    .line 1086
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->g:Lcom/google/android/exoplayer2/util/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->g:Lcom/google/android/exoplayer2/util/l;

    const/4 v2, 0x4

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1089
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->h:Lcom/google/android/exoplayer2/util/l;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1090
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->F:[Lcom/google/android/exoplayer2/extractor/n;

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/google/android/exoplayer2/extractor/c/j;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    const/4 v2, 0x4

    aget-byte v2, v5, v2

    .line 1091
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/j;->a(Ljava/lang/String;B)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->C:Z

    .line 1092
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    .line 1093
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    goto :goto_2

    .line 1053
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    goto/16 :goto_1

    .line 1091
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 1096
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->C:Z

    if-eqz v0, :cond_a

    .line 1098
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->i:Lcom/google/android/exoplayer2/util/l;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/l;->a(I)V

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->i:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    const/4 v2, 0x0

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    invoke-interface {p1, v0, v2, v8}, Lcom/google/android/exoplayer2/extractor/g;->b([BII)V

    .line 1100
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->i:Lcom/google/android/exoplayer2/util/l;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/util/l;I)V

    .line 1101
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    .line 1103
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->i:Lcom/google/android/exoplayer2/util/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/l;->a:[B

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/c/e;->i:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/l;->c()I

    move-result v8

    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/util/j;->a([BI)I

    move-result v8

    .line 1105
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/c/e;->i:Lcom/google/android/exoplayer2/util/l;

    const-string v0, "video/hevc"

    iget-object v10, v3, Lcom/google/android/exoplayer2/extractor/c/j;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v10, v10, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 1106
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->i:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/l;->b(I)V

    .line 1107
    invoke-virtual {v12, v4}, Lcom/google/android/exoplayer2/extractor/c/l;->b(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->i:Lcom/google/android/exoplayer2/util/l;

    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/c/e;->F:[Lcom/google/android/exoplayer2/extractor/n;

    invoke-static {v8, v9, v0, v10}, Lcom/google/android/exoplayer2/text/a/g;->a(JLcom/google/android/exoplayer2/util/l;[Lcom/google/android/exoplayer2/extractor/n;)V

    move v0, v2

    .line 1113
    :goto_5
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    .line 1114
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    goto/16 :goto_2

    .line 1105
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 1111
    :cond_a
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->B:I

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/g;IZ)I

    move-result v0

    goto :goto_5

    .line 1118
    :cond_b
    :goto_6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    if-ge v0, v2, :cond_c

    .line 1119
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/n;->a(Lcom/google/android/exoplayer2/extractor/g;IZ)I

    move-result v0

    .line 1120
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->A:I

    goto :goto_6

    .line 1124
    :cond_c
    invoke-virtual {v12, v4}, Lcom/google/android/exoplayer2/extractor/c/l;->b(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v6

    .line 1125
    iget-boolean v0, v12, Lcom/google/android/exoplayer2/extractor/c/l;->m:Z

    if-eqz v0, :cond_e

    const/high16 v0, 0x40000000    # 2.0f

    :goto_7
    iget-object v2, v12, Lcom/google/android/exoplayer2/extractor/c/l;->l:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_8
    or-int v4, v0, v2

    .line 1127
    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/c/l;->a:Lcom/google/android/exoplayer2/extractor/c/c;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/c/c;->a:I

    .line 1128
    const/4 v7, 0x0

    .line 1129
    iget-boolean v2, v12, Lcom/google/android/exoplayer2/extractor/c/l;->m:Z

    if-eqz v2, :cond_d

    .line 1130
    iget-object v2, v12, Lcom/google/android/exoplayer2/extractor/c/l;->o:Lcom/google/android/exoplayer2/extractor/c/k;

    if-eqz v2, :cond_10

    iget-object v0, v12, Lcom/google/android/exoplayer2/extractor/c/l;->o:Lcom/google/android/exoplayer2/extractor/c/k;

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/k;->c:[B

    :goto_9
    move-object v7, v0

    .line 1134
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->k:Lcom/google/android/exoplayer2/util/s;

    if-eqz v0, :cond_13

    .line 1135
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->k:Lcom/google/android/exoplayer2/util/s;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/exoplayer2/util/s;->c(J)J

    move-result-wide v2

    .line 1137
    :goto_a
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/c/e;->z:I

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    .line 1139
    :goto_b
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1140
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/e$a;

    .line 1141
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->v:I

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/c/e$a;->b:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->v:I

    .line 1142
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/c/e;->E:Lcom/google/android/exoplayer2/extractor/n;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/c/e$a;->a:J

    add-long/2addr v6, v2

    const/4 v8, 0x1

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/c/e$a;->b:I

    iget v10, p0, Lcom/google/android/exoplayer2/extractor/c/e;->v:I

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/n;->a(JIII[B)V

    goto :goto_b

    .line 1125
    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    .line 1130
    :cond_10
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/c/j;->h:[Lcom/google/android/exoplayer2/extractor/c/k;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/c/k;->c:[B

    goto :goto_9

    .line 1147
    :cond_11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->e:I

    .line 1148
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->f:I

    .line 1149
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->f:I

    iget-object v1, v12, Lcom/google/android/exoplayer2/extractor/c/l;->h:[I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/c/e$b;->g:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_12

    .line 1151
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->g:I

    .line 1152
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/exoplayer2/extractor/c/e$b;->f:I

    .line 1153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->y:Lcom/google/android/exoplayer2/extractor/c/e$b;

    .line 1155
    :cond_12
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->p:I

    .line 1156
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_13
    move-wide v2, v8

    goto :goto_a
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/g;Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 247
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->p:I

    packed-switch v0, :pswitch_data_0

    .line 260
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/e;->e(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 249
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/e;->b(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    const/4 v0, -0x1

    goto :goto_1

    .line 254
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/e;->c(Lcom/google/android/exoplayer2/extractor/g;)V

    goto :goto_0

    .line 257
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/c/e;->d(Lcom/google/android/exoplayer2/extractor/g;)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(JJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v2

    .line 229
    :goto_0
    if-ge v1, v3, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/c/e$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/c/e$b;->a()V

    .line 229
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 233
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/c/e;->v:I

    .line 234
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 235
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/e;->a()V

    .line 236
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/extractor/h;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 216
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->D:Lcom/google/android/exoplayer2/extractor/h;

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->e:Lcom/google/android/exoplayer2/extractor/c/j;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/google/android/exoplayer2/extractor/c/e$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->e:Lcom/google/android/exoplayer2/extractor/c/j;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/c/j;->b:I

    invoke-interface {p1, v3, v1}, Lcom/google/android/exoplayer2/extractor/h;->a(II)Lcom/google/android/exoplayer2/extractor/n;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/c/e$b;-><init>(Lcom/google/android/exoplayer2/extractor/n;)V

    .line 219
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->e:Lcom/google/android/exoplayer2/extractor/c/j;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/c;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/google/android/exoplayer2/extractor/c/c;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/c/e$b;->a(Lcom/google/android/exoplayer2/extractor/c/j;Lcom/google/android/exoplayer2/extractor/c/c;)V

    .line 220
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/c/e;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/c/e;->b()V

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/c/e;->D:Lcom/google/android/exoplayer2/extractor/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/h;->a()V

    .line 224
    :cond_0
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
    .line 211
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/c/i;->a(Lcom/google/android/exoplayer2/extractor/g;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method
