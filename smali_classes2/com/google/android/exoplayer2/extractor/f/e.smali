.class public final Lcom/google/android/exoplayer2/extractor/f/e;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/u$b;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/f/e;-><init>(ILjava/util/List;)V

    .line 58
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->a:I

    .line 72
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/f/e;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "application/cea-608"

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v2, v0

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 76
    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/f/e;->b:Ljava/util/List;

    .line 77
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/f/u$a;)Lcom/google/android/exoplayer2/extractor/f/r;
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 127
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/f/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/r;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/r;-><init>(Ljava/util/List;)V

    .line 163
    :goto_0
    return-object v0

    .line 130
    :cond_0
    new-instance v11, Lcom/google/android/exoplayer2/util/l;

    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/f/u$a;->c:[B

    invoke-direct {v11, v1}, Lcom/google/android/exoplayer2/util/l;-><init>([B)V

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/f/e;->b:Ljava/util/List;

    .line 132
    :goto_1
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/l;->b()I

    move-result v2

    if-lez v2, :cond_5

    .line 133
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    .line 134
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v3

    .line 135
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v5

    add-int v12, v5, v3

    .line 136
    const/16 v3, 0x86

    if-ne v2, v3, :cond_4

    .line 138
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v1

    and-int/lit8 v13, v1, 0x1f

    move v10, v4

    .line 140
    :goto_2
    if-ge v10, v13, :cond_3

    .line 141
    const/4 v1, 0x3

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/l;->e(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v2

    .line 143
    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_1

    move v1, v8

    .line 146
    :goto_3
    if-eqz v1, :cond_2

    .line 147
    const-string v1, "application/cea-708"

    .line 148
    and-int/lit8 v6, v2, 0x3f

    .line 153
    :goto_4
    const/4 v3, -0x1

    move-object v2, v0

    move-object v7, v0

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 140
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_2

    :cond_1
    move v1, v4

    .line 143
    goto :goto_3

    .line 150
    :cond_2
    const-string v1, "application/cea-608"

    move v6, v8

    .line 151
    goto :goto_4

    :cond_3
    move-object v1, v9

    .line 161
    :cond_4
    invoke-virtual {v11, v12}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_1

    .line 163
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/r;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/r;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/e;->a:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer2/extractor/f/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public a(ILcom/google/android/exoplayer2/extractor/f/u$a;)Lcom/google/android/exoplayer2/extractor/f/u;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 86
    sparse-switch p1, :sswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :sswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/n;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/l;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/f/u$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/f/l;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/g;)V

    goto :goto_0

    .line 91
    :sswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/f/e;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/n;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/d;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/google/android/exoplayer2/extractor/f/u$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/f/d;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/g;)V

    goto :goto_0

    .line 95
    :sswitch_2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/n;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/b;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/f/u$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/f/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/g;)V

    goto :goto_0

    .line 98
    :sswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/n;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/f;

    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/f/u$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/f/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/g;)V

    goto :goto_0

    .line 100
    :sswitch_4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/n;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/h;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/f/h;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/g;)V

    goto :goto_0

    .line 102
    :sswitch_5
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/f/e;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/n;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/i;

    .line 103
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/extractor/f/u$a;)Lcom/google/android/exoplayer2/extractor/f/r;

    move-result-object v2

    const/4 v3, 0x1

    .line 104
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/f/e;->a(I)Z

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/extractor/f/e;->a(I)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/f/i;-><init>(Lcom/google/android/exoplayer2/extractor/f/r;ZZ)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/g;)V

    goto :goto_0

    .line 106
    :sswitch_6
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/n;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/j;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/f/e;->a(Lcom/google/android/exoplayer2/extractor/f/u$a;)Lcom/google/android/exoplayer2/extractor/f/r;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/extractor/f/j;-><init>(Lcom/google/android/exoplayer2/extractor/f/r;)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/g;)V

    goto :goto_0

    .line 108
    :sswitch_7
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/f/e;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/q;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/s;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/f/s;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/q;-><init>(Lcom/google/android/exoplayer2/extractor/f/p;)V

    goto/16 :goto_0

    .line 111
    :sswitch_8
    new-instance v0, Lcom/google/android/exoplayer2/extractor/f/n;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/f/k;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/f/k;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/f/n;-><init>(Lcom/google/android/exoplayer2/extractor/f/g;)V

    goto/16 :goto_0

    .line 86
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0xf -> :sswitch_1
        0x15 -> :sswitch_8
        0x1b -> :sswitch_5
        0x24 -> :sswitch_6
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
        0x86 -> :sswitch_7
        0x87 -> :sswitch_2
        0x8a -> :sswitch_3
    .end sparse-switch
.end method
