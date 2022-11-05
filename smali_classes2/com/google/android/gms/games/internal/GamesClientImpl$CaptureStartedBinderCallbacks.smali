.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStartedBinderCallbacks"
.end annotation


# instance fields
.field private final zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaZM:Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaad$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaad$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    const-string v0, "Callback must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;->zzaZM:Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;

    return-void
.end method


# virtual methods
.method public zzap(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;->zzaGN:Lcom/google/android/gms/internal/zzaad$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaad$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public zziE(I)V
    .locals 0

    return-void
.end method
