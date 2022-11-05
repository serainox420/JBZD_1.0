.class Lcom/smartadserver/android/library/ui/a$25;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a;->a(Landroid/content/Context;)V
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
    .line 811
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 814
    packed-switch p1, :pswitch_data_0

    .line 859
    :goto_0
    :pswitch_0
    return-void

    .line 816
    :pswitch_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->e()V

    goto :goto_0

    .line 820
    :pswitch_2
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->q(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/model/SASNativeVideoAdElement;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->a(Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    new-instance v1, Lcom/smartadserver/android/library/ui/a$25$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/ui/a$25$1;-><init>(Lcom/smartadserver/android/library/ui/a$25;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 830
    :pswitch_3
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->c()V

    goto :goto_0

    .line 833
    :pswitch_4
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a$d;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->o(Lcom/smartadserver/android/library/ui/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/a;->b(Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->m(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->b(I)V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->b()V

    goto :goto_0

    .line 840
    :pswitch_5
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/a;->a()V

    .line 841
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->B(Lcom/smartadserver/android/library/ui/a;)V

    goto :goto_0

    .line 844
    :pswitch_6
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->b(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->c(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartadserver/android/library/ui/a$d;->seekTo(I)V

    .line 846
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->C(Lcom/smartadserver/android/library/ui/a;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :try_start_1
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->D(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a;->D(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/a$b;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/ui/a$b;->a(Lcom/smartadserver/android/library/ui/a$b;)V

    .line 850
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 851
    :try_start_2
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 850
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 855
    :pswitch_7
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$25;->a:Lcom/smartadserver/android/library/ui/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/ui/a;->g(Lcom/smartadserver/android/library/ui/a;)Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASNativeVideoControlsLayer;->e()Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/smartadserver/android/library/ui/a;->a(ZZ)V

    goto/16 :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
