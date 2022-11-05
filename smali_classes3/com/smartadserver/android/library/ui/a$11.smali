.class Lcom/smartadserver/android/library/ui/a$11;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a;)V
    .locals 0

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 1845
    invoke-static {}, Lcom/smartadserver/android/library/ui/a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediaPlayer onPrepared:"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    if-nez p1, :cond_0

    .line 1885
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1851
    check-cast v0, Lcom/smartadserver/android/library/ui/a$d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/smartadserver/android/library/ui/a$d;->b:Z

    .line 1853
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1855
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 1857
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1860
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->L(Lcom/smartadserver/android/library/ui/a;)V

    .line 1863
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->o(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1864
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->p(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    .line 1865
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->setMuted(Z)V

    .line 1866
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/smartadserver/android/library/ui/a;->a(ZZ)V

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/a$d;->getVideoWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;I)I

    .line 1870
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartadserver/android/library/ui/a$d;->getVideoHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/smartadserver/android/library/ui/a;->d(Lcom/smartadserver/android/library/ui/a;I)I

    .line 1873
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getMediaWidth()I

    move-result v0

    if-gez v0, :cond_2

    .line 1874
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->E(Lcom/smartadserver/android/library/ui/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaWidth(I)V

    .line 1876
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getMediaHeight()I

    move-result v0

    if-gez v0, :cond_3

    .line 1877
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v0

    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2}, Lcom/smartadserver/android/library/ui/a;->F(Lcom/smartadserver/android/library/ui/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->setMediaHeight(I)V

    .line 1880
    :cond_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->getDuration()I

    move-result v0

    .line 1881
    iget-object v2, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v2, v0}, Lcom/smartadserver/android/library/ui/a;->a(Lcom/smartadserver/android/library/ui/a;I)V

    .line 1882
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$11;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->r(Lcom/smartadserver/android/library/ui/a;)V

    .line 1884
    :cond_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
