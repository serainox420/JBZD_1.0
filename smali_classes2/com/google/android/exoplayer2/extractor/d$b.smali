.class final Lcom/google/android/exoplayer2/extractor/d$b;
.super Ljava/lang/Object;
.source "DefaultTrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:[I

.field private c:[J

.field private d:[I

.field private e:[I

.field private f:[J

.field private g:[[B

.field private h:[Lcom/google/android/exoplayer2/Format;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Lcom/google/android/exoplayer2/Format;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    .line 638
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->b:[I

    .line 639
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    .line 640
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    .line 641
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->e:[I

    .line 642
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->d:[I

    .line 643
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->g:[[B

    .line 644
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->h:[Lcom/google/android/exoplayer2/Format;

    .line 645
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->m:J

    .line 646
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->n:J

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->o:Z

    .line 648
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/a/e;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/extractor/d$a;)I
    .locals 6

    .prologue
    const/4 v0, -0x4

    const/4 v1, -0x5

    .line 779
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    if-nez v2, :cond_3

    .line 780
    if-eqz p4, :cond_0

    .line 781
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/a/e;->a_(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    :goto_0
    monitor-exit p0

    return v0

    .line 783
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->p:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->p:Lcom/google/android/exoplayer2/Format;

    if-eq v0, p5, :cond_2

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->p:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    move v0, v1

    .line 786
    goto :goto_0

    .line 788
    :cond_2
    const/4 v0, -0x3

    goto :goto_0

    .line 792
    :cond_3
    if-nez p3, :cond_4

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->h:[Lcom/google/android/exoplayer2/Format;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget-object v2, v2, v3

    if-eq v2, p5, :cond_5

    .line 793
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->h:[Lcom/google/android/exoplayer2/Format;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/google/android/exoplayer2/h;->a:Lcom/google/android/exoplayer2/Format;

    move v0, v1

    .line 794
    goto :goto_0

    .line 797
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget-wide v2, v1, v2

    iput-wide v2, p2, Lcom/google/android/exoplayer2/a/e;->c:J

    .line 798
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->e:[I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/a/e;->a_(I)V

    .line 799
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->d:[I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget v1, v1, v2

    iput v1, p6, Lcom/google/android/exoplayer2/extractor/d$a;->a:I

    .line 800
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget-wide v2, v1, v2

    iput-wide v2, p6, Lcom/google/android/exoplayer2/extractor/d$a;->b:J

    .line 801
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->g:[[B

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget-object v1, v1, v2

    iput-object v1, p6, Lcom/google/android/exoplayer2/extractor/d$a;->d:[B

    .line 803
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->m:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/a/e;->c:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->m:J

    .line 804
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    .line 805
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    .line 806
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->j:I

    .line 807
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    if-ne v1, v2, :cond_6

    .line 809
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    .line 812
    :cond_6
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget-wide v2, v1, v2

    :goto_1
    iput-wide v2, p6, Lcom/google/android/exoplayer2/extractor/d$a;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 812
    :cond_7
    :try_start_2
    iget-wide v2, p6, Lcom/google/android/exoplayer2/extractor/d$a;->b:J

    iget v1, p6, Lcom/google/android/exoplayer2/extractor/d$a;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method public a(I)J
    .locals 6

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/d$b;->c()I

    move-result v0

    sub-int v1, v0, p1

    .line 679
    if-ltz v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 681
    if-nez v1, :cond_3

    .line 682
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->j:I

    if-nez v0, :cond_1

    .line 684
    const-wide/16 v0, 0x0

    .line 702
    :goto_1
    return-wide v0

    .line 679
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 686
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 687
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->d:[I

    aget v0, v1, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1

    .line 686
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    goto :goto_2

    .line 690
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    .line 691
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    .line 694
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->n:J

    .line 695
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 696
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    rem-int/2addr v1, v2

    .line 697
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->n:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    aget-wide v4, v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->n:J

    .line 698
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->e:[I

    aget v1, v2, v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 702
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    aget-wide v0, v0, v1

    goto :goto_1

    .line 695
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public declared-synchronized a(JZ)J
    .locals 9

    .prologue
    const/4 v5, -0x1

    const-wide/16 v0, -0x1

    .line 829
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget-wide v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 862
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 833
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->n:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    if-eqz p3, :cond_0

    .line 840
    :cond_2
    const/4 v3, 0x0

    .line 842
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    move v4, v2

    move v2, v5

    .line 843
    :goto_1
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    if-eq v4, v6, :cond_3

    .line 844
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    aget-wide v6, v6, v4

    cmp-long v6, v6, p1

    if-lez v6, :cond_4

    .line 855
    :cond_3
    if-eq v2, v5, :cond_0

    .line 859
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    .line 860
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    .line 861
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->j:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->j:I

    .line 862
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget-wide v0, v0, v1

    goto :goto_0

    .line 847
    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d$b;->e:[I

    aget v6, v6, v4

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    move v2, v3

    .line 851
    :cond_5
    add-int/lit8 v4, v4, 0x1

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    rem-int/2addr v4, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 651
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->j:I

    .line 652
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    .line 653
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    .line 654
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    .line 655
    return-void
.end method

.method public declared-synchronized a(J)V
    .locals 3

    .prologue
    .line 942
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->n:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    monitor-exit p0

    return-void

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JIJI[B)V
    .locals 13

    .prologue
    .line 884
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 885
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d$b;->a(J)V

    .line 886
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    aput-wide p1, v0, v1

    .line 887
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    aput-wide p4, v0, v1

    .line 888
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->d:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    aput p6, v0, v1

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->e:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    aput p3, v0, v1

    .line 890
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->g:[[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    aput-object p7, v0, v1

    .line 891
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->h:[Lcom/google/android/exoplayer2/Format;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->p:Lcom/google/android/exoplayer2/Format;

    aput-object v2, v0, v1

    .line 892
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->b:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->q:I

    aput v2, v0, v1

    .line 894
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    .line 895
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    if-ne v0, v1, :cond_2

    .line 897
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    add-int/lit16 v0, v0, 0x3e8

    .line 898
    new-array v1, v0, [I

    .line 899
    new-array v2, v0, [J

    .line 900
    new-array v3, v0, [J

    .line 901
    new-array v4, v0, [I

    .line 902
    new-array v5, v0, [I

    .line 903
    new-array v6, v0, [[B

    .line 904
    new-array v7, v0, [Lcom/google/android/exoplayer2/Format;

    .line 905
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    iget v9, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    sub-int/2addr v8, v9

    .line 906
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    iget v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    iget v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/d$b;->e:[I

    iget v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 909
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/d$b;->d:[I

    iget v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/d$b;->g:[[B

    iget v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/d$b;->h:[Lcom/google/android/exoplayer2/Format;

    iget v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/d$b;->b:[I

    iget v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 913
    iget v9, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    .line 914
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    const/4 v11, 0x0

    invoke-static {v10, v11, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->e:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->d:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->g:[[B

    const/4 v11, 0x0

    invoke-static {v10, v11, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->h:[Lcom/google/android/exoplayer2/Format;

    const/4 v11, 0x0

    invoke-static {v10, v11, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/d$b;->b:[I

    const/4 v11, 0x0

    invoke-static {v10, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->c:[J

    .line 922
    iput-object v3, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    .line 923
    iput-object v4, p0, Lcom/google/android/exoplayer2/extractor/d$b;->e:[I

    .line 924
    iput-object v5, p0, Lcom/google/android/exoplayer2/extractor/d$b;->d:[I

    .line 925
    iput-object v6, p0, Lcom/google/android/exoplayer2/extractor/d$b;->g:[[B

    .line 926
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/d$b;->h:[Lcom/google/android/exoplayer2/Format;

    .line 927
    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->b:[I

    .line 928
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    .line 929
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    .line 930
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    .line 931
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 884
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 933
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    .line 934
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    if-ne v0, v1, :cond_0

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/exoplayer2/Format;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 868
    monitor-enter p0

    if-nez p1, :cond_1

    .line 869
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 872
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->o:Z

    .line 873
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->p:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 877
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->p:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 878
    goto :goto_0

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 660
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->m:J

    .line 661
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->n:J

    .line 662
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 706
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->q:I

    .line 707
    return-void
.end method

.method public declared-synchronized b(J)Z
    .locals 5

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    .line 954
    const/4 v0, 0x0

    .line 962
    :goto_0
    monitor-exit p0

    return v0

    .line 956
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    .line 957
    :goto_1
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->f:[J

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/d$b;->a:I

    rem-int/2addr v2, v3

    aget-wide v2, v1, v2

    cmp-long v1, v2, p1

    if-ltz v1, :cond_1

    .line 959
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 961
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->j:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/d$b;->a(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    const/4 v0, 0x1

    goto :goto_0

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 668
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->j:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->j:I

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 723
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->q:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->b:[I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d$b;->k:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public declared-synchronized f()Z
    .locals 1

    .prologue
    .line 730
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .prologue
    .line 737
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->p:Lcom/google/android/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()J
    .locals 4

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d$b;->m:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d$b;->n:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
