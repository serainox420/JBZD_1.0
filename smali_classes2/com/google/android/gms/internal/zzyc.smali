.class public Lcom/google/android/gms/internal/zzyc;
.super Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;


# instance fields
.field private final mView:Landroid/view/View;

.field private final zzauh:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyc;->mView:Landroid/view/View;

    iput p2, p0, Lcom/google/android/gms/internal/zzyc;->zzauh:I

    return-void
.end method

.method private zztW()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzyc;->getRemoteMediaClient()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyc;->mView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/gms/internal/zzyc;->zzauh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->getPreloadedItemId()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyc;->mView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/gms/internal/zzyc;->zzauh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzyc;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onMediaStatusUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyc;->zztW()V

    return-void
.end method

.method public onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionConnected(Lcom/google/android/gms/cast/framework/CastSession;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyc;->zztW()V

    return-void
.end method

.method public onSessionEnded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyc;->mView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/gms/internal/zzyc;->zzauh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;->onSessionEnded()V

    return-void
.end method
