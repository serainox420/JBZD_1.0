.class final Landroid/support/v7/media/g$d$a;
.super Landroid/os/Handler;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/g$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/media/g$d;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/media/g$d;)V
    .locals 1

    .prologue
    .line 2864
    iput-object p1, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/g$d$a;->b:Ljava/util/ArrayList;

    .line 2865
    return-void
.end method

.method private a(Landroid/support/v7/media/g$b;ILjava/lang/Object;I)V
    .locals 3

    .prologue
    .line 2931
    iget-object v0, p1, Landroid/support/v7/media/g$b;->a:Landroid/support/v7/media/g;

    .line 2932
    iget-object v1, p1, Landroid/support/v7/media/g$b;->b:Landroid/support/v7/media/g$a;

    .line 2933
    const v2, 0xff00

    and-int/2addr v2, p2

    sparse-switch v2, :sswitch_data_0

    .line 2979
    :cond_0
    :goto_0
    return-void

    .line 2935
    :sswitch_0
    check-cast p3, Landroid/support/v7/media/g$g;

    .line 2936
    invoke-virtual {p1, p3}, Landroid/support/v7/media/g$b;->a(Landroid/support/v7/media/g$g;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2939
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2941
    :pswitch_0
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/g$a;->onRouteAdded(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2944
    :pswitch_1
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/g$a;->onRouteRemoved(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2947
    :pswitch_2
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/g$a;->onRouteChanged(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2950
    :pswitch_3
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/g$a;->onRouteVolumeChanged(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2953
    :pswitch_4
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/g$a;->onRoutePresentationDisplayChanged(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2956
    :pswitch_5
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/g$a;->onRouteSelected(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2959
    :pswitch_6
    invoke-virtual {v1, v0, p3, p4}, Landroid/support/v7/media/g$a;->onRouteUnselected(Landroid/support/v7/media/g;Landroid/support/v7/media/g$g;I)V

    goto :goto_0

    .line 2965
    :sswitch_1
    check-cast p3, Landroid/support/v7/media/g$e;

    .line 2966
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 2968
    :pswitch_7
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/g$a;->onProviderAdded(Landroid/support/v7/media/g;Landroid/support/v7/media/g$e;)V

    goto :goto_0

    .line 2971
    :pswitch_8
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/g$a;->onProviderRemoved(Landroid/support/v7/media/g;Landroid/support/v7/media/g$e;)V

    goto :goto_0

    .line 2974
    :pswitch_9
    invoke-virtual {v1, v0, p3}, Landroid/support/v7/media/g$a;->onProviderChanged(Landroid/support/v7/media/g;Landroid/support/v7/media/g$e;)V

    goto :goto_0

    .line 2933
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch

    .line 2939
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2966
    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private b(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2914
    packed-switch p1, :pswitch_data_0

    .line 2928
    :goto_0
    :pswitch_0
    return-void

    .line 2916
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->e:Landroid/support/v7/media/o;

    check-cast p2, Landroid/support/v7/media/g$g;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/o;->a(Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2919
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->e:Landroid/support/v7/media/o;

    check-cast p2, Landroid/support/v7/media/g$g;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/o;->b(Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2922
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->e:Landroid/support/v7/media/o;

    check-cast p2, Landroid/support/v7/media/g$g;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/o;->c(Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2925
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->e:Landroid/support/v7/media/o;

    check-cast p2, Landroid/support/v7/media/g$g;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/o;->d(Landroid/support/v7/media/g$g;)V

    goto :goto_0

    .line 2914
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 2868
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/g$d$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2869
    return-void
.end method

.method public a(ILjava/lang/Object;I)V
    .locals 1

    .prologue
    .line 2872
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/g$d$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2873
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2874
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2875
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 2879
    iget v3, p1, Landroid/os/Message;->what:I

    .line 2880
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2881
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2883
    const/16 v0, 0x103

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    .line 2884
    invoke-virtual {v0}, Landroid/support/v7/media/g$d;->d()Landroid/support/v7/media/g$g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->c()Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/support/v7/media/g$g;

    invoke-virtual {v0}, Landroid/support/v7/media/g$g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2885
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/support/v7/media/g$d;->a(Landroid/support/v7/media/g$d;Z)V

    .line 2889
    :cond_0
    invoke-direct {p0, v3, v1}, Landroid/support/v7/media/g$d$a;->b(ILjava/lang/Object;)V

    .line 2895
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_2

    .line 2896
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g;

    .line 2897
    if-nez v0, :cond_1

    .line 2898
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->a:Landroid/support/v7/media/g$d;

    iget-object v0, v0, Landroid/support/v7/media/g$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    move v0, v2

    .line 2902
    goto :goto_0

    .line 2900
    :cond_1
    iget-object v5, p0, Landroid/support/v7/media/g$d$a;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v7/media/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2909
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/media/g$d$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v0

    .line 2904
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2905
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_3

    .line 2906
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/g$b;

    invoke-direct {p0, v0, v3, v1, v4}, Landroid/support/v7/media/g$d$a;->a(Landroid/support/v7/media/g$b;ILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2905
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2909
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/g$d$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2911
    return-void
.end method
