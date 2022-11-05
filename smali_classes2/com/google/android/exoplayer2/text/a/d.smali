.class abstract Lcom/google/android/exoplayer2/text/a/d;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/f;


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/text/h;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/exoplayer2/text/i;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer2/text/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/text/h;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/a/d;->a:Ljava/util/LinkedList;

    move v1, v0

    .line 46
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/a/d;->a:Ljava/util/LinkedList;

    new-instance v3, Lcom/google/android/exoplayer2/text/h;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/text/h;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/a/d;->b:Ljava/util/LinkedList;

    .line 50
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/a/d;->b:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/exoplayer2/text/a/e;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/text/a/e;-><init>(Lcom/google/android/exoplayer2/text/a/d;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->c:Ljava/util/TreeSet;

    .line 54
    return-void
.end method

.method private c(Lcom/google/android/exoplayer2/text/h;)V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/h;->a()V

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/d;->h()Lcom/google/android/exoplayer2/text/h;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/a/d;->e:J

    .line 62
    return-void
.end method

.method protected abstract a(Lcom/google/android/exoplayer2/text/h;)V
.end method

.method protected a(Lcom/google/android/exoplayer2/text/i;)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/i;->a()V

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    check-cast p1, Lcom/google/android/exoplayer2/text/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/a/d;->b(Lcom/google/android/exoplayer2/text/h;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/d;->g()Lcom/google/android/exoplayer2/text/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/text/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->d:Lcom/google/android/exoplayer2/text/h;

    if-ne p1, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 78
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/h;->c_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/a/d;->c(Lcom/google/android/exoplayer2/text/h;)V

    .line 85
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->d:Lcom/google/android/exoplayer2/text/h;

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v1, v2

    .line 77
    goto :goto_1

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public c()V
    .locals 2

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/a/d;->e:J

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/h;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/a/d;->c(Lcom/google/android/exoplayer2/text/h;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->d:Lcom/google/android/exoplayer2/text/h;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->d:Lcom/google/android/exoplayer2/text/h;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/a/d;->c(Lcom/google/android/exoplayer2/text/h;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->d:Lcom/google/android/exoplayer2/text/h;

    .line 151
    :cond_1
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()Lcom/google/android/exoplayer2/text/e;
.end method

.method public g()Lcom/google/android/exoplayer2/text/i;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 128
    :goto_0
    return-object v0

    .line 125
    :cond_0
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/a/d;->c(Lcom/google/android/exoplayer2/text/h;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->c:Ljava/util/TreeSet;

    .line 98
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/h;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/text/h;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/a/d;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/text/h;

    .line 103
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/i;

    .line 105
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/i;->b(I)V

    .line 106
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/a/d;->c(Lcom/google/android/exoplayer2/text/h;)V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/text/a/d;->a(Lcom/google/android/exoplayer2/text/h;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/a/d;->f()Lcom/google/android/exoplayer2/text/e;

    move-result-object v3

    .line 117
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/text/h;->c_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/i;

    .line 119
    iget-wide v1, v6, Lcom/google/android/exoplayer2/text/h;->c:J

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/i;->a(JLcom/google/android/exoplayer2/text/e;J)V

    .line 120
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/text/a/d;->c(Lcom/google/android/exoplayer2/text/h;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 128
    goto :goto_0
.end method

.method public h()Lcom/google/android/exoplayer2/text/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->d:Lcom/google/android/exoplayer2/text/h;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_1
    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->d:Lcom/google/android/exoplayer2/text/h;

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/a/d;->d:Lcom/google/android/exoplayer2/text/h;

    goto :goto_1
.end method
