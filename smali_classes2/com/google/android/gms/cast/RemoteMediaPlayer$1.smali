.class Lcom/google/android/gms/cast/RemoteMediaPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;-><init>(Lcom/google/android/gms/internal/zzza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdBreakStatusUpdated()V
    .locals 0

    return-void
.end method

.method public onMetadataUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzb(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    return-void
.end method

.method public onPreloadStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzd(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    return-void
.end method

.method public onQueueStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzc(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    return-void
.end method

.method public onStatusUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;->zzapf:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zza(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    return-void
.end method
