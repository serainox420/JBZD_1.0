.class final Lcom/google/android/exoplayer2/m$a;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/audio/d;
.implements Lcom/google/android/exoplayer2/c/e;
.implements Lcom/google/android/exoplayer2/metadata/d$a;
.implements Lcom/google/android/exoplayer2/text/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/m;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/m;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/m$1;)V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/m$a;-><init>(Lcom/google/android/exoplayer2/m;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;I)I

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/d;->a(I)V

    .line 930
    :cond_0
    return-void
.end method

.method public a(IIIF)V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/m$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/m$b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/m$b;->onVideoSizeChanged(IIIF)V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/c/e;->a(IIIF)V

    .line 893
    :cond_1
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/c/e;->a(IJ)V

    .line 880
    :cond_0
    return-void
.end method

.method public a(IJJ)V
    .locals 6

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/d;->a(IJJ)V

    .line 955
    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/m$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->c(Lcom/google/android/exoplayer2/m;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/m$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/m$b;->onRenderedFirstFrame()V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/c/e;->a(Landroid/view/Surface;)V

    .line 903
    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 870
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/c/e;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 873
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/a/d;)V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/a/d;)Lcom/google/android/exoplayer2/a/d;

    .line 853
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/c/e;->a(Lcom/google/android/exoplayer2/a/d;)V

    .line 856
    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->f(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/metadata/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->f(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/metadata/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/d$a;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 983
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 6

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/c/e;->a(Ljava/lang/String;JJ)V

    .line 865
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->e(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/text/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->e(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/text/j$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/j$a;->a(Ljava/util/List;)V

    .line 974
    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 944
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/d;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 947
    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/a/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 907
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/c/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/c/e;->b(Lcom/google/android/exoplayer2/a/d;)V

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 911
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/a/d;)Lcom/google/android/exoplayer2/a/d;

    .line 912
    return-void
.end method

.method public b(Ljava/lang/String;JJ)V
    .locals 6

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/d;->b(Ljava/lang/String;JJ)V

    .line 939
    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/a/d;)V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/a/d;)Lcom/google/android/exoplayer2/a/d;

    .line 919
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/d;->c(Lcom/google/android/exoplayer2/a/d;)V

    .line 922
    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/a/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 959
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/m;->d(Lcom/google/android/exoplayer2/m;)Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/d;->d(Lcom/google/android/exoplayer2/a/d;)V

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    .line 963
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/m;->b(Lcom/google/android/exoplayer2/m;Lcom/google/android/exoplayer2/a/d;)Lcom/google/android/exoplayer2/a/d;

    .line 964
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;I)I

    .line 965
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;Landroid/view/Surface;Z)V

    .line 1007
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;Landroid/view/Surface;Z)V

    .line 1017
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 1012
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 1023
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 995
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;Landroid/view/Surface;Z)V

    .line 990
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/google/android/exoplayer2/m$a;->a:Lcom/google/android/exoplayer2/m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/m;->a(Lcom/google/android/exoplayer2/m;Landroid/view/Surface;Z)V

    .line 1000
    return-void
.end method
