.class public final Lcom/google/android/exoplayer2/source/MergingMediaSource;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/android/exoplayer2/source/g;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/source/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/n$b;

.field private d:Lcom/google/android/exoplayer2/source/g$a;

.field private e:Lcom/google/android/exoplayer2/n;

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;


# direct methods
.method private a(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n;->b()I

    move-result v2

    move v0, v1

    .line 161
    :goto_0
    if-ge v0, v2, :cond_1

    .line 162
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->c:Lcom/google/android/exoplayer2/n$b;

    invoke-virtual {p1, v0, v3, v1}, Lcom/google/android/exoplayer2/n;->a(ILcom/google/android/exoplayer2/n$b;Z)Lcom/google/android/exoplayer2/n$b;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/n$b;->e:Z

    if-eqz v3, :cond_0

    .line 163
    new-instance v0, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    .line 171
    :goto_1
    return-object v0

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 167
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:I

    .line 171
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/n;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->g:I

    if-eq v0, v1, :cond_2

    .line 169
    new-instance v0, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    goto :goto_1
.end method

.method private a(ILcom/google/android/exoplayer2/n;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->h:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Lcom/google/android/exoplayer2/n;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->h:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->h:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_2

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/g;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    if-nez p1, :cond_3

    .line 151
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:Lcom/google/android/exoplayer2/n;

    .line 152
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:Ljava/lang/Object;

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:Lcom/google/android/exoplayer2/source/g$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->e:Lcom/google/android/exoplayer2/n;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/source/g$a;->a(Lcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/MergingMediaSource;ILcom/google/android/exoplayer2/n;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(ILcom/google/android/exoplayer2/n;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/f;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/g;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/exoplayer2/source/f;

    .line 121
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/g;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/g;->a(ILcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/f;

    move-result-object v2

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/h;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/h;-><init>([Lcom/google/android/exoplayer2/source/f;)V

    return-object v0
.end method

.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->h:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->h:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    throw v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/g;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 114
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/g;->a()V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/d;ZLcom/google/android/exoplayer2/source/g$a;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 96
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->d:Lcom/google/android/exoplayer2/source/g$a;

    move v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/g;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/g;

    aget-object v2, v2, v0

    new-instance v3, Lcom/google/android/exoplayer2/source/MergingMediaSource$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource$1;-><init>(Lcom/google/android/exoplayer2/source/MergingMediaSource;I)V

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/exoplayer2/source/g;->a(Lcom/google/android/exoplayer2/d;ZLcom/google/android/exoplayer2/source/g$a;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/f;)V
    .locals 3

    .prologue
    .line 129
    check-cast p1, Lcom/google/android/exoplayer2/source/h;

    .line 130
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/g;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/g;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/h;->a:[Lcom/google/android/exoplayer2/source/f;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/g;->a(Lcom/google/android/exoplayer2/source/f;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a:[Lcom/google/android/exoplayer2/source/g;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 138
    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/g;->b()V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method
