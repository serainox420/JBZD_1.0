.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureOverlayStateBinderCallback"
.end annotation


# instance fields
.field private final zzaNm:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;->zzaNm:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method


# virtual methods
.method public onCaptureOverlayStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;->zzaNm:Lcom/google/android/gms/internal/zzabh;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    return-void
.end method
