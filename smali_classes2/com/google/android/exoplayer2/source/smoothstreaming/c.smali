.class final Lcom/google/android/exoplayer2/source/smoothstreaming/c;
.super Ljava/lang/Object;
.source "SsMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/f;
.implements Lcom/google/android/exoplayer2/source/j$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/f;",
        "Lcom/google/android/exoplayer2/source/j$a",
        "<",
        "Lcom/google/android/exoplayer2/source/a/f",
        "<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field private final b:Lcom/google/android/exoplayer2/upstream/o;

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/source/a$a;

.field private final e:Lcom/google/android/exoplayer2/upstream/b;

.field private final f:Lcom/google/android/exoplayer2/source/m;

.field private final g:[Lcom/google/android/exoplayer2/extractor/c/k;

.field private h:Lcom/google/android/exoplayer2/source/f$a;

.field private i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

.field private j:[Lcom/google/android/exoplayer2/source/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/android/exoplayer2/source/b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;ILcom/google/android/exoplayer2/source/a$a;Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/b;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 62
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->b:Lcom/google/android/exoplayer2/upstream/o;

    .line 63
    iput p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->c:I

    .line 64
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->d:Lcom/google/android/exoplayer2/source/a$a;

    .line 65
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->e:Lcom/google/android/exoplayer2/upstream/b;

    .line 67
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->b(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;)Lcom/google/android/exoplayer2/source/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->f:Lcom/google/android/exoplayer2/source/m;

    .line 68
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$a;->b:[B

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a([B)[B

    move-result-object v0

    .line 71
    new-array v1, v5, [Lcom/google/android/exoplayer2/extractor/c/k;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/c/k;

    const/16 v3, 0x8

    invoke-direct {v2, v5, v3, v0}, Lcom/google/android/exoplayer2/extractor/c/k;-><init>(ZI[B)V

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->g:[Lcom/google/android/exoplayer2/extractor/c/k;

    .line 76
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 77
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a(I)[Lcom/google/android/exoplayer2/source/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:[Lcom/google/android/exoplayer2/source/a/f;

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/source/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:[Lcom/google/android/exoplayer2/source/a/f;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/b;-><init>([Lcom/google/android/exoplayer2/source/j;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lcom/google/android/exoplayer2/source/b;

    .line 79
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->g:[Lcom/google/android/exoplayer2/extractor/c/k;

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer2/b/f;J)Lcom/google/android/exoplayer2/source/a/f;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/b/f;",
            "J)",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->f:Lcom/google/android/exoplayer2/source/m;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/b/f;->d()Lcom/google/android/exoplayer2/source/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/l;)I

    move-result v3

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->b:Lcom/google/android/exoplayer2/upstream/o;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->g:[Lcom/google/android/exoplayer2/extractor/c/k;

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;->a(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;ILcom/google/android/exoplayer2/b/f;[Lcom/google/android/exoplayer2/extractor/c/k;)Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    move-result-object v4

    .line 193
    new-instance v0, Lcom/google/android/exoplayer2/source/a/f;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    aget-object v1, v1, v3

    iget v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->a:I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->e:Lcom/google/android/exoplayer2/upstream/b;

    iget v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->c:I

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->d:Lcom/google/android/exoplayer2/source/a$a;

    move-object v3, v4

    move-object v4, p0

    move-wide v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/a/f;-><init>(I[ILcom/google/android/exoplayer2/source/a/g;Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/upstream/b;JILcom/google/android/exoplayer2/source/a$a;)V

    return-object v0
.end method

.method private static a([BII)V
    .locals 2

    .prologue
    .line 227
    aget-byte v0, p0, p1

    .line 228
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 229
    aput-byte v0, p0, p2

    .line 230
    return-void
.end method

.method private static a([B)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 212
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 213
    aget-byte v3, p0, v0

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v2, "<KID>"

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    const-string v3, "</KID>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 216
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 219
    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a([BII)V

    .line 220
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a([BII)V

    .line 221
    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a([BII)V

    .line 222
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a([BII)V

    .line 223
    return-object v0
.end method

.method private static a(I)[Lcom/google/android/exoplayer2/source/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-array v0, p0, [Lcom/google/android/exoplayer2/source/a/f;

    return-object v0
.end method

.method private static b(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;)Lcom/google/android/exoplayer2/source/m;
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/l;

    .line 199
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 200
    new-instance v2, Lcom/google/android/exoplayer2/source/l;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->j:[Lcom/google/android/exoplayer2/Format;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/l;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v2, v1, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/m;-><init>([Lcom/google/android/exoplayer2/source/l;)V

    return-object v0
.end method


# virtual methods
.method public a([Lcom/google/android/exoplayer2/b/f;[Z[Lcom/google/android/exoplayer2/source/i;[ZJ)J
    .locals 5

    .prologue
    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_4

    .line 116
    aget-object v0, p3, v1

    if-eqz v0, :cond_1

    .line 118
    aget-object v0, p3, v1

    check-cast v0, Lcom/google/android/exoplayer2/source/a/f;

    .line 119
    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    aget-boolean v3, p2, v1

    if-nez v3, :cond_3

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a/f;->e()V

    .line 121
    const/4 v0, 0x0

    aput-object v0, p3, v1

    .line 126
    :cond_1
    :goto_1
    aget-object v0, p3, v1

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    if-eqz v0, :cond_2

    .line 127
    aget-object v0, p1, v1

    invoke-direct {p0, v0, p5, p6}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a(Lcom/google/android/exoplayer2/b/f;J)Lcom/google/android/exoplayer2/source/a/f;

    move-result-object v0

    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    aput-object v0, p3, v1

    .line 130
    const/4 v0, 0x1

    aput-boolean v0, p4, v1

    .line 115
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a(I)[Lcom/google/android/exoplayer2/source/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:[Lcom/google/android/exoplayer2/source/a/f;

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:[Lcom/google/android/exoplayer2/source/a/f;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/source/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:[Lcom/google/android/exoplayer2/source/a/f;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/b;-><init>([Lcom/google/android/exoplayer2/source/j;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lcom/google/android/exoplayer2/source/b;

    .line 136
    return-wide p5
.end method

.method public a(Lcom/google/android/exoplayer2/source/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/a/f",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->h:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 184
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/f$a;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->h:Lcom/google/android/exoplayer2/source/f$a;

    .line 98
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/f;)V

    .line 99
    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/source/j;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/google/android/exoplayer2/source/a/f;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->a(Lcom/google/android/exoplayer2/source/a/f;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;)V
    .locals 4

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->i:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;

    .line 83
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:[Lcom/google/android/exoplayer2/source/a/f;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 84
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a/f;->c()Lcom/google/android/exoplayer2/source/a/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/smoothstreaming/b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/b;->a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a;)V

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->h:Lcom/google/android/exoplayer2/source/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/j;)V

    .line 87
    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b;->a(J)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:[Lcom/google/android/exoplayer2/source/a/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 91
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/a/f;->e()V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public b_()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->k:Lcom/google/android/exoplayer2/source/b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/b;->b_()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)J
    .locals 5

    .prologue
    .line 173
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:[Lcom/google/android/exoplayer2/source/a/f;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 174
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/a/f;->c(J)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-wide p1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->b:Lcom/google/android/exoplayer2/upstream/o;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/o;->d()V

    .line 104
    return-void
.end method

.method public d()Lcom/google/android/exoplayer2/source/m;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->f:Lcom/google/android/exoplayer2/source/m;

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 156
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public f()J
    .locals 12

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 161
    .line 162
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/c;->j:[Lcom/google/android/exoplayer2/source/a/f;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v5, v4

    .line 163
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/a/f;->d()J

    move-result-wide v10

    .line 164
    cmp-long v9, v10, v2

    if-eqz v9, :cond_0

    .line 165
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 162
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    :cond_1
    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method
