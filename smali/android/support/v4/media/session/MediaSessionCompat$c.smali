.class Landroid/support/v4/media/session/MediaSessionCompat$c;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private f:Z

.field private g:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

.field private final h:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/support/v4/media/session/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/v4/media/session/PlaybackStateCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2560
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->f:Z

    .line 2562
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->h:Landroid/os/RemoteCallbackList;

    .line 2571
    invoke-static {p1, p2}, Landroid/support/v4/media/session/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    .line 2572
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/g;->d(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 2573
    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/MediaSessionCompat$c;)Z
    .locals 1

    .prologue
    .line 2556
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->f:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 2556
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->h:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v4/media/session/MediaSessionCompat$c;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 2556
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->i:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 2591
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;I)V

    .line 2592
    return-void
.end method

.method public a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 2666
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 2667
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .prologue
    .line 2660
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2662
    return-void

    .line 2661
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/f;)V
    .locals 2

    .prologue
    .line 2601
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    .line 2602
    invoke-virtual {p1}, Landroid/support/v4/media/f;->d()Ljava/lang/Object;

    move-result-object v1

    .line 2601
    invoke-static {v0, v1}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2603
    return-void
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 2582
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0, p2}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 2584
    if-eqz p1, :cond_0

    .line 2585
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->mSessionImpl:Ljava/lang/ref/WeakReference;

    .line 2587
    :cond_0
    return-void

    .line 2582
    :cond_1
    iget-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$a;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 2644
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->i:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 2645
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2646
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 2647
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/a;

    .line 2649
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/a;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2646
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2653
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->h:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2654
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-static {v1, v0}, Landroid/support/v4/media/session/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2656
    return-void

    .line 2655
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->f()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 2650
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 2607
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/g;->a(Ljava/lang/Object;Z)V

    .line 2608
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/g;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2633
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->f:Z

    .line 2634
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/g;->c(Ljava/lang/Object;)V

    .line 2635
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/g;->b(Ljava/lang/Object;I)V

    .line 2597
    return-void
.end method

.method public b(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 2671
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/g;->b(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 2672
    return-void
.end method

.method public c()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 2639
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->e:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2744
    const/4 v0, 0x0

    return-object v0
.end method

.method e()Landroid/support/v4/media/session/MediaSessionCompat$c$a;
    .locals 1

    .prologue
    .line 2757
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->g:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    if-nez v0, :cond_0

    .line 2758
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$c$a;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$c;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->g:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    .line 2760
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$c;->g:Landroid/support/v4/media/session/MediaSessionCompat$c$a;

    return-object v0
.end method
