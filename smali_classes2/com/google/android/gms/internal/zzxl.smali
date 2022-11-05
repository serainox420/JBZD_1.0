.class public Lcom/google/android/gms/internal/zzxl;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final mView:Landroid/view/View;

.field private final zzatA:Landroid/view/View$OnClickListener;

.field private final zzatx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaty:Ljava/lang/String;

.field private final zzatz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxl;->mView:Landroid/view/View;

    sget v0, Lcom/google/android/gms/R$string;->cast_closed_captions:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxl;->zzaty:Ljava/lang/String;

    sget v0, Lcom/google/android/gms/R$string;->cast_closed_captions_unavailable:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxl;->zzatz:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxl;->zzatx:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/google/android/gms/internal/zzxl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzxl$1;-><init>(Lcom/google/android/gms/internal/zzxl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxl;->zzatA:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzxl;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxl;->zzatx:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzxl;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxl;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    return-object v0
.end method

.method private zzc(Lcom/google/android/gms/cast/MediaInfo;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaInfo;->getMediaTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/MediaTrack;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaTrack;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private zztW()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxl;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzxl;->zzc(Lcom/google/android/gms/cast/MediaInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxl;->zzatz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxl;->mView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxl;->zzaty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxl;->zztW()V

    return-void
.end method

.method public onSendingRemoteMediaRequest()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxl;->zzatA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzxl;->zztW()V

    return-void
.end method

.method public onSessionEnded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
